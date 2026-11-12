.class public final Lcom/sds/emm/emmagent/lib/knox/KnoxManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "KnoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/knox/KnoxManager$Singleton;
    }
.end annotation


# instance fields
.field private preProvisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;

.field private provisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    .line 28
    new-instance v0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;-><init>()V

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->preProvisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;

    .line 29
    new-instance v0, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;-><init>()V

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->provisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/knox/KnoxManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/knox/KnoxManager;
    .locals 1

    .line 70
    invoke-static {}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/knox/KnoxManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createContainer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 121
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->createKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 125
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createContainer(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 98
    :try_start_0
    sget-object p2, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, p3}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->createKnoxContainerWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 102
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getConfigurationManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;
    .locals 0

    .line 140
    invoke-static {p1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->getInstance(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
    .locals 2

    .line 152
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getInitialPolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
    .locals 2

    .line 166
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->INITIAL:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getKnoxAreaList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 181
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArrayData"

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 184
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 185
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProfilePolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
    .locals 2

    .line 199
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public knoxContainerInit(Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->preProvisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;

    iput-object p2, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->provisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;

    .line 293
    :try_start_0
    sget-object p1, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    sget-object p2, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->gson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->preProvisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->provisionInventoryEntity:Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->knoxContainerInit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 296
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 297
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeContainer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 216
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->removeKnoxContainer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 220
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 267
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->writeFileToContainer(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 270
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 271
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
