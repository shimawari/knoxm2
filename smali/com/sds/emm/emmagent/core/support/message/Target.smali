.class public final enum Lcom/sds/emm/emmagent/core/support/message/Target;
.super Ljava/lang/Enum;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/support/message/Target;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIENT:Lcom/sds/emm/emmagent/core/support/message/Target;

.field private static final synthetic ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Target;

.field public static final enum SERVER:Lcom/sds/emm/emmagent/core/support/message/Target;


# instance fields
.field providers:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/sds/emm/emmagent/core/support/message/Target;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    sget-object v3, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v4, v2}, Lcom/sds/emm/emmagent/core/support/message/Target;-><init>(Ljava/lang/String;I[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/Target;->SERVER:Lcom/sds/emm/emmagent/core/support/message/Target;

    .line 5
    new-instance v2, Lcom/sds/emm/emmagent/core/support/message/Target;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    sget-object v5, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->ANDROID_OPENSSL:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sds/emm/emmagent/core/support/message/JCEProvider;->NOT_SPECIFIED:Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    aput-object v4, v3, v1

    const-string v4, "CLIENT"

    invoke-direct {v2, v4, v1, v3}, Lcom/sds/emm/emmagent/core/support/message/Target;-><init>(Ljava/lang/String;I[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;)V

    sput-object v2, Lcom/sds/emm/emmagent/core/support/message/Target;->CLIENT:Lcom/sds/emm/emmagent/core/support/message/Target;

    filled-new-array {v0, v2}, [Lcom/sds/emm/emmagent/core/support/message/Target;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/support/message/Target;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/support/message/Target;->providers:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/Target;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/support/message/Target;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/support/message/Target;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/support/message/Target;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/support/message/Target;->ENUM$VALUES:[Lcom/sds/emm/emmagent/core/support/message/Target;

    .line 1
    array-length v1, v0

    new-array v2, v1, [Lcom/sds/emm/emmagent/core/support/message/Target;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getProviders()[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/Target;->providers:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    return-object v0
.end method

.method public setProviders([Lcom/sds/emm/emmagent/core/support/message/JCEProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/Target;->providers:[Lcom/sds/emm/emmagent/core/support/message/JCEProvider;

    return-void
.end method
