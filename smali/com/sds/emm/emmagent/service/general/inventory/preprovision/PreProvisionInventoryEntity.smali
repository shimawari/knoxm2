.class public Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;
.super Ljava/lang/Object;
.source "PreProvisionInventoryEntity.java"


# static fields
.field public static final ENROLLER_EMM:Ljava/lang/String; = "EMM"

.field public static final ENROLLER_KME:Ljava/lang/String; = "KME"

.field public static final ENROLLER_UMC:Ljava/lang/String; = "UMC"

.field public static final TENANT_TYPE_MULTI:Ljava/lang/String; = "M"

.field public static final TENANT_TYPE_SINGLE:Ljava/lang/String; = "S"

.field public static final UPDATE_FLAGS_MOBILE_ID:I = 0x4

.field public static final UPDATE_FLAGS_TENANT_TYPE:I = 0x1

.field public static final UPDATE_FLAGS_TMS_SERVER_IP:I = 0x8

.field public static final UPDATE_FLAGS_TMS_SERVER_PORT:I = 0x10

.field public static final UPDATE_FLAGS_USER_ID:I = 0x2


# instance fields
.field private atsHost:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AtsHost"
    .end annotation
.end field

.field private atsPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AtsPort"
    .end annotation
.end field

.field private auditMaxFileSizeLimit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AuditMaxFileSizeLimit"
    .end annotation
.end field

.field private context:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AgentContext"
    .end annotation
.end field

.field private deviceCertificateAlias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceCertificateAlias"
    .end annotation
.end field

.field private deviceCertificateServerContext:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceCertificateServerContext"
    .end annotation
.end field

.field private deviceCertificateServerIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceCertificateServerIp"
    .end annotation
.end field

.field private deviceCertificateServerPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceCertificateServerPort"
    .end annotation
.end field

.field private deviceCertificateServerProtocol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceCertificateServerProtocol"
    .end annotation
.end field

.field private devicePrivateKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DevicePrivateKey"
    .end annotation
.end field

.field private devicePublicKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DevicePublicKey"
    .end annotation
.end field

.field private doNotApplyPolicyBeforeLogin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DoNotApplyPolicyBeforeLogin"
    .end annotation
.end field

.field private emmClientInstallUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmClientInstallUrl"
    .end annotation
.end field

.field private emmCompress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmCompress"
    .end annotation
.end field

.field private emmConnectionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmConnectionType"
    .end annotation
.end field

.field private emmContextUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmContextUrl"
    .end annotation
.end field

.field private emmDataType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmDataType"
    .end annotation
.end field

.field private emmEncryption:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmEncryption"
    .end annotation
.end field

.field private emmServerIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmServerIp"
    .end annotation
.end field

.field private emmServerPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmServerPort"
    .end annotation
.end field

.field private emmTimeoutms:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmmTimeoutms"
    .end annotation
.end field

.field private enroller:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Enroller"
    .end annotation
.end field

.field private installerPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InstallerPackageName"
    .end annotation
.end field

.field private installerSignature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InstallerSignature"
    .end annotation
.end field

.field private license:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "License"
    .end annotation
.end field

.field private logConnectionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogConnectionType"
    .end annotation
.end field

.field private logContextUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogContextUrl"
    .end annotation
.end field

.field private logMaxFileSizeLimit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogMaxFileSizeLimit"
    .end annotation
.end field

.field private logMaxHistory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogMaxHistory"
    .end annotation
.end field

.field private logServerIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogServerIp"
    .end annotation
.end field

.field private logServerPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogServerPort"
    .end annotation
.end field

.field private logTimeoutms:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogTimeoutms"
    .end annotation
.end field

.field private mobileId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileId"
    .end annotation
.end field

.field private provisionErrorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProvisionErrorCode"
    .end annotation
.end field

.field private provisionErrorDetailMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProvisionErrorDetailMessage"
    .end annotation
.end field

.field private provisionSucceeded:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProvisionSucceeded"
    .end annotation
.end field

.field private pushMpsHost:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PushMpsHost"
    .end annotation
.end field

.field private pushMpsPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PushMpsPort"
    .end annotation
.end field

.field private pushRegionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PushRegionId"
    .end annotation
.end field

.field private pushSpsHost:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PushSpsHost"
    .end annotation
.end field

.field private pushSpsPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PushSpsPort"
    .end annotation
.end field

.field private showLog:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogShowOnLogcat"
    .end annotation
.end field

.field private tenantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenantId"
    .end annotation
.end field

.field private tenantType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenantType"
    .end annotation
.end field

.field private tmsConnectionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TmsConnectionType"
    .end annotation
.end field

.field private tmsServerIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TmsServerIp"
    .end annotation
.end field

.field private tmsServerPort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TmsServerPort"
    .end annotation
.end field

.field private updateFlags:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UpdateFlags"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->doNotApplyPolicyBeforeLogin:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->showLog:Z

    return-void
.end method


# virtual methods
.method public addUpdateFlags(I)V
    .locals 1

    iget v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    return-void
.end method

