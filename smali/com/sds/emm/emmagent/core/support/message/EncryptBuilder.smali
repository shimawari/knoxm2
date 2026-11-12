.class public Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;
.super Ljava/lang/Object;
.source "EncryptBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToPrivateKey([BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")",
            "Ljava/security/PrivateKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 396
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 398
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 400
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 401
    invoke-static {p0, p1, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->byteToPrivateKey([BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PrivateKey;

    move-result-object p0

    goto :goto_1

    .line 403
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->byteToPrivateKey([BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 416
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 417
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 412
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 413
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 408
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 409
    :cond_4
    throw v2
.end method

.method public static byteToPublicKey([BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 430
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 432
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 434
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 435
    invoke-static {p0, p1, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->byteToPublicKey([BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;

    move-result-object p0

    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->byteToPublicKey([BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 450
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 446
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 447
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 442
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 443
    :cond_4
    throw v2
.end method

.method public static decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 289
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 291
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 293
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 294
    invoke-static {p0, p1, p2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 321
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 322
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 317
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 318
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 313
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 314
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 309
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 310
    :cond_5
    throw v2

    :catch_4
    move-exception v2

    .line 305
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 306
    :cond_6
    throw v2

    :catch_5
    move-exception v2

    .line 301
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 302
    :cond_7
    throw v2
.end method

.method public static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 190
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 192
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 194
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 195
    invoke-static {p0, p1, p2, p3, p5}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 226
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 222
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 223
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 218
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 219
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 214
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 215
    :cond_5
    throw v2

    :catch_4
    move-exception v2

    .line 210
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 211
    :cond_6
    throw v2

    :catch_5
    move-exception v2

    .line 206
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 207
    :cond_7
    throw v2

    :catch_6
    move-exception v2

    .line 202
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 203
    :cond_8
    throw v2
.end method

.method public static encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 242
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 244
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 246
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 247
    invoke-static {p0, p1, p2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 274
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 275
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 270
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 271
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 266
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 267
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 262
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 263
    :cond_5
    throw v2

    :catch_4
    move-exception v2

    .line 258
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 259
    :cond_6
    throw v2

    :catch_5
    move-exception v2

    .line 254
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 255
    :cond_7
    throw v2
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 86
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 88
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 90
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 91
    invoke-static {p0, p1, p2, p3, p5}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 122
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 118
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 119
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 114
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 115
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 110
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 111
    :cond_5
    throw v2

    :catch_4
    move-exception v2

    .line 106
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 107
    :cond_6
    throw v2

    :catch_5
    move-exception v2

    .line 102
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 103
    :cond_7
    throw v2

    :catch_6
    move-exception v2

    .line 98
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 99
    :cond_8
    throw v2
.end method

.method public static encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 138
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 140
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 142
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 143
    invoke-static {p0, p1, p2, p3, p5}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 174
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 170
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 171
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 166
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 167
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 162
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 163
    :cond_5
    throw v2

    :catch_4
    move-exception v2

    .line 158
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 159
    :cond_6
    throw v2

    :catch_5
    move-exception v2

    .line 154
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 155
    :cond_7
    throw v2

    :catch_6
    move-exception v2

    .line 150
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 151
    :cond_8
    throw v2
.end method

.method public static generateKeyPair(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")",
            "Ljava/security/KeyPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 29
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 30
    invoke-static {p0, p1, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generateKeyPair(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/KeyPair;

    move-result-object p0

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generateKeyPair(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 41
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 42
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 37
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    throw v2
.end method

.method public static generatePRNG(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 367
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 369
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 371
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 372
    invoke-static {p0, p1, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generatePRNG(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generatePRNG(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 383
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 384
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 379
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 380
    :cond_3
    throw v2
.end method

.method public static generateSecretKey(ILjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")",
            "Ljavax/crypto/SecretKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 58
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 59
    invoke-static {p0, p1, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generateSecretKey(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;

    move-result-object p0

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->generateSecretKey(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 66
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    throw v2
.end method

.method public static hmac([B[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 334
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 336
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 338
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 339
    invoke-static {p0, p1, p2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->hmac([B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->hmac([B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 354
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 355
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 350
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 351
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 346
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 347
    :cond_4
    throw v2
.end method

.method public static sign(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;",
            "Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 464
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 466
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 468
    :try_start_0
    sget-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    if-ne v2, v1, :cond_1

    .line 469
    invoke-static {p0, p1, p2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->sign(Ljava/security/PrivateKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0

    goto :goto_1

    .line 471
    :cond_1
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p4}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->sign(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v2

    .line 488
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    throw v2

    :catch_1
    move-exception v2

    .line 484
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 485
    :cond_3
    throw v2

    :catch_2
    move-exception v2

    .line 480
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 481
    :cond_4
    throw v2

    :catch_3
    move-exception v2

    .line 476
    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 477
    :cond_5
    throw v2
.end method
