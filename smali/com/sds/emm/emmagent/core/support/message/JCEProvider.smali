.class public final enum Lcom/sds/emm/emmagent/core/support/message/JCEProvider;
.super Ljava/lang/Enum;
.source "JCEProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANDROID_OPENSSL:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

.field public static final enum BOUNCE_CASTLE:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

.field public static final enum JSAFE:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

.field public static final enum NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v1, 0x0

    const-string v2, "JsafeJCE"

    const-string v3, "JSAFE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->JSAFE:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 8
    new-instance v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v2, 0x1

    const-string v3, "AndroidOpenSSL"

    const-string v4, "ANDROID_OPENSSL"

    invoke-direct {v1, v4, v2, v3}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->ANDROID_OPENSSL:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 9
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v3, 0x2

    const-string v4, "BC"

    const-string v5, "BOUNCE_CASTLE"

    invoke-direct {v2, v5, v3, v4}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->BOUNCE_CASTLE:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 10
    new-instance v3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v4, 0x3

    const-string v5, "NotSpecified"

    const-string v6, "NOT_SPECIFIED"

    invoke-direct {v3, v6, v4, v5}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->name:Ljava/lang/String;

    return-void
.end method

.method public static asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/message/JCEProvider;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->values()[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/JCEProvider;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->name:Ljava/lang/String;

    return-object v0
.end method
