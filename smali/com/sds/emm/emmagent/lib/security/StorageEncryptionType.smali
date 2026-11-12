.class public final enum Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;
.super Ljava/lang/Enum;
.source "StorageEncryptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

.field public static final enum DEVICE_MEMORY:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

.field public static final enum EXTERNAL_SD_CARD:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;
    .locals 2

    sget-object v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->DEVICE_MEMORY:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    sget-object v1, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->EXTERNAL_SD_CARD:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    filled-new-array {v0, v1}, [Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    const/4 v1, 0x0

    const-string v2, "DeviceMemory"

    const-string v3, "DEVICE_MEMORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->DEVICE_MEMORY:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    .line 9
    new-instance v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    const/4 v1, 0x1

    const-string v2, "ExternalSdCard"

    const-string v3, "EXTERNAL_SD_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->EXTERNAL_SD_CARD:Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    .line 7
    invoke-static {}, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->$values()[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->$VALUES:[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->$VALUES:[Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    .line 7
    invoke-virtual {v0}, [Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/security/StorageEncryptionType;->name:Ljava/lang/String;

    return-object v0
.end method
