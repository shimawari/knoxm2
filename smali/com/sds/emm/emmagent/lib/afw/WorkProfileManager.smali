.class public final Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "WorkProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager$Singleton;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;
    .locals 1

    .line 139
    invoke-static {}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createWorkProfile()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 43
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->createWorkProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 47
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrentPolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getInitialPolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getProfilePolicyManager(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/afw/policy/WorkProfilePolicyManager;

    move-result-object p1

    return-object p1
.end method

.method public getWorkProfileEntity()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 66
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getWorkProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectData"

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 70
    new-instance v1, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {v1, v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeWorkProfile()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 120
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->removeWorkProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

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
