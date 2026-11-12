.class public final enum Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;
.super Ljava/lang/Enum;
.source "PolicyLevel.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;",
        ">;",
        "Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

.field public static final enum CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

.field public static final enum INITIAL:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

.field public static final enum PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

.field public static final enum TRIGGER:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;
    .locals 4

    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->INITIAL:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    sget-object v1, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    sget-object v2, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->TRIGGER:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    sget-object v3, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    const/4 v1, 0x0

    const-string v2, "Initial"

    const-string v3, "INITIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->INITIAL:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 14
    new-instance v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    const/4 v1, 0x1

    const-string v2, "Profile"

    const-string v3, "PROFILE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->PROFILE:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 15
    new-instance v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    const/4 v1, 0x2

    const-string v2, "Trigger"

    const-string v3, "TRIGGER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->TRIGGER:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 16
    new-instance v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    const/4 v1, 0x3

    const-string v2, "Current"

    const-string v3, "CURRENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->CURRENT:Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 12
    invoke-static {}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->$values()[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->$VALUES:[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->$VALUES:[Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    .line 12
    invoke-virtual {v0}, [Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/profile/general/policy/PolicyLevel;->getValue()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
