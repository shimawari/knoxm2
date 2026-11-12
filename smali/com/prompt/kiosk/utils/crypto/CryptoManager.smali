.class public Lcom/prompt/kiosk/utils/crypto/CryptoManager;
.super Ljava/lang/Object;
.source "CryptoManager.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "CryptoManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClientPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/prompt/kiosk/utils/crypto/CryptoManager;->classSimpleName:Ljava/lang/String;

    const-string v1, "privateKey is null"

    .line 39
    invoke-static {p0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_0
    const-class v1, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoUtils;->convertStringToPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/prompt/kiosk/utils/crypto/CryptoManager;->classSimpleName:Ljava/lang/String;

    const-string v3, "getClientPrivateKey failed"

    .line 47
    invoke-static {v2, v3, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    monitor-exit v1

    return-object v0

    .line 50
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getMessageCrypto(Lcom/prompt/kiosk/utils/crypto/CryptoObject;)Lcom/prompt/kiosk/utils/crypto/ClientCrypto;
    .locals 2

    .line 23
    new-instance v0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;

    invoke-direct {v0}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;-><init>()V

    .line 25
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    .line 26
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    .line 27
    sget-object v1, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    .line 29
    invoke-virtual {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setTenantId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setDeviceId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;->getServerPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setServerPublicKey(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;->getPrivateKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prompt/kiosk/utils/crypto/CryptoManager;->getClientPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->setPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method
