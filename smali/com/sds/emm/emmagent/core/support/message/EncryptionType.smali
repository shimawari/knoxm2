.class public final enum Lcom/sds/emm/emmagent/core/support/message/EncryptionType;
.super Ljava/lang/Enum;
.source "EncryptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/EncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum HASHING:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

.field public static final enum VERIFY:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 5
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v1, 0x0

    const-string v2, "Conversion"

    const-string v3, "CONVERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->CONVERSION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 6
    new-instance v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v2, 0x1

    const-string v3, "SymmetricEncryption"

    const-string v4, "SYMMETRIC_ENCRYPTION"

    invoke-direct {v1, v4, v2, v3}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 7
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v3, 0x2

    const-string v4, "SymmetricDecryption"

    const-string v5, "SYMMETRIC_DECRYPTION"

    invoke-direct {v2, v5, v3, v4}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 8
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v4, 0x3

    const-string v5, "AsymmetricEncryption"

    const-string v6, "ASYMMETRIC_ENCRYPTION"

    invoke-direct {v3, v6, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 9
    new-instance v4, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v5, 0x4

    const-string v6, "AsymmetricDecryption"

    const-string v7, "ASYMMETRIC_DECRYPTION"

    invoke-direct {v4, v7, v5, v6}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ASYMMETRIC_DECRYPTION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 10
    new-instance v5, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v6, 0x5

    const-string v7, "KeyPairGeneration"

    const-string v8, "KEY_PAIR_GENERATION"

    invoke-direct {v5, v8, v6, v7}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->KEY_PAIR_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 11
    new-instance v6, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v7, 0x6

    const-string v8, "SecretKeyGeneration"

    const-string v9, "SECRET_KEY_GENERATION"

    invoke-direct {v6, v9, v7, v8}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SECRET_KEY_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 12
    new-instance v7, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v8, 0x7

    const-string v9, "Hashing"

    const-string v10, "HASHING"

    invoke-direct {v7, v10, v8, v9}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HASHING:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 13
    new-instance v8, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/16 v9, 0x8

    const-string v10, "Signature"

    const-string v11, "SIGNATURE"

    invoke-direct {v8, v11, v9, v10}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->SIGNATURE:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 14
    new-instance v9, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/16 v10, 0x9

    const-string v11, "Verify"

    const-string v12, "VERIFY"

    invoke-direct {v9, v12, v10, v11}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->VERIFY:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 15
    new-instance v10, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/16 v11, 0xa

    const-string v12, "Hmac"

    const-string v13, "HMAC"

    invoke-direct {v10, v13, v11, v12}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->HMAC:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 16
    new-instance v11, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/16 v12, 0xb

    const-string v13, "PRNGGeneration"

    const-string v14, "PRNG_GENERATION"

    invoke-direct {v11, v14, v12, v13}, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->PRNG_GENERATION:Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    filled-new-array/range {v0 .. v11}, [Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/EncryptionType;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/EncryptionType;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/EncryptionType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/EncryptionType;->name:Ljava/lang/String;

    return-object v0
.end method
