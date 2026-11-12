.class final Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static prngSecureRandom:Ljava/security/SecureRandom;

.field private static rsaKeyPairSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteToPrivateKey([BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 67
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 71
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, v2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 80
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p2, :cond_2

    .line 75
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_2
    throw p0
.end method

.method static byteToPrivateKey([BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 95
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 96
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 101
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v1, v2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 115
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 110
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 105
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_3
    throw p0
.end method

.method static byteToPublicKey([BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 129
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 130
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 132
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 135
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, v2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 144
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p2, :cond_2

    .line 139
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_2
    throw p0
.end method

.method static byteToPublicKey([BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 159
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 160
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 165
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v1, v2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 179
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 174
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 169
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_3
    throw p0
.end method

.method static decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 645
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 646
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 647
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p3, :cond_0

    .line 650
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 651
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-interface {p3, p1, v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 670
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 665
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 660
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :cond_3
    throw p0

    :catch_3
    move-exception p0

    if-eqz p3, :cond_4

    .line 655
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    :cond_4
    throw p0
.end method

.method static decrypt(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
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

    .line 686
    :try_start_0
    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 687
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 688
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p4, :cond_0

    .line 691
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 692
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-interface {p4, p1, v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_1

    .line 716
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_2

    .line 711
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_3

    .line 706
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    :cond_3
    throw p0

    :catch_3
    move-exception p0

    if-eqz p4, :cond_4

    .line 701
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    :cond_4
    throw p0

    :catch_4
    move-exception p0

    if-eqz p4, :cond_5

    .line 696
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    :cond_5
    throw p0
.end method

.method static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 426
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 429
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 434
    :goto_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p4, :cond_1

    .line 437
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 438
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-interface {p4, p1, p2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_2

    .line 467
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    :cond_2
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_3

    .line 462
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    :cond_3
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_4

    .line 457
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    :cond_4
    throw p0

    :catch_3
    move-exception p0

    if-eqz p4, :cond_5

    .line 452
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    :cond_5
    throw p0

    :catch_4
    move-exception p0

    if-eqz p4, :cond_6

    .line 447
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_6
    throw p0

    :catch_5
    move-exception p0

    if-eqz p4, :cond_7

    .line 442
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    :cond_7
    throw p0
.end method

.method static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
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

    .line 484
    :try_start_0
    invoke-static {p3, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 487
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 492
    :goto_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p5, :cond_1

    .line 495
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 496
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-interface {p5, p1, p2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p5, :cond_2

    .line 530
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    :cond_2
    throw p0

    :catch_1
    move-exception p0

    if-eqz p5, :cond_3

    .line 525
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    :cond_3
    throw p0

    :catch_2
    move-exception p0

    if-eqz p5, :cond_4

    .line 520
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 522
    :cond_4
    throw p0

    :catch_3
    move-exception p0

    if-eqz p5, :cond_5

    .line 515
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    :cond_5
    throw p0

    :catch_4
    move-exception p0

    if-eqz p5, :cond_6

    .line 510
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    :cond_6
    throw p0

    :catch_5
    move-exception p0

    if-eqz p5, :cond_7

    .line 505
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :cond_7
    throw p0

    :catch_6
    move-exception p0

    if-eqz p5, :cond_8

    .line 500
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    :cond_8
    throw p0
.end method

.method static encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 545
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 547
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 549
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p3, :cond_0

    .line 552
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 553
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-interface {p3, p1, v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 577
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 572
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 567
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    :cond_3
    throw p0

    :catch_3
    move-exception p0

    if-eqz p3, :cond_4

    .line 562
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_4
    throw p0

    :catch_4
    move-exception p0

    if-eqz p3, :cond_5

    .line 557
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    :cond_5
    throw p0
.end method

.method static encrypt(Ljava/security/PublicKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
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

    .line 593
    :try_start_0
    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 595
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 597
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p4, :cond_0

    .line 600
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 601
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-interface {p4, p1, v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_1

    .line 630
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_2

    .line 625
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_3

    .line 620
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    :cond_3
    throw p0

    :catch_3
    move-exception p0

    if-eqz p4, :cond_4

    .line 615
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    :cond_4
    throw p0

    :catch_4
    move-exception p0

    if-eqz p4, :cond_5

    .line 610
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    :cond_5
    throw p0

    :catch_5
    move-exception p0

    if-eqz p4, :cond_6

    .line 605
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    :cond_6
    throw p0
.end method

.method static encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 304
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 305
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 308
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 313
    :goto_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-eqz p4, :cond_1

    .line 316
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 317
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-interface {p4, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    if-eqz p4, :cond_2

    .line 346
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    :cond_2
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_3

    .line 341
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    :cond_3
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_4

    .line 336
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    :cond_4
    throw p0

    :catch_3
    move-exception p0

    if-eqz p4, :cond_5

    .line 331
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :cond_5
    throw p0

    :catch_4
    move-exception p0

    if-eqz p4, :cond_6

    .line 326
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    :cond_6
    throw p0

    :catch_5
    move-exception p0

    if-eqz p4, :cond_7

    .line 321
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    :cond_7
    throw p0
.end method

.method static encrypt(Ljavax/crypto/SecretKey;[B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
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

    .line 363
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 364
    invoke-static {p3, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 367
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 372
    :goto_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-eqz p5, :cond_1

    .line 375
    sget-object p2, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 376
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-interface {p5, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    if-eqz p5, :cond_2

    .line 410
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    :cond_2
    throw p0

    :catch_1
    move-exception p0

    if-eqz p5, :cond_3

    .line 405
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    :cond_3
    throw p0

    :catch_2
    move-exception p0

    if-eqz p5, :cond_4

    .line 400
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :cond_4
    throw p0

    :catch_3
    move-exception p0

    if-eqz p5, :cond_5

    .line 395
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    :cond_5
    throw p0

    :catch_4
    move-exception p0

    if-eqz p5, :cond_6

    .line 390
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    :cond_6
    throw p0

    :catch_5
    move-exception p0

    if-eqz p5, :cond_7

    .line 385
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    :cond_7
    throw p0

    :catch_6
    move-exception p0

    if-eqz p5, :cond_8

    .line 380
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p5, p1, p3, p4, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    :cond_8
    throw p0
.end method

.method static generateKeyPair(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 192
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 195
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 198
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 199
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-interface {p2, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 204
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_1
    throw p0
.end method

.method static generateKeyPair(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 218
    :try_start_0
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->getSecureRandomInstance()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 221
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 224
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 225
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-interface {p3, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 234
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 229
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    :cond_2
    throw p0
.end method

.method static generatePRNG(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 794
    :try_start_0
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->getSecureRandomInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 797
    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    .line 798
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    if-eqz p2, :cond_0

    .line 801
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 802
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-interface {p2, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 806
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    :cond_1
    throw p0
.end method

.method static generatePRNG(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 820
    :try_start_0
    invoke-static {p1, p2}, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->getSecureRandomInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 823
    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    .line 824
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    if-eqz p3, :cond_0

    .line 827
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 828
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-interface {p3, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 837
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 839
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 832
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    :cond_2
    throw p0
.end method

.method static generateSecretKey(ILjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 250
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 253
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 254
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-interface {p2, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 258
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :cond_1
    throw p0
.end method

.method static generateSecretKey(ILjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-static {p1, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 275
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 278
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 279
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-interface {p3, v1, v2, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 288
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 283
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p3, v0, p1, p2, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :cond_2
    throw p0
.end method

.method private static getSecureRandomInstance()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->rsaKeyPairSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->rsaKeyPairSecureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->rsaKeyPairSecureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static getSecureRandomInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    sput-object p0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object p0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method private static getSecureRandomInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    sput-object p0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object p0, Lcom/sds/emm/emmagent/core/support/message/EncryptUtils;->prngSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static hmac([B[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 730
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 731
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 732
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 733
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    if-eqz p3, :cond_0

    .line 736
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 737
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    .line 736
    invoke-interface {p3, v0, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 746
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 741
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    :cond_2
    throw p0
.end method

.method static hmac([B[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 760
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 761
    invoke-static {p2, p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 762
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 763
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    if-eqz p4, :cond_0

    .line 766
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 767
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    .line 766
    invoke-interface {p4, v0, v1, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    if-eqz p4, :cond_1

    .line 781
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_2

    .line 776
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_3

    .line 771
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    :cond_3
    throw p0
.end method

.method static sign(Ljava/security/PrivateKey;[BLjava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 853
    :try_start_0
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 854
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 855
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 856
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    if-eqz p3, :cond_0

    .line 859
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 860
    invoke-virtual {v0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-interface {p3, p1, v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 874
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p3, :cond_2

    .line 869
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 864
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 866
    :cond_3
    throw p0
.end method

.method static sign(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 889
    :try_start_0
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    .line 890
    invoke-virtual {p3, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 891
    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 892
    invoke-virtual {p3}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    if-eqz p4, :cond_0

    .line 895
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 896
    invoke-virtual {p3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object p3

    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p3

    .line 895
    invoke-interface {p4, p1, v0, p3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_1

    .line 915
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    if-eqz p4, :cond_2

    .line 910
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    :cond_2
    throw p0

    :catch_2
    move-exception p0

    if-eqz p4, :cond_3

    .line 905
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 907
    :cond_3
    throw p0

    :catch_3
    move-exception p0

    if-eqz p4, :cond_4

    .line 900
    sget-object p1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    sget-object p3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    invoke-virtual {p3}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, p0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;->onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 902
    :cond_4
    throw p0
.end method
