.class public final enum Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
.super Ljava/lang/Enum;
.source "EMMAgentContext.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sds/emm/emmagent/core/context/EMMAgentContext;",
        ">;",
        "Lcom/sds/emm/emmagent/core/actionentity/base/EMMEnum<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

.field public static final enum EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

.field public static final enum VISITOR:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;


# instance fields
.field private name:Ljava/lang/String;

.field private storageRoot:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
    .locals 2

    sget-object v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    sget-object v1, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->VISITOR:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    filled-new-array {v0, v1}, [Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    const-string v1, "Employee"

    const-string v2, ""

    const-string v3, "EMPLOYEE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->EMPLOYEE:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    .line 13
    new-instance v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    const/4 v1, 0x1

    const-string v2, "Visitor"

    const-string v3, "VISITOR"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->VISITOR:Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    .line 11
    invoke-static {}, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->$values()[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    move-result-object v0

    sput-object v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->$VALUES:[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->storageRoot:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
    .locals 1

    const-class v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    return-object p0
.end method

.method public static values()[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->$VALUES:[Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    .line 11
    invoke-virtual {v0}, [Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sds/emm/emmagent/core/context/EMMAgentContext;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/context/EMMAgentContext;->storageRoot:Ljava/lang/String;

    return-object v0
.end method
