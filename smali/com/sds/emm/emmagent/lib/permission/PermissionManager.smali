.class public final Lcom/sds/emm/emmagent/lib/permission/PermissionManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/permission/PermissionManager$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/permission/PermissionManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/permission/PermissionManager;
    .locals 1

    .line 43
    invoke-static {}, Lcom/sds/emm/emmagent/lib/permission/PermissionManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/permission/PermissionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkAllPermissionsGranted()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 56
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->checkAllPermissionsGranted()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 60
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestAllPermissions()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 76
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->requestAllPermissions()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 80
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
