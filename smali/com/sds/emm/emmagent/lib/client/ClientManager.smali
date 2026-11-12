.class public Lcom/sds/emm/emmagent/lib/client/ClientManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "ClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/client/ClientManager$Singleton;,
        Lcom/sds/emm/emmagent/lib/client/ClientManager$SCREENLOCK_VIOLATION_POLICY;,
        Lcom/sds/emm/emmagent/lib/client/ClientManager$APP_LICENSE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/client/ClientManager;
    .locals 1

    .line 33
    invoke-static {}, Lcom/sds/emm/emmagent/lib/client/ClientManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/client/ClientManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delayScreenLockTimeout()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 154
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->delayScreenLockTimeout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 157
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 117
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getAppProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 120
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAppSeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 44
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getAppSeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 47
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getClientProfile()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 105
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getClientProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 108
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEmmAppLicense(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 93
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getEmmAppLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 96
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getEmmLicense()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 81
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getEmmLicense()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 84
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFamilySeed()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 56
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getFamilySeed()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 59
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIniFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 179
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getIniFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 182
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getScreenLockStatus()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 130
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getScreenLockStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 133
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 167
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getServerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 170
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 69
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 72
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 191
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 193
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 194
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseMapData(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verifyScreenLockPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 142
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->verifyScreenLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->parseMapData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 145
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
