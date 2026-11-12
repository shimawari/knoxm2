.class public Lcom/prompt/kiosk/slauncher/EmmConnection;
.super Ljava/lang/Object;
.source "EmmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/EmmConnection$Config;,
        Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;,
        Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;,
        Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;,
        Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;,
        Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;
    }
.end annotation


# static fields
.field private static final NETWORK_TIME_OUT:I = 0x5dc0

.field private static final TAG:Ljava/lang/String; = "EmmConnection"

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

.field private mHostHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmmConnection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->sWorkerThread:Landroid/os/HandlerThread;

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/prompt/kiosk/slauncher/EmmConnection;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection$Config;Landroid/os/Handler;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection$Config;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mHostHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->encrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->makeHttpRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/EmmConnection;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mHostHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/EmmConnection;)Lorg/json/JSONObject;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->composeEmmHeader()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection;->composeCommand(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 321
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    const-string v1, "IOException closing stream"

    .line 324
    invoke-static {v0, v1, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private composeCommand(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Code"

    .line 250
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private composeEmmHeader()Lorg/json/JSONObject;
    .locals 4

    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "Version"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 235
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "TenantId"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 236
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "DeviceId"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 237
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "SenderName"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 238
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->senderName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "RequestId"

    .line 239
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Platform"

    const-string v2, "A"

    .line 240
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 165
    new-instance v0, Lcom/prompt/kiosk/utils/crypto/CryptoObject;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->serverPublicKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v4, v4, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/prompt/kiosk/utils/crypto/CryptoManager;->getMessageCrypto(Lcom/prompt/kiosk/utils/crypto/CryptoObject;)Lcom/prompt/kiosk/utils/crypto/ClientCrypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/utils/crypto/ClientCrypto;->decrypt(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/message/MessageData;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->aesKey:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    .line 207
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 210
    :try_start_0
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 211
    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 212
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    new-instance p2, Lcom/prompt/kiosk/utils/crypto/CryptoObject;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->serverPublicKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/prompt/kiosk/utils/crypto/CryptoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p2}, Lcom/prompt/kiosk/utils/crypto/CryptoManager;->getMessageCrypto(Lcom/prompt/kiosk/utils/crypto/CryptoObject;)Lcom/prompt/kiosk/utils/crypto/ClientCrypto;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/utils/crypto/ClientCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->aesKey:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 185
    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 199
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private static getAndClose(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 374
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->close(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->close(Ljava/io/Closeable;)V

    .line 376
    :cond_1
    throw v0
.end method

.method private getHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6

    const-string v0, "EMM getHttpResponse failed : "

    .line 337
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 338
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->getAndClose(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    const-string v2, "EMM getHttpResponse HTTP OK"

    .line 339
    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EmmConnection;->getAndClose(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    sget-object v1, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encryption : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Encryption"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "KioskEncVersion : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KioskEncVersion"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EMM decrypted response : "

    if-eqz v2, :cond_1

    .line 354
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 359
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM getHttpResponse IOException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected static getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 385
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v1, :cond_1

    .line 394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 396
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 398
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeHttpRequest(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "UnknownHostException make http request : "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 263
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->hostUrl:Ljava/lang/String;

    invoke-direct {p0, v2, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->post(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :try_start_1
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection;->getHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 271
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p1, v1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    const-string v2, "IOException make http request : "

    .line 268
    invoke-static {v0, v2, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :catch_3
    move-exception p2

    move-object p1, v1

    :goto_2
    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :goto_3
    return-object v1

    :catchall_1
    move-exception p2

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_1
    throw p2
.end method

.method private post(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM request URI : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 289
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 290
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 292
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 294
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v0, "POST"

    .line 295
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x5dc0

    .line 297
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 298
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    .line 300
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p3, "KioskEncVersion"

    const-string v0, "1"

    .line 303
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "Encryption"

    const-string v0, "AES"

    .line 305
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Compression"

    const-string v0, "None"

    .line 306
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 311
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {p3}, Lcom/prompt/kiosk/slauncher/EmmConnection;->close(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lcom/prompt/kiosk/slauncher/EmmConnection;->close(Ljava/io/Closeable;)V

    .line 314
    throw p1

    .line 284
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "arguments cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->sWorkerThread:Landroid/os/HandlerThread;

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmConnection;->sWorker:Landroid/os/Handler;

    .line 60
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/util/Collection;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;",
            ")V"
        }
    .end annotation

    .line 557
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;

    invoke-direct {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/util/Collection;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;)V

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestAppInstall(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V
    .locals 2

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request App Install. appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->debug(Ljava/lang/String;I)V

    .line 695
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

    invoke-direct {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePrivateKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection;->mConfig:Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    .line 143
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->setClientPrivateKey(Ljava/lang/String;)V

    sget-object p1, Lcom/prompt/kiosk/slauncher/EmmConnection;->TAG:Ljava/lang/String;

    const-string v0, "Private Key successfully updated."

    .line 144
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
