.class public Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;
.super Ljava/lang/Object;
.source "MessageDataEncryptionNone.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;


# static fields
.field private static final PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;


# instance fields
.field private final factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method

.method public constructor <init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    return-void
.end method


# virtual methods
.method public changeSpecForClient([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 77
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public decryptRecordMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 72
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAlert([B)Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 82
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-object p1
.end method

.method public makeAlertRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/Alert;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 37
    new-instance p3, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 39
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 41
    invoke-virtual {p2, p3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/Alert;->toByte()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object p3

    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p2, p3, p1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public makeChangeSpecRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 54
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public makeChangeSpecResponse(Ljava/lang/String;Ljava/lang/String;[B)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 60
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public makeRecordMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 66
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1
.end method
