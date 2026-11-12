.class public final Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/trigger/TriggerManager$Singleton;
    }
.end annotation


# static fields
.field private static instance:Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/trigger/TriggerManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;
    .locals 1

    .line 58
    invoke-static {}, Lcom/sds/emm/emmagent/lib/trigger/TriggerManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGeneralPolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getKnoxPolicyManager(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/policy/KnoxPolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getTriggerList()Ljava/util/List;
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

    .line 101
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArrayData"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 105
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
