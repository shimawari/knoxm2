.class public final enum Lcom/sds/emm/emmagent/core/support/message/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field public static final enum CHANGE_SPEC_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field public static final enum CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field public static final enum RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

.field public static final enum RECORD_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const-string v1, "CHANGE_SPEC_REQUEST"

    const/4 v2, 0x0

    const-string v3, "ChangeSpecRequest"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sds/emm/emmagent/core/support/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 6
    new-instance v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const-string v2, "CHANGE_SPEC_RESPONSE"

    const-string v3, "ChangeSpecResponse"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/sds/emm/emmagent/core/support/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/message/MessageType;->CHANGE_SPEC_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 7
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const-string v3, "RECORD_REQUEST"

    const-string v4, "RecordRequest"

    const/4 v6, 0x3

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/sds/emm/emmagent/core/support/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_REQUEST:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 8
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const-string v4, "RECORD_RESPONSE"

    const-string v5, "RecordResponse"

    const/4 v7, 0x4

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/sds/emm/emmagent/core/support/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v3, Lcom/sds/emm/emmagent/core/support/message/MessageType;->RECORD_RESPONSE:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 9
    new-instance v4, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const-string v5, "Alert"

    const/4 v6, 0x5

    const-string v8, "ALERT"

    invoke-direct {v4, v8, v7, v5, v6}, Lcom/sds/emm/emmagent/core/support/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v4, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ALERT:Lcom/sds/emm/emmagent/core/support/message/MessageType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->name:Ljava/lang/String;

    iput-byte p4, p0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->type:B

    return-void
.end method

.method public static fromByte(B)Lcom/sds/emm/emmagent/core/support/message/MessageType;
    .locals 5

    .line 31
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/MessageType;->values()[Lcom/sds/emm/emmagent/core/support/message/MessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/core/support/message/MessageType;->toByte()B

    move-result v4

    if-ne v4, p0, :cond_1

    move-object p0, v3

    :goto_1
    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageType;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/MessageType;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/MessageType;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/MessageType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toByte()B
    .locals 1

    iget-byte v0, p0, Lcom/sds/emm/emmagent/core/support/message/MessageType;->type:B

    return v0
.end method
