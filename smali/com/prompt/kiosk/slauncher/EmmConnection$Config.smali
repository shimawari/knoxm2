.class Lcom/prompt/kiosk/slauncher/EmmConnection$Config;
.super Ljava/lang/Object;
.source "EmmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field aesKey:[B

.field clientPrivateKey:Ljava/lang/String;

.field deviceId:Ljava/lang/String;

.field hostUrl:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field serverPublicKey:Ljava/lang/String;

.field tenantId:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection$Config;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->hostUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->hostUrl:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->version:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->senderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->senderName:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->serverPublicKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->serverPublicKey:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    .line 114
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->aesKey:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->aesKey:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->hostUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->tenantId:Ljava/lang/String;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->deviceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->senderName:Ljava/lang/String;

    iput-object p6, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->serverPublicKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p6}, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->parseAesKey(Ljava/lang/String;)V

    return-void
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 75
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 81
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseAesKey(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->aesKey:[B

    return-void
.end method


# virtual methods
.method public setClientPrivateKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;->clientPrivateKey:Ljava/lang/String;

    return-void
.end method
