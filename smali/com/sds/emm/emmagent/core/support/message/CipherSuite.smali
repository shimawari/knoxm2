.class public final enum Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field public static final enum CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field public static final enum CIPHER_SUITE_RSA_WITH_AES_256_ECB_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;


# instance fields
.field private final name:Ljava/lang/String;

.field private final suite:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/16 v3, 0x3d

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const-string v3, "CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256"

    const/4 v5, 0x0

    const-string v6, "RSA-WITH-AES256-CBC-SHA256"

    .line 9
    invoke-direct {v0, v3, v5, v6, v2}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_CBC_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    .line 10
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    new-array v3, v1, [B

    aput-byte v4, v3, v4

    const-string v5, "CIPHER_SUITE_RSA_WITH_AES_256_ECB_SHA256"

    const-string v6, "RSA-WITH-AES256-ECB-SHA256"

    invoke-direct {v2, v5, v4, v6, v3}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_RSA_WITH_AES_256_ECB_SHA256:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    .line 11
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    const-string v4, "NO-ENCRYPTION"

    new-array v5, v1, [B

    const-string v6, "CIPHER_SUITE_NO_ENCRYPTION"

    invoke-direct {v3, v6, v1, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    sput-object v3, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->CIPHER_SUITE_NO_ENCRYPTION:Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    filled-new-array {v0, v2, v3}, [Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->suite:[B

    return-void
.end method

.method public static fromByteArray([B)Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    .locals 5

    if-eqz p0, :cond_2

    .line 32
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 33
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->values()[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    .line 34
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/CipherSuite;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/CipherSuite;->suite:[B

    return-object v0
.end method
