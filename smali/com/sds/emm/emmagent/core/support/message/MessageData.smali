.class public Lcom/sds/emm/emmagent/core/support/message/MessageData;
.super Ljava/lang/Object;
.source "MessageData.java"


# instance fields
.field private alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field private cipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field private compressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

.field private deviceId:Ljava/lang/String;

.field private encrypted:Z

.field private message:Ljava/lang/String;

.field private tenantId:Ljava/lang/String;

.field private type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field private version:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->tenantId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->tenantId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->version:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->tenantId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->version:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    iput-object p4, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    return-void
.end method


# virtual methods
.method public getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-object v0
.end method

.method public getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->cipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-object v0
.end method

.method public getCompressionMethod()Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->compressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->tenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    return-object v0
.end method

.method public getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->version:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-object v0
.end method

.method public hasAlert()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAlert()Z
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isControll()Z
    .locals 2

    .line 15
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->encrypted:Z

    return v0
.end method

.method public isRecord()Z
    .locals 2

    .line 27
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public retry()Z
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->isControll()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlert(Lcom/sds/emm/emmagent/core/support/message/Alert;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-void
.end method

.method public setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->cipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-void
.end method

.method public setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->compressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->encrypted:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->message:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->tenantId:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->type:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    return-void
.end method

.method public setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageData;->version:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method
