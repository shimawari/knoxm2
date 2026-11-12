.class public final Lcom/sds/emm/emmagent/lib/BindManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "BindManager.java"


# static fields
.field private static final AGENT_SERVICE_COMPONENT:Ljava/lang/String; = "com.sds.emm.emmagent.core.entrypoint.service.EmmAgentService"

.field private static final CLIENT_SERVICE_COMPONENT:Ljava/lang/String; = "com.sds.emm.client.ui.service.ClientServiceProvider"

.field public static final PACKAGE_CLOUD_KNOX_EMM:Ljava/lang/String; = "com.sds.emm.cloud.knox.samsung"

.field private static final RELEASE_DATE:Ljava/lang/String; = "2023-11-27"

.field private static final REVISION:I = 0x1

.field private static final VERSION_NAME:Ljava/lang/String; = "EMMAgentLib-2.6.4"

.field private static agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

.field static final connection:Landroid/content/ServiceConnection;

.field private static sCallback:Lcom/sds/emm/emmagent/lib/EMMServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsCallback()Lcom/sds/emm/emmagent/lib/EMMServiceConnection;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->sCallback:Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputagentManager(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)V
    .locals 0

    sput-object p0, Lcom/sds/emm/emmagent/lib/BindManager;->agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/sds/emm/emmagent/lib/BindManager$1;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/BindManager$1;-><init>()V

    sput-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    const-string v0, "com.sds.emm.cloud.knox.samsung"

    .line 127
    invoke-static {p0, v0, p1}, Lcom/sds/emm/emmagent/lib/BindManager;->bind(Landroid/content/Context;Ljava/lang/String;Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V

    return-void
.end method

.method public static bind(Landroid/content/Context;Ljava/lang/String;Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    const-string v0, "com.sds.emm.cloud.knox.samsung"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v1, "AgentNotInstalled"

    const-string v2, "No EMMAgent package found."

    invoke-direct {p1, v1, v2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->conditional(Ljava/lang/Throwable;)V

    :goto_0
    sput-object p2, Lcom/sds/emm/emmagent/lib/BindManager;->sCallback:Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    .line 80
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.sds.emm.emmagent.core.entrypoint.service.EmmAgentService"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/sds/emm/emmagent/lib/BindManager;->connection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 86
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 87
    new-instance p1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p1, p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 84
    new-instance p1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p1, p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 66
    :cond_1
    new-instance p0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string p1, "InvalidTargetAgent"

    const-string p2, "Try to bind Knox Manage"

    invoke-direct {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainAgentManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v1, "NotReadyBindFirst"

    invoke-direct {v0, v1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    sget-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v1, "NotReadyBindFirst"

    invoke-direct {v0, v1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCallback(Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V
    .locals 0

    sput-object p0, Lcom/sds/emm/emmagent/lib/BindManager;->sCallback:Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->agentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    sget-object v0, Lcom/sds/emm/emmagent/lib/BindManager;->connection:Landroid/content/ServiceConnection;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 154
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 155
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 151
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 152
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 148
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 149
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
