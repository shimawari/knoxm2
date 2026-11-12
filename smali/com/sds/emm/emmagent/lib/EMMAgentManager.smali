.class public final Lcom/sds/emm/emmagent/lib/EMMAgentManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "EMMAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    }
.end annotation


# static fields
.field private static emmContext:Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;


# instance fields
.field private contentManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method public static getEmmContext()Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->emmContext:Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;)V
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->setEmmContext(Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;)V

    return-void
.end method

.method public static setEmmContext(Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;)V
    .locals 0

    sput-object p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->emmContext:Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;

    return-void
.end method


# virtual methods
.method public getAgentUpdateManager()Lcom/sds/emm/emmagent/lib/AgentUpdateManager;
    .locals 1

    .line 83
    invoke-static {}, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;->getInstance()Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    move-result-object v0

    return-object v0
.end method

.method public getAppManager()Lcom/sds/emm/emmagent/lib/app/AppManager;
    .locals 1

    .line 133
    invoke-static {}, Lcom/sds/emm/emmagent/lib/app/AppManager;->getInstance()Lcom/sds/emm/emmagent/lib/app/AppManager;

    move-result-object v0

    return-object v0
.end method

.method public getClientManager()Lcom/sds/emm/emmagent/lib/client/ClientManager;
    .locals 1

    .line 364
    invoke-static {}, Lcom/sds/emm/emmagent/lib/client/ClientManager;->getInstance()Lcom/sds/emm/emmagent/lib/client/ClientManager;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationManager()Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;
    .locals 1

    .line 146
    invoke-static {}, Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;->getInstance()Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;

    move-result-object v0

    return-object v0
.end method

.method public getContentManager()Lcom/sds/emm/emmagent/lib/content/ContentManager;
    .locals 1

    .line 353
    invoke-static {}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->getInstance()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
    .locals 2

    .line 172
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCertificateManager()Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;
    .locals 1

    .line 111
    invoke-static {}, Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;->getInstance()Lcom/sds/emm/emmagent/lib/devicecert/DeviceCertificateManager;

    move-result-object v0

    return-object v0
.end method

.method public getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;
    .locals 1

    .line 183
    invoke-static {}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->getInstance()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
    .locals 2

    .line 237
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getInitialPolicyManager()Lcom/sds/emm/emmagent/lib/policy/PolicyManager;
    .locals 2

    .line 198
    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->INITIAL:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sds/emm/emmagent/lib/policy/PolicyManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/policy/PolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getInventoryManager()Lcom/sds/emm/emmagent/lib/inventory/InventoryManager;
    .locals 1

    .line 209
    invoke-static {}, Lcom/sds/emm/emmagent/lib/inventory/InventoryManager;->getInstance()Lcom/sds/emm/emmagent/lib/inventory/InventoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getKioskManager()Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;
    .locals 1

    .line 370
    invoke-static {}, Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;->getInstance()Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxManager()Lcom/sds/emm/emmagent/lib/knox/KnoxManager;
    .locals 1

    .line 223
    invoke-static {}, Lcom/sds/emm/emmagent/lib/knox/KnoxManager;->getInstance()Lcom/sds/emm/emmagent/lib/knox/KnoxManager;

    move-result-object v0

    return-object v0
.end method

.method public getLogManager()Lcom/sds/emm/emmagent/lib/log/LogManager;
    .locals 1

    .line 288
    invoke-static {}, Lcom/sds/emm/emmagent/lib/log/LogManager;->getInstance()Lcom/sds/emm/emmagent/lib/log/LogManager;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionManager()Lcom/sds/emm/emmagent/lib/permission/PermissionManager;
    .locals 1

    .line 301
    invoke-static {}, Lcom/sds/emm/emmagent/lib/permission/PermissionManager;->getInstance()Lcom/sds/emm/emmagent/lib/permission/PermissionManager;

    move-result-object v0

    return-object v0
.end method

.method public getProfileManager()Lcom/sds/emm/emmagent/lib/profile/ProfileManager;
    .locals 1

    .line 275
    invoke-static {}, Lcom/sds/emm/emmagent/lib/profile/ProfileManager;->getInstance()Lcom/sds/emm/emmagent/lib/profile/ProfileManager;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;
    .locals 1

    .line 327
    invoke-static {}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getInstance()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v0

    return-object v0
.end method

.method public getPushManager()Lcom/sds/emm/emmagent/lib/push/PushManager;
    .locals 1

    .line 383
    invoke-static {}, Lcom/sds/emm/emmagent/lib/push/PushManager;->getInstance()Lcom/sds/emm/emmagent/lib/push/PushManager;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityManager()Lcom/sds/emm/emmagent/lib/security/SecurityManager;
    .locals 1

    .line 248
    invoke-static {}, Lcom/sds/emm/emmagent/lib/security/SecurityManager;->getInstance()Lcom/sds/emm/emmagent/lib/security/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyManager()Lcom/sds/emm/emmagent/lib/telephony/TelephonyManager;
    .locals 1

    .line 314
    invoke-static {}, Lcom/sds/emm/emmagent/lib/telephony/TelephonyManager;->getInstance()Lcom/sds/emm/emmagent/lib/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerManager()Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;
    .locals 1

    .line 262
    invoke-static {}, Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;->getInstance()Lcom/sds/emm/emmagent/lib/trigger/TriggerManager;

    move-result-object v0

    return-object v0
.end method

.method public getWorkProfileManager()Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;
    .locals 1

    .line 340
    invoke-static {}, Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;->getInstance()Lcom/sds/emm/emmagent/lib/afw/WorkProfileManager;

    move-result-object v0

    return-object v0
.end method
