.class Lcom/sds/emm/emmagent/lib/BindManager$1;
.super Ljava/lang/Object;
.source "BindManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/BindManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 94
    invoke-static {p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    invoke-direct {p2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;-><init>()V

    invoke-static {p2}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfputagentManager(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)V

    .line 96
    invoke-static {p1}, Lcom/sds/emm/emmagent/lib/AbstractManager;->setAgentBridge(Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;)V

    :try_start_0
    const-string p2, "EMMAgentLib-2.6.4.rev.1"

    const-string v0, "2023-11-27"

    .line 99
    invoke-interface {p1, p2, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->setLibraryVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 104
    :goto_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfgetsCallback()Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfgetsCallback()Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    move-result-object p1

    invoke-interface {p1}, Lcom/sds/emm/emmagent/lib/EMMServiceConnection;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 111
    invoke-static {p1}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfputagentManager(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)V

    .line 113
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfgetsCallback()Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->-$$Nest$sfgetsCallback()Lcom/sds/emm/emmagent/lib/EMMServiceConnection;

    move-result-object p1

    invoke-interface {p1}, Lcom/sds/emm/emmagent/lib/EMMServiceConnection;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
