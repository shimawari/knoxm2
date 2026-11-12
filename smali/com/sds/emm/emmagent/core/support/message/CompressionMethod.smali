.class public final enum Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
.super Ljava/lang/Enum;
.source "CompressionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

.field public static final enum NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;


# instance fields
.field private final compression:B

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    const/4 v1, 0x0

    const-string v2, "NO-COMPRESSION"

    const-string v3, "NO_COMPRESSION"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->NO_COMPRESSION:Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    filled-new-array {v0}, [Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->name:Ljava/lang/String;

    iput-byte p4, p0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->compression:B

    return-void
.end method

.method public static fromByte(B)Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
    .locals 5

    .line 28
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->values()[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    .line 29
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->toByte()B

    move-result v4

    if-ne v4, p0, :cond_1

    move-object p0, v3

    :goto_1
    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toByte()B
    .locals 1

    iget-byte v0, p0, Lcom/sds/emm/emmagent/core/support/message/CompressionMethod;->compression:B

    return v0
.end method
