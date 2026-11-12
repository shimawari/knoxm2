.class public final Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "ProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/provision/ProvisionManager$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/provision/ProvisionManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientPrivateKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 120
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getClientPrivateKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 124
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 54
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getDeviceIdByTenantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 58
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getServerPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getServerPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 79
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resetProvisionInfo(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 141
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->resetProvisionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 145
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setProvisionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 100
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->setProvisionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 104
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
