.class public Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;
.super Ljava/lang/Object;
.source "MessageDataEncryptionV1.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;


# static fields
.field private static final BUFSIZE:I = 0x2000

.field private static final PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;


# instance fields
.field private final factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method

.method public constructor <init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    return-void
.end method


# virtual methods
.method public changeSpecForClient([B)V
    .locals 5

    .line 578
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 579
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 583
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 585
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    const-string v4, "changeSpecForClient"

    invoke-interface {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    .line 590
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iget-object v2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 592
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 593
    invoke-static {v1}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->fromByteArray([B)Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 594
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    return-void
.end method

.method public decryptRecordMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "decryptRecordMessage"

    .line 409
    new-instance v4, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v5, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    const/4 v5, 0x2

    new-array v5, v5, [B

    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 422
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v9, p3

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 424
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 426
    invoke-static {v5}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->fromByteArray([B)Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 431
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    .line 432
    invoke-static {v9}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 437
    invoke-virtual {v4, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 438
    invoke-virtual {v4, v9}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 440
    sget-object v9, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    const/16 v10, 0x2000

    const/4 v11, 0x0

    if-ne v9, v5, :cond_3

    .line 441
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 443
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 445
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    if-nez v2, :cond_2

    .line 447
    invoke-static {v7}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteArrayToInt([B)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v5, :cond_2

    .line 451
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v5, v10, [B

    .line 454
    :goto_0
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    .line 458
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 460
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v4, v11}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    goto/16 :goto_4

    .line 455
    :cond_1
    invoke-virtual {v2, v5, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 448
    :cond_2
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPT_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v2, v4, v6}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2

    .line 463
    :cond_3
    sget-object v9, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    const-string v13, "AES"

    const-string v14, "HmacSHA256"

    const-string v15, "RSA/ECB/PKCS1Padding"

    if-ne v9, v5, :cond_7

    .line 465
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    if-lez v5, :cond_4

    .line 467
    new-array v5, v5, [B

    .line 468
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    goto :goto_1

    :cond_4
    new-array v5, v11, [B

    :goto_1
    move-object/from16 v17, v5

    .line 473
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 474
    invoke-static {v7}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteArrayToInt([B)I

    move-result v5

    new-array v5, v5, [B

    .line 475
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 477
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    .line 478
    new-array v7, v7, [B

    .line 479
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 481
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v10, v10, [B

    .line 484
    :goto_2
    invoke-virtual {v8, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v11

    if-gtz v11, :cond_6

    .line 488
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 490
    invoke-virtual {v9}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v10}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v10

    invoke-static {v2, v5, v15, v9, v10}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v2

    iget-object v5, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 491
    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v5

    iget-object v9, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v9}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v9

    invoke-static {v2, v8, v14, v5, v9}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->hmac([B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v5

    .line 493
    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 494
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 495
    new-instance v2, Ljava/lang/String;

    const-string v19, "AES/CBC/PKCS5Padding"

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v20

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v21

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    invoke-static/range {v16 .. v21}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v4, v12}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    goto/16 :goto_4

    .line 497
    :cond_5
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPT_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v2, v4, v6}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    const/4 v6, 0x0

    .line 485
    invoke-virtual {v9, v10, v6, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v6, 0x0

    goto :goto_2

    .line 502
    :cond_7
    sget-object v6, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_ECB_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    if-ne v6, v5, :cond_a

    .line 504
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    .line 506
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 507
    invoke-static {v7}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteArrayToInt([B)I

    move-result v5

    new-array v5, v5, [B

    .line 508
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 510
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    .line 511
    new-array v6, v6, [B

    .line 512
    invoke-virtual {v8, v6}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 514
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v9, v10, [B

    .line 517
    :goto_3
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_9

    .line 521
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 523
    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v9}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v9

    invoke-static {v2, v5, v15, v8, v9}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v2

    iget-object v5, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 524
    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v5

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v8

    invoke-static {v2, v7, v14, v5, v8}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->hmac([B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v5

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 530
    invoke-static {v2, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 532
    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 533
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 534
    new-instance v2, Ljava/lang/String;

    const/16 v18, 0x0

    const-string v20, "AES/ECB/PKCS5Padding"

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v21

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v22

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    invoke-static/range {v17 .. v22}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v4, v12}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    goto :goto_4

    .line 536
    :cond_8
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPT_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    const/4 v11, 0x0

    .line 518
    invoke-virtual {v7, v9, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_a
    :goto_4
    return-object v4

    .line 434
    :cond_b
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2

    .line 428
    :cond_c
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 568
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 565
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 562
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 559
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 556
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 553
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 550
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 547
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 544
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAlert([B)Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 600
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    int-to-byte p1, p1

    .line 601
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/Alert;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object p1

    return-object p1
.end method

.method public makeAlertRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/Alert;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 55
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 57
    invoke-virtual {p2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/message/Alert;->toByte()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 64
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-virtual {v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    const/4 p2, 0x0

    .line 65
    invoke-virtual {v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    .line 66
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p2, p3, p1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public makeChangeSpecRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    .line 98
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 101
    invoke-virtual {p2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 102
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->getLatestVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->toByte()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->values()[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->values()[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    .line 109
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->values()[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->values()[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object p2

    array-length v1, p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_0

    .line 118
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 119
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-virtual {v0, p2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    .line 121
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_0
    :try_start_1
    aget-object v4, p2, v3

    .line 111
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->toByte()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_1
    aget-object v4, p2, v3

    .line 106
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 114
    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object p2

    const-string v0, "makeChangeSpecRequest"

    invoke-interface {p2, v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    new-instance p2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p2, v0, p1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public makeChangeSpecResponse(Ljava/lang/String;Ljava/lang/String;[B)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    const/4 p2, 0x2

    new-array p2, p2, [B

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p3

    int-to-byte p3, p3

    .line 164
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v4, :cond_9

    .line 173
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p2

    int-to-byte p2, p2

    move v4, v5

    :goto_1
    if-lt v4, p2, :cond_7

    .line 184
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    .line 188
    invoke-static {p3}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object p3

    if-nez p3, :cond_0

    .line 189
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->getLatestVersion()Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    move-result-object v3

    :cond_0
    iget-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 192
    invoke-virtual {p3, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->toByte()B

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    iget-object v4, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 197
    invoke-virtual {v4, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getSupportedCipherSuiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    if-eqz v1, :cond_6

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    iget-object v4, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 209
    invoke-virtual {v4, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getSupportedCompressionMethodList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    if-eqz v2, :cond_5

    .line 220
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 221
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->toByte()B

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 224
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-virtual {v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 225
    invoke-virtual {v0, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    .line 226
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 216
    :cond_5
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p1, p2, v3}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1

    .line 204
    :cond_6
    new-instance p1, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p1, p2, v3}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p1

    .line 176
    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    .line 178
    invoke-static {v6}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->fromByte(B)Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 180
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 167
    :cond_9
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 168
    invoke-static {p2}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->fromByteArray([B)Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 170
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 229
    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object p2

    const-string p3, "makeChangeSpecResponse"

    invoke-interface {p2, p3, p1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    new-instance p2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {p2, p3, p1}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public makeRecordMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    if-nez p3, :cond_0

    .line 277
    new-instance v5, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v6, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v7, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    goto :goto_0

    .line 279
    :cond_0
    new-instance v5, Lcom/sds/emm/emmagent/core/support/message/MessageData;

    sget-object v6, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    sget-object v7, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/sds/emm/emmagent/core/support/message/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;Lcom/sds/emm/emmagent/core/support/message/MessageType;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 286
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v2

    .line 287
    invoke-virtual/range {p3 .. p3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCompressionMethod()Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 289
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getCurrentCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v2

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 290
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getCurrentCompressionMethod()Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v3

    :goto_1
    const/4 v6, 0x0

    const-string v7, "makeRecordMessage"

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz p4, :cond_6

    if-eqz v4, :cond_6

    .line 302
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 303
    invoke-virtual {v5, v3}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    .line 304
    invoke-virtual {v5, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 306
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 308
    invoke-virtual {v3, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeHeader(Lcom/sds/emm/emmagent/core/support/message/MessageData;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 309
    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 310
    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCompressionMethod()Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->toByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v6

    const/4 v8, 0x0

    if-ne v3, v6, :cond_2

    .line 313
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    invoke-static {v8}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 315
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 318
    invoke-virtual {v5, v8}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    goto/16 :goto_3

    .line 320
    :cond_2
    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    const-string v10, "HmacSHA256"

    const-string v11, "RSA/ECB/PKCS1Padding"

    const-string v12, "AES"

    const/16 v13, 0x100

    if-ne v3, v6, :cond_4

    :try_start_1
    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 321
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v6

    invoke-static {v13, v12, v3, v6}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->generateSecretKey(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 324
    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getTarget()Lcom/sds/emm/emmagent/core/support/message/Target;

    move-result-object v6

    sget-object v8, Lcom/sds/emm/emmagent/core/support/message/Target;->SERVER:Lcom/sds/emm/emmagent/core/support/message/Target;

    const/16 v12, 0x80

    if-ne v6, v8, :cond_3

    const-string v6, "HMACDRBG"

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 325
    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v8

    iget-object v13, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v13}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v13

    invoke-static {v12, v6, v8, v13}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->generatePRNG(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v6, "SHA1PRNG"

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 327
    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v8

    iget-object v13, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v13}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v13

    invoke-static {v12, v6, v8, v13}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->generatePRNG(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v6

    .line 330
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const-string v17, "AES/CBC/PKCS5Padding"

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v18

    iget-object v8, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v8}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v19

    move-object v14, v3

    move-object v15, v6

    invoke-static/range {v14 .. v19}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v8

    .line 331
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    iget-object v13, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v13}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v14

    invoke-static {v4, v12, v11, v13, v14}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v4

    .line 332
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    iget-object v11, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v11}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v12}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v12

    invoke-static {v3, v8, v10, v11, v12}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->hmac([B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v3

    .line 335
    array-length v10, v6

    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 339
    array-length v6, v4

    invoke-static {v6}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->intToByteArray(I)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 340
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 343
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 344
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 347
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 349
    invoke-virtual {v5, v9}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    goto :goto_3

    .line 350
    :cond_4
    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_ECB_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v5}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getCipherSuite()Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v6

    if-ne v3, v6, :cond_5

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 351
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v6

    invoke-static {v13, v12, v3, v6}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->generateSecretKey(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v15, 0x0

    .line 352
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const-string v17, "AES/ECB/PKCS5Padding"

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v18

    iget-object v6, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v6}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v19

    move-object v14, v3

    invoke-static/range {v14 .. v19}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v6

    .line 353
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    iget-object v13, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v13}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v14}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v14

    invoke-static {v4, v12, v11, v13, v14}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v4

    .line 354
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    iget-object v11, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v11}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    invoke-virtual {v12}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v12

    invoke-static {v3, v6, v10, v11, v12}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->hmac([B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object v3

    .line 357
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    array-length v8, v4

    invoke-static {v8}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->intToByteArray(I)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 361
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 364
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 368
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 370
    invoke-virtual {v5, v9}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setEncrypted(Z)V

    .line 373
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sds/emm/emmagent/core/support/message/ConvertUtils;->byteToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->setMessage(Ljava/lang/String;)V

    return-object v5

    .line 299
    :cond_6
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/Alert;->ILLEGAL_PARAMETERS:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v2, v3, v6}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2

    .line 295
    :cond_7
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v2, v3, v6}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 400
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 397
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 394
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 391
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 388
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 385
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 382
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 379
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionV1;->factory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 376
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v3

    invoke-interface {v3, v7, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/AlertException;

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    invoke-direct {v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/AlertException;-><init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V

    throw v3
.end method
