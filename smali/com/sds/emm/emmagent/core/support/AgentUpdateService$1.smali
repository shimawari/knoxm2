.class Lcom/sds/emm/emmagent/core/support/AgentUpdateService$1;
.super Ljava/lang/Object;
.source "AgentUpdateService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->getUpdatableAgentInfo(I)Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sds/emm/emmagent/core/support/AgentUpdateService;


# direct methods
.method constructor <init>(Lcom/sds/emm/emmagent/core/support/AgentUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$1;->this$0:Lcom/sds/emm/emmagent/core/support/AgentUpdateService;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;)I
    .locals 0

    .line 134
    invoke-virtual {p2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getVersionCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getVersionCode()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 130
    check-cast p1, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    check-cast p2, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$1;->compare(Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;)I

    move-result p1

    return p1
.end method
