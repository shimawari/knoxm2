.class public final Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "KnoxConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    }
.end annotation


# instance fields
.field private remoteGson:Lcom/google/gson/Gson;

.field private final targetContainerId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    new-instance v2, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1$Serializer;

    invoke-direct {v2}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1$Serializer;-><init>()V

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    new-instance v2, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$1;

    invoke-direct {v2, p0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$1;-><init>(Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;
    .locals 1

    .line 98
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;
    .locals 1

    .line 111
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs getKnoxConfiguration([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    :try_start_0
    sget-object v1, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v2, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getKnoxConfigurationMap(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ObjectData"

    .line 385
    invoke-virtual {p0, p1, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "KnoxConfigurationMap"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 388
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "Id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 396
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 397
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getPreconditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 503
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getKnoxConfigurationPreconditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 506
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 507
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public installConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 127
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->installKnoxConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 131
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public installConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 150
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->installKnoxConfigurationWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 154
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs makeConfigurationMapRequest([Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;-><init>()V

    .line 168
    invoke-static {}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEmmContext()Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v14, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    invoke-direct {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;-><init>()V

    .line 175
    new-instance v3, Lcom/sds/emm/emmagent/service/knox/remotecommand/configuration/GetKnoxConfigurationMapCommandEntity;

    invoke-direct {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/configuration/GetKnoxConfigurationMapCommandEntity;-><init>()V

    .line 176
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/configuration/GetKnoxConfigurationMapCommandEntity;->setKnoxContainerId(Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 177
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/configuration/GetKnoxConfigurationMapCommandEntity;->setKnoxConfigurationTypes([Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/configuration/GetKnoxConfigurationMapCommandEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setCommandCode(Ljava/lang/String;)V

    const-string v4, "Success"

    .line 180
    sget-object v5, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getTenantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderSpecifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverSpecifier()Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverContainer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v14

    .line 180
    invoke-virtual/range {v2 .. v13}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeaderRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setRequestId(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 186
    invoke-virtual {v2, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setMesssage(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    .line 170
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;-><init>()V

    throw v0
.end method

.method public makeInstallConfigurationRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;-><init>()V

    .line 201
    invoke-static {}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEmmContext()Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v14, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    invoke-direct {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;-><init>()V

    .line 208
    new-instance v3, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;

    invoke-direct {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;-><init>()V

    move-object/from16 v2, p1

    .line 209
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;->setKnoxConfigurationType(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;->setKnoxContainerId(Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 211
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;->setKnoxConfigurationId(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfiguration/InstallKnoxConfigurationCommandEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setCommandCode(Ljava/lang/String;)V

    const-string v4, "Success"

    .line 214
    sget-object v5, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getTenantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderSpecifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverSpecifier()Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverContainer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v14

    .line 214
    invoke-virtual/range {v2 .. v13}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeaderRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setRequestId(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 220
    invoke-virtual {v2, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setMesssage(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    .line 203
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;-><init>()V

    throw v0
.end method

.method public makeInstallConfigurationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;-><init>()V

    .line 239
    invoke-static {}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEmmContext()Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v14, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    invoke-direct {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;-><init>()V

    .line 246
    new-instance v3, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;

    invoke-direct {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;-><init>()V

    move-object/from16 v2, p1

    .line 247
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->setKnoxConfigurationType(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->setKnoxContainerId(Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 249
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->setKnoxConfigurationId(Ljava/lang/String;)V

    move-object/from16 v2, p3

    .line 250
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->setUserCertPassword(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setCommandCode(Ljava/lang/String;)V

    const-string v4, "Success"

    .line 253
    sget-object v5, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getTenantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderSpecifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverSpecifier()Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverContainer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v14

    .line 253
    invoke-virtual/range {v2 .. v13}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeaderRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setRequestId(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 259
    invoke-virtual {v2, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setMesssage(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    .line 241
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;-><init>()V

    throw v0
.end method

.method public makeRemoveConfigurationRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;-><init>()V

    .line 268
    invoke-static {}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEmmContext()Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v3, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;

    invoke-direct {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;-><init>()V

    move-object/from16 v2, p1

    .line 274
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;->setKnoxConfigurationType(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;->setKnoxContainerId(Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 276
    invoke-virtual {v3, v2}, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;->setKnoxConfigurationId(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/service/knox/remotecommand/removeconfiguration/RemoveKnoxConfigurationCommandEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setCommandCode(Ljava/lang/String;)V

    .line 279
    new-instance v14, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    invoke-direct {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;-><init>()V

    const-string v4, "Success"

    .line 280
    sget-object v5, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getTenantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderSpecifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getSenderPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverSpecifier()Ljava/lang/String;

    move-result-object v11

    .line 282
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverContainer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->getReceiverPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v14

    .line 280
    invoke-virtual/range {v2 .. v13}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeaderRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setRequestId(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 286
    invoke-virtual {v2, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setMesssage(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    .line 270
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMNotInitializedException;-><init>()V

    throw v0
.end method

.method public parseInstallConfigurationResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/network/RemoteTimeOutException;,
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 295
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "EMM"

    .line 296
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v0, "Code"

    .line 298
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 300
    :cond_0
    new-instance p1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v0, "UnexpectedError"

    invoke-direct {p1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseKnoxConfigurationMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 415
    const-class v2, Ljava/util/Map;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "EMM"

    .line 416
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "Body"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "Data"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "Result"

    .line 417
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "Success"

    .line 419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const-string v1, "ObjectData"

    .line 426
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v1, "KnoxConfigurationMap"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 429
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 430
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "Id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    .line 420
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v2, "ErrorMessage"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 423
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseRemoveConfigurationResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->remoteGson:Lcom/google/gson/Gson;

    .line 319
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "EMM"

    .line 320
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v0, "Code"

    .line 322
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 324
    :cond_0
    new-instance p1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    const-string v0, "UnexpectedError"

    invoke-direct {p1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 340
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->targetContainerId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->removeKnoxConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 343
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 344
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
