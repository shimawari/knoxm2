.class public Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;
.super Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRequestRemoteMessage;
.source "RequestRemoteMessageVersion1.java"


# annotations
.annotation runtime Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;
    code = "RequestRemoteMessageVersion1"
.end annotation

.annotation runtime Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;
    version = .enum Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1$Serializer;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPIRATION_S:I = 0xa

.field private static final POSTFIX:Ljava/lang/String; = "Request"


# instance fields
.field private data:Lcom/sds/emm/emmagent/core/actionentity/base/Entity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation
.end field

.field private header:Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Header"
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRequestRemoteMessage;-><init>()V

    .line 39
    new-instance v0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->setHeader(Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;)V

    return-void
.end method

.method private setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Lcom/sds/emm/emmagent/core/actionentity/base/Entity;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->data:Lcom/sds/emm/emmagent/core/actionentity/base/Entity;

    return-object v0
.end method

.method public getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->header:Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    return-object v0
.end method

.method public getHeaderRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->header:Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    .line 53
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverSpecifier()Ljava/lang/String;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->getReceiverSpecifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->result:Ljava/lang/String;

    return-object v0
.end method

.method public makeBody(Ljava/lang/String;Lcom/sds/emm/emmagent/core/actionentity/base/Entity;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->result:Ljava/lang/String;

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->data:Lcom/sds/emm/emmagent/core/actionentity/base/Entity;

    return-void
.end method

.method public makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setVersion(Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;)V

    .line 65
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setTenantId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setDeviceId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "-"

    const-string v0, ""

    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setRequestId(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/DateTimeUtils;->currentUTCString()Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setSendTime(Ljava/lang/String;)V

    .line 72
    invoke-static {p3}, Lcom/sds/emm/emmagent/core/support/DateTimeUtils;->parseUTC(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p3

    const/16 p4, 0xa

    .line 73
    invoke-virtual {p3, p4}, Lcom/sds/emm/emmagent/core/support/DateTime;->plusSeconds(I)Lcom/sds/emm/emmagent/core/support/DateTime;

    .line 74
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p4

    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/DateTime;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setExpirationTime(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setSenderSpecifier(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p7}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setSenderContainerId(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p8}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setSenderPackageName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p9}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setReceiverSpecifier(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p10}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setReceiverContainerId(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object p3

    invoke-virtual {p3, p11}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;->setReceiverPackageName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->setCommand(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;)V

    .line 85
    invoke-direct {p0, p2}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->setResult(Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->header:Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    return-void
.end method
