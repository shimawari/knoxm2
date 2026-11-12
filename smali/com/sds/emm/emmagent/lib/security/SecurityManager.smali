.class public final Lcom/sds/emm/emmagent/lib/security/SecurityManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/security/SecurityManager$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/security/SecurityManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/security/SecurityManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/security/SecurityManager;
    .locals 1

    .line 33
    invoke-static {}, Lcom/sds/emm/emmagent/lib/security/SecurityManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/security/SecurityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setEncryptStorage(Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 50
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/security/SecurityManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->setEncryptStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/security/SecurityManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 53
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 54
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 73
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/security/SecurityManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->setPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/security/SecurityManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 77
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
