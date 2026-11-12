.class public Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;
.super Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.source "RequestRemoteMessageHeaderVersion1Entity.java"


# annotations
.annotation runtime Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;
    code = "RequestRemoteMessageHeaderVersion1"
.end annotation


# instance fields
.field private ReceiverContainerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceiverContainerId"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceId"
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ErrorCode"
    .end annotation
.end field

.field private expirationTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpirationTime"
    .end annotation
.end field

.field private receiverPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceiverPackageName"
    .end annotation
.end field

.field private receiverSpecifier:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceiverSpecifier"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequestId"
    .end annotation
.end field

.field private sendTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SendTime"
    .end annotation
.end field

.field private senderContainerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SenderContainerId"
    .end annotation
.end field

.field private senderPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SenderPackageName"
    .end annotation
.end field

.field private senderSpecifier:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SenderSpecifier"
    .end annotation
.end field

.field private serverId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ServerId"
    .end annotation
.end field

.field private tenantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenantId"
    .end annotation
.end field

.field private version:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->expirationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->ReceiverContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->receiverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverSpecifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->receiverSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderSpecifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->tenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->version:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->expirationTime:Ljava/lang/String;

    return-void
.end method

.method public setReceiverContainerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->ReceiverContainerId:Ljava/lang/String;

    return-void
.end method

.method public setReceiverPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->receiverPackageName:Ljava/lang/String;

    return-void
.end method

.method public setReceiverSpecifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->receiverSpecifier:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public setSenderContainerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderContainerId:Ljava/lang/String;

    return-void
.end method

.method public setSenderPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSenderSpecifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->senderSpecifier:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->tenantId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->version:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    return-void
.end method
