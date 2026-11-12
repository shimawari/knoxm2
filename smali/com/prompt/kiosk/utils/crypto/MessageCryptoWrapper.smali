.class public Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;
.super Lcom/prompt/kiosk/utils/crypto/ClientCrypto;
.source "MessageCryptoWrapper.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "MessageCryptoWrapper"


# instance fields
.field private mCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field private mCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

.field private mDeviceId:Ljava/lang/String;

.field private mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

.field private mPrivateKey:Ljava/security/PrivateKey;

.field private mProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

.field private mServerPublicKeyString:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/prompt/kiosk/utils/crypto/ClientCrypto;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mTenantId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mServerPublicKeyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->classSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method private checkMessageFactory()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Target;->CLIENT:Lcom/sds/emm/emmagent/core/support/message/Target;

    new-instance v1, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper$1;-><init>(Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;)V

    invoke-static {v0, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getInstance(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 96
    invoke-virtual {v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 100
    invoke-virtual {v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 104
    invoke-virtual {v1, v0}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->setCurrentCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .locals 3

    const-class v0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;

    .line 62
    monitor-enter v0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->checkMessageFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    iget-object v2, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mPrivateKey:Ljava/security/PrivateKey;

    .line 66
    invoke-virtual {v1, p1, v2}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->analyzeMessage(Ljava/lang/String;Ljava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object p1
    :try_end_1
    .catch Lcom/sds/emm/emmagent/core/support/message/AlertException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v1, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->classSimpleName:Ljava/lang/String;

    const-string v2, "decrypt failed."

    .line 68
    invoke-static {v1, v2, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;

    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->checkMessageFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mServerPublicKeyString:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "RSA"

    iget-object v3, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 44
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getProviderList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 45
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->getLog()Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;

    move-result-object v4

    .line 41
    invoke-static {v1, v2, v3, v4}, Lcom/sds/emm/emmagent/core/support/message/EncryptBuilder;->byteToPublicKey([BLjava/lang/String;Ljava/util/List;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)Ljava/security/PublicKey;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mFactory:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    iget-object v3, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mTenantId:Ljava/lang/String;

    iget-object v4, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mDeviceId:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v1, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->classSimpleName:Ljava/lang/String;

    const-string v2, "encrypt failed."

    .line 53
    invoke-static {v1, v2, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setCipherSuite(Lcom/sds/emm/emmagent/core/support/message/CipherSuite;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCipherSuite:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-void
.end method

.method public setCompressionMethod(Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mCompressionMethod:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setProtocolVersion(Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mProtocolVersion:Lcom/sds/emm/emmagent/core/support/message/ProtocolVersion;

    return-void
.end method

.method public setServerPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mServerPublicKeyString:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->mTenantId:Ljava/lang/String;

    return-void
.end method
