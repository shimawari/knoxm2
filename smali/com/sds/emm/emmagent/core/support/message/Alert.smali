.class public final enum Lcom/sds/emm/emmagent/core/support/message/Alert;
.super Ljava/lang/Enum;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/Alert;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DECOMPRESSION_FAILURE:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum DECRYPT_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum HANDSHAKE_FAILURE:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum ILLEGAL_PARAMETERS:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field public static final enum PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;


# instance fields
.field private final alert:B

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v1, "DecryptionFailed"

    const/16 v2, 0x15

    const-string v3, "DECRYPTION_FAILED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPTION_FAILED:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 6
    new-instance v1, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v2, "DecompressionFailure"

    const/16 v3, 0x1e

    const-string v4, "DECOMPRESSION_FAILURE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECOMPRESSION_FAILURE:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 7
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v3, "HandshakeFailure"

    const/16 v4, 0x28

    const-string v5, "HANDSHAKE_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/Alert;->HANDSHAKE_FAILURE:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 8
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v4, "IllegalParameters"

    const/16 v5, 0x2f

    const-string v6, "ILLEGAL_PARAMETERS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v3, Lcom/sds/emm/emmagent/core/support/message/Alert;->ILLEGAL_PARAMETERS:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 9
    new-instance v4, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v5, "DecryptError"

    const/16 v6, 0x33

    const-string v7, "DECRYPT_ERROR"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v4, Lcom/sds/emm/emmagent/core/support/message/Alert;->DECRYPT_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 10
    new-instance v5, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v6, "ProtocolVersion"

    const/16 v7, 0x46

    const-string v8, "PROTOCOL_VERSION"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v5, Lcom/sds/emm/emmagent/core/support/message/Alert;->PROTOCOL_VERSION:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 11
    new-instance v6, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v7, "InsufficientSecurity"

    const/16 v8, 0x47

    const-string v9, "INSUFFICIENT_SECURITY"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v6, Lcom/sds/emm/emmagent/core/support/message/Alert;->INSUFFICIENT_SECURITY:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 12
    new-instance v7, Lcom/sds/emm/emmagent/core/support/message/Alert;

    const-string v8, "InternalError"

    const/16 v9, 0x50

    const-string v10, "INTERNAL_ERROR"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/sds/emm/emmagent/core/support/message/Alert;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v7, Lcom/sds/emm/emmagent/core/support/message/Alert;->INTERNAL_ERROR:Lcom/sds/emm/emmagent/core/support/message/Alert;

    filled-new-array/range {v0 .. v7}, [Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/Alert;->name:Ljava/lang/String;

    iput-byte p4, p0, Lcom/sds/emm/emmagent/core/support/message/Alert;->alert:B

    return-void
.end method

.method public static fromByte(B)Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 5

    .line 34
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/Alert;->values()[Lcom/sds/emm/emmagent/core/support/message/Alert;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    .line 35
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/Alert;->toByte()B

    move-result v4

    if-ne v4, p0, :cond_1

    move-object p0, v3

    :goto_1
    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Alert;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/Alert;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/Alert;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toByte()B
    .locals 1

    iget-byte v0, p0, Lcom/sds/emm/emmagent/core/support/message/Alert;->alert:B

    return v0
.end method
