.class public final Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;
.super Ljava/lang/Object;
.source "HexUtils.java"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;->DIGITS_LOWER:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7

    .line 54
    array-length v0, p0

    shr-int/lit8 v1, v0, 0x1

    .line 56
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    aget-char v4, p0, v2

    invoke-static {v4, v2}, Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 62
    aget-char v6, p0, v5

    invoke-static {v6, v5}, Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 64
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static encodeHex([B)[C
    .locals 8

    sget-object v0, Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;->DIGITS_LOWER:[C

    .line 29
    array-length v1, p0

    shl-int/lit8 v2, v1, 0x1

    .line 30
    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 33
    aget-byte v6, p0, v3

    and-int/lit16 v7, v6, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v0, v7

    aput-char v7, v2, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v6, v6, 0xf

    .line 34
    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static encodeHex([Ljava/lang/Byte;)[C
    .locals 7

    sget-object v0, Lcom/sds/emm/emmagent/core/support/apache/codec/HexUtils;->DIGITS_LOWER:[C

    .line 42
    array-length v1, p0

    shl-int/lit8 v2, v1, 0x1

    .line 43
    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 46
    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v4, 0x2

    .line 47
    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static toDigit(CI)I
    .locals 0

    const/16 p1, 0x10

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    return p0
.end method
