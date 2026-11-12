.class public final Lcom/sds/emm/emmagent/lib/AgentUpdateManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "AgentUpdateManager.java"


# static fields
.field private static instance:Lcom/sds/emm/emmagent/lib/AgentUpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/AgentUpdateManager;
    .locals 2

    const-class v0, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    .line 68
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;->instance:Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    invoke-direct {v1}, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;-><init>()V

    sput-object v1, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;->instance:Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    .line 72
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sds/emm/emmagent/lib/AgentUpdateManager;->instance:Lcom/sds/emm/emmagent/lib/AgentUpdateManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public requestCheckUpdate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public requestUpdateAgent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
