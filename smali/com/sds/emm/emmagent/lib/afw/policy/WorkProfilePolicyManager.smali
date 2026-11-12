.class public final Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "WorkProfilePolicyManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final policyLevel:Ljava/lang/String;

.field private final targetProfileId:Ljava/lang/String;

.field private targetTriggerId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->policyLevel:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->targetProfileId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;
    .locals 1

    .line 60
    new-instance v0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 74
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    iget-object v1, p0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->policyLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->targetProfileId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getWorkProfilePolicyMap(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectData"

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "WorkProfilePolicyMap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 78
    new-instance v0, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v0, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
