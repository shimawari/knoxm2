.class public final enum Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
.super Ljava/lang/Enum;
.source "RemoteMessageVersion.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;",
        ">;",
        "Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

.field public static final enum VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    filled-new-array {v0}, [Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "VERSION_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->VERSION_1:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    .line 5
    invoke-static {}, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->$values()[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->$VALUES:[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->$VALUES:[Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    .line 5
    invoke-virtual {v0}, [Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->name:Ljava/lang/String;

    return-object v0
.end method
