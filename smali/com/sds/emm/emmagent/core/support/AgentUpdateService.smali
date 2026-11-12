.class public Lcom/sds/emm/emmagent/core/support/AgentUpdateService;
.super Ljava/lang/Object;
.source "AgentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    return-void
.end method

.method public static newInstance()Lcom/sds/emm/emmagent/core/support/AgentUpdateService;
    .locals 1

    .line 95
    new-instance v0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAgentInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/AgentUpdateService;
    .locals 2

    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    .line 104
    new-instance v1, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    invoke-direct {v1, p1, p2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUpdatableAgentInfo(I)Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;
    .locals 5

    .line 110
    monitor-enter p0

    .line 113
    :try_start_0
    new-instance v0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    .line 116
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 118
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    .line 121
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getVersionCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->getVersionCode()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 123
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    .line 130
    new-instance v0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$1;

    invoke-direct {v0, p0}, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$1;-><init>(Lcom/sds/emm/emmagent/core/support/AgentUpdateService;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;

    .line 141
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
