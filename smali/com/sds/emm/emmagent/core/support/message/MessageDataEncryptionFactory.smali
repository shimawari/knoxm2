.class public final Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;
.super Ljava/lang/Object;
.source "MessageDataEncryptionFactory.java"


# static fields
.field private static final HEADER_PREFIX:Ljava/lang/String; = "EMM"

.field private static instance:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;


# instance fields
.field private currentCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field private currentCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

.field private currentProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

.field private final log:Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

.field private messageEncryptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;",
            ">;"
        }
    .end annotation
.end field

.field private providerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedCipherSuiteListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CipherSuite;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedCompressionMethodListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final target:Lcom/sds/emm/emmagent/core/support/message/Target;


# direct methods
.method private constructor <init>(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeMessageEncryptionMap()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->target:Lcom/sds/emm/emmagent/core/support/message/Target;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->log:Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p2, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory$1;

    invoke-direct {p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory$1;-><init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->log:Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    .line 86
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 87
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/Target;->getProviders()[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    .line 99
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static getHeader([B)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 477
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    .line 478
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 480
    new-array v3, v3, [B

    .line 481
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 483
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    const/16 v5, 0x2e

    if-ne v5, v4, :cond_0

    .line 489
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 490
    new-array v1, v1, [B

    .line 491
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 492
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4, v3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p0

    .line 498
    invoke-static {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageType;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v1

    .line 500
    invoke-virtual {v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 501
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    return-object v0
.end method

.method public static getInstance(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;
    .locals 2

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 39
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->instance:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-direct {v1, p0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;-><init>(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->instance:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 39
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->instance:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->messageEncryptionMap:Ljava/util/Map;

    .line 112
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->messageEncryptionMap:Ljava/util/Map;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;

    invoke-direct {p1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionNone;-><init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V

    :goto_0
    return-object p1
.end method

.method private static isEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 507
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private makeMessageEncryptionMap()V
    .locals 3

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->messageEncryptionMap:Ljava/util/Map;

    .line 106
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;

    invoke-direct {v2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;-><init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeRecordMessageHelper(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    invoke-direct {v0, p2, p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface/range {p1 .. p6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->makeRecordMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object p1

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "EMM"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object p1
.end method

.method public static newInstance(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-direct {v0, p0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;-><init>(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)V

    return-object v0
.end method


# virtual methods
.method public analyzeMessage(Ljava/lang/String;Ljava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "EMM"

    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    const/4 v0, 0x3

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->hexToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 376
    invoke-static {v1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getHeader([B)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v2

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 380
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object p1

    .line 383
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 384
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 385
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    add-int/2addr v0, v4

    .line 386
    array-length v4, v1

    sub-int/2addr v4, v0

    new-array v6, v4, [B

    .line 387
    invoke-static {v1, v0, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :try_start_0
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v0

    .line 394
    invoke-virtual {v2, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    .line 396
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-ne v1, v0, :cond_1

    .line 400
    invoke-interface {p1, v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->changeSpecForClient([B)V

    goto/16 :goto_1

    .line 401
    :cond_1
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-ne v1, v0, :cond_2

    .line 405
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3, v6, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->decryptRecordMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v2

    .line 406
    invoke-virtual {v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    goto/16 :goto_1

    .line 407
    :cond_2
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-ne v1, v0, :cond_3

    .line 411
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3, v6, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->decryptRecordMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v2

    .line 412
    invoke-virtual {v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    goto :goto_1

    .line 413
    :cond_3
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    if-ne p2, v0, :cond_6

    .line 417
    invoke-interface {p1, v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->getAlert([B)Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setAlert(Lcom/sds/emm/emmagent/core/support/message/Alert;)V

    .line 419
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 420
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 421
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 427
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 428
    invoke-virtual {p0, v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 429
    invoke-virtual {p0, v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 430
    invoke-virtual {p0, v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 434
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-virtual {v2, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 435
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;->getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setAlert(Lcom/sds/emm/emmagent/core/support/message/Alert;)V

    .line 436
    throw p1

    .line 443
    :cond_4
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 444
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 445
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setAlert(Lcom/sds/emm/emmagent/core/support/message/Alert;)V

    goto :goto_1

    .line 462
    :cond_5
    :try_start_1
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    invoke-direct {p0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object p1

    .line 463
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-interface {p1, v0, v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->makeAlertRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/Alert;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v3

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object v2, v3

    :cond_6
    :goto_1
    return-object v2
.end method

.method public getCurrentCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-object v0
.end method

.method public getCurrentCompressionMethod()Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-object v0
.end method

.method public getCurrentProtocolVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-object v0
.end method

.method public getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->log:Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    return-object v0
.end method

.method public getProviderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedCipherSuiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CipherSuite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 134
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 135
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getSupportedCompressionMethodList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 144
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 145
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 147
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getTarget()Lcom/sds/emm/emmagent/core/support/message/Target;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->target:Lcom/sds/emm/emmagent/core/support/message/Target;

    return-object v0
.end method

.method makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->toByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/MessageType;->toByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 236
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2e

    .line 237
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeResponse(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object p1

    return-object p1
.end method

.method public makeResponse(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    const-string v11, "EMM"

    .line 294
    new-instance v12, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    invoke-direct {v12, p1, v10}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 297
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Target;->CLIENT:Lcom/sds/emm/emmagent/core/support/message/Target;

    iget-object v2, v8, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->target:Lcom/sds/emm/emmagent/core/support/message/Target;

    if-ne v0, v2, :cond_0

    iget-object v0, v8, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    invoke-direct {v0, p1, v10}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 304
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object v1

    .line 306
    invoke-interface {v1, p1, v10}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->makeChangeSpecRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v12

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, v8, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    .line 312
    invoke-direct {p0, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object v13
    :try_end_0
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 313
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeRecordMessageHelper(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v12
    :try_end_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v13

    goto/16 :goto_1

    .line 314
    :cond_1
    :try_start_2
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 318
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object v1

    .line 319
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-virtual {v12, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setType(Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->hexToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getTenantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 324
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    .line 327
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v5, v3, [B

    .line 328
    invoke-static {v0, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    invoke-interface {v1, p1, v10, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->makeChangeSpecResponse(Ljava/lang/String;Ljava/lang/String;[B)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v12

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :cond_3
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getType()Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 336
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getMessageEncryption(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;

    move-result-object v13
    :try_end_2
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, p0

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 337
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeRecordMessageHelper(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v12
    :try_end_3
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 346
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/AlertException;->getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object v0

    invoke-interface {v1, p1, v10, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;->makeAlertRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/Alert;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object v12

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    :goto_2
    return-object v12
.end method

.method public setCurrentCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-void
.end method

.method public setCurrentCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-void
.end method

.method public setCurrentProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->currentProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method

.method public setProviderList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    .line 190
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->providerList:Ljava/util/List;

    .line 193
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setSupportedCipherSuiteList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CipherSuite;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 154
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 158
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    invoke-static {p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCipherSuiteListMap:Ljava/util/Map;

    .line 163
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setSupportedCompressionMethodList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 174
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    invoke-static {p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 177
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->supportedCompressionMethodListMap:Ljava/util/Map;

    .line 179
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