.method public containsUpdateFlags(I)Z
    .locals 1

    iget v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAtsHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->atsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getAtsPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->atsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getAuditMaxFileSizeLimit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->auditMaxFileSizeLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateUrl()Ljava/lang/String;
    .locals 5

    .line 291
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getDeviceCertificateServerProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getDeviceCertificateServerIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getDeviceCertificateServerPort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 292
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getDeviceCertificateServerContext()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 308
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->neverOccur(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getContext()Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->context:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    return-object v0
.end method

.method public getDeviceCertificateAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCertificateServerContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerContext:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCertificateServerIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerIp:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCertificateServerPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCertificateServerProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePrivateKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->devicePrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->devicePublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmClientInstallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmClientInstallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmCompress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmCompress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmContextUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmContextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmEncryption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmServerIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmServerIp:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmServerPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmTimeoutms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmTimeoutms:Ljava/lang/String;

    return-object v0
.end method

.method public getEnroller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->enroller:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->installerSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getLogConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogContextUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logContextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMaxFileSizeLimit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logMaxFileSizeLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMaxHistory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logMaxHistory:Ljava/lang/String;

    return-object v0
.end method

.method public getLogServerIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logServerIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLogServerPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTimeoutms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logTimeoutms:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->mobileId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionErrorDetailMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionErrorDetailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPushMpsHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushMpsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPushMpsPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushMpsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPushRegionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushSpsHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushSpsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPushSpsPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushSpsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tenantType:Ljava/lang/String;

    return-object v0
.end method

.method public getTmsConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getTmsServerIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsServerIp:Ljava/lang/String;

    return-object v0
.end method

.method public getTmsServerPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFlags()I
    .locals 1

    iget v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 567
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getEmmConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getEmmServerIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getEmmServerPort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->getEmmContextUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 583
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->neverOccur(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isDoNotApplyPolicyBeforeLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->doNotApplyPolicyBeforeLogin:Z

    return v0
.end method

.method public isLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->showLog:Z

    return v0
.end method

.method public isProvisionSucceeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionSucceeded:Z

    return v0
.end method

.method public resetUpdateFlags()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    return-void
.end method

.method public setAtsHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->atsHost:Ljava/lang/String;

    return-void
.end method

.method public setAtsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->atsPort:Ljava/lang/String;

    return-void
.end method

.method public setAuditMaxFileSizeLimit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->auditMaxFileSizeLimit:Ljava/lang/String;

    return-void
.end method

.method public setContext(Lcom/sds/emm/emmagent/core/context/EMMAgentContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->context:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    return-void
.end method

.method public setDeviceCertificateAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateAlias:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCertificateServerContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerContext:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCertificateServerIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerIp:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCertificateServerPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerPort:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCertificateServerProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->deviceCertificateServerProtocol:Ljava/lang/String;

    return-void
.end method

.method public setDevicePrivateKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->devicePrivateKey:Ljava/lang/String;

    return-void
.end method

.method public setDevicePublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->devicePublicKey:Ljava/lang/String;

    return-void
.end method

.method public setDoNotApplyPolicyBeforeLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->doNotApplyPolicyBeforeLogin:Z

    return-void
.end method

.method public setEmmClientInstallUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmClientInstallUrl:Ljava/lang/String;

    return-void
.end method

.method public setEmmCompress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmCompress:Ljava/lang/String;

    return-void
.end method

.method public setEmmConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmConnectionType:Ljava/lang/String;

    return-void
.end method

.method public setEmmContextUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmContextUrl:Ljava/lang/String;

    return-void
.end method

.method public setEmmDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmDataType:Ljava/lang/String;

    return-void
.end method

.method public setEmmEncryption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmEncryption:Ljava/lang/String;

    return-void
.end method

.method public setEmmServerIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmServerIp:Ljava/lang/String;

    return-void
.end method

.method public setEmmServerPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmServerPort:Ljava/lang/String;

    return-void
.end method

.method public setEmmTimeoutms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->emmTimeoutms:Ljava/lang/String;

    return-void
.end method

.method public setEnroller(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->enroller:Ljava/lang/String;

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->installerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setInstallerSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->installerSignature:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->license:Ljava/lang/String;

    return-void
.end method

.method public setLogConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logConnectionType:Ljava/lang/String;

    return-void
.end method

.method public setLogContextUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logContextUrl:Ljava/lang/String;

    return-void
.end method

.method public setLogMaxFileSizeLimit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logMaxFileSizeLimit:Ljava/lang/String;

    return-void
.end method

.method public setLogMaxHistory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logMaxHistory:Ljava/lang/String;

    return-void
.end method

.method public setLogServerIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logServerIp:Ljava/lang/String;

    return-void
.end method

.method public setLogServerPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logServerPort:Ljava/lang/String;

    return-void
.end method

.method public setLogShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->showLog:Z

    return-void
.end method

.method public setLogTimeoutms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->logTimeoutms:Ljava/lang/String;

    return-void
.end method

.method public setMobileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->mobileId:Ljava/lang/String;

    return-void
.end method

.method public setProvisionErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setProvisionErrorDetailMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionErrorDetailMessage:Ljava/lang/String;

    return-void
.end method

.method public setProvisionSucceeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->provisionSucceeded:Z

    return-void
.end method

.method public setPushMpsHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushMpsHost:Ljava/lang/String;

    return-void
.end method

.method public setPushMpsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushMpsPort:Ljava/lang/String;

    return-void
.end method

.method public setPushRegionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushRegionId:Ljava/lang/String;

    return-void
.end method

.method public setPushSpsHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushSpsHost:Ljava/lang/String;

    return-void
.end method

.method public setPushSpsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->pushSpsPort:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tenantId:Ljava/lang/String;

    return-void
.end method

.method public setTenantType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tenantType:Ljava/lang/String;

    return-void
.end method

.method public setTmsConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsConnectionType:Ljava/lang/String;

    return-void
.end method

.method public setTmsServerIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsServerIp:Ljava/lang/String;

    return-void
.end method

.method public setTmsServerPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->tmsServerPort:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFlags(I)V
    .locals 0

    iput p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->updateFlags:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/preprovision/PreProvisionInventoryEntity;->userId:Ljava/lang/String;

    return-void
.end method
