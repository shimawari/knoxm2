.class public final Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "PolicyManager.java"


# instance fields
.field private final policyLevel:Ljava/lang/String;

.field private final triggerId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->policyLevel:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->triggerId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
    .locals 1

    .line 50
    new-instance v0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs getPolicies([Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 68
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->policyLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->triggerId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getPolicyMap(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "PolicyMap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 72
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPolicyAuditResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 92
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getActionResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 96
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setNotificationOption(Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 112
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    sget-object v1, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->setNotificationOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrimitiveData"

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 116
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
