.class public abstract Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/device/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsStatus"
.end annotation


# instance fields
.field protected mBroadcastReceivers:[Landroid/content/BroadcastReceiver;

.field protected mContentObserver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mIntentFilters:[Landroid/content/IntentFilter;

.field protected mReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegistered:Z

.field protected mStatusValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->initialize()V

    return-void
.end method


# virtual methods
.method public addStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addStatusReceiver "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getLiftState()Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    move-result-object p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->register()V

    :cond_2
    return-void
.end method

.method protected abstract initialize()V
.end method

.method public notifyStatus()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mStatusValues:[Ljava/lang/Object;

    .line 172
    invoke-interface {v1, p0, v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;->onReceive(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public register()V
    .locals 7

    .line 110
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 112
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pass register, receiver=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mBroadcastReceivers:[Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mIntentFilters:[Landroid/content/IntentFilter;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 119
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 121
    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContentObserver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;->registerContentObserver(Landroid/content/ContentResolver;)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    return-void
.end method

.method public removeStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeStatusReceiver "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mReceivers:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->unregister()V

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 7

    .line 133
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mBroadcastReceivers:[Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mIntentFilters:[Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 138
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 140
    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    aget-object v6, v2, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v6, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContentObserver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;->unregisterContentObserver(Landroid/content/ContentResolver;)V

    :cond_3
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->mRegistered:Z

    return-void
.end method

.method protected abstract updateStatusValues()V
.end method
