.class public Lcom/prompt/kiosk/slauncher/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;,
        Lcom/prompt/kiosk/slauncher/DeferredHandler$IdleRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 35
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 36
    new-instance v0, Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;-><init>(Lcom/prompt/kiosk/slauncher/DeferredHandler;Lcom/prompt/kiosk/slauncher/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/DeferredHandler;)Ljava/util/LinkedList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 96
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 97
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 90
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 91
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 76
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 77
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 78
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->scheduleNextLocked()V

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/prompt/kiosk/slauncher/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/DeferredHandler$IdleRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method scheduleNextLocked()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 102
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 103
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 104
    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/DeferredHandler$IdleRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DeferredHandler;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
