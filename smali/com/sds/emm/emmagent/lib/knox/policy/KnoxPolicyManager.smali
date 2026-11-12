.class public final Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "KnoxPolicyManager.java"


# instance fields
.field private final policyLevel:Ljava/lang/String;

.field private final targetContainerId:Ljava/lang/String;

.field private final targetTriggerId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->targetContainerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->policyLevel:Ljava/lang/String;

    iput-object p3, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->targetTriggerId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
    .locals 1

    .line 269
    new-instance v0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;

    invoke-direct {v0, p1, p0, p2}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs getKnoxPolicies([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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

    .line 224
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->policyLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->targetContainerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->targetTriggerId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getKnoxPolicyMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "KnoxPolicyMap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 227
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 228
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPolicyAuditResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 248
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->targetContainerId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getKnoxActionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimitiveData"

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 252
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
