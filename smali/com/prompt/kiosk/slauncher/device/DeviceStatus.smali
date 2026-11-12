.class public Lcom/prompt/kiosk/slauncher/device/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;,
        Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;,
        Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;,
        Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final STATUS_NAME_TIME:Ljava/lang/String; = "time"

.field private static TAG:Ljava/lang/String; = "DeviceStatus"

.field private static sInstance:Lcom/prompt/kiosk/slauncher/device/DeviceStatus;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

.field private mStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->NONE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mStatusMap:Ljava/util/HashMap;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->sInstance:Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->sInstance:Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    :cond_0
    sget-object p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->sInstance:Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    return-object p0
.end method


# virtual methods
.method public getLiftState()Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mStatusMap:Ljava/util/HashMap;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;

    if-nez v0, :cond_1

    const-string v1, "time"

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Lcom/prompt/kiosk/slauncher/device/StatusTime;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mStatusMap:Ljava/util/HashMap;

    .line 85
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->updateStatusValues()V

    :cond_1
    return-object v0
.end method

.method public getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;
    .locals 1

    const-string v0, "time"

    .line 74
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatus(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/device/StatusTime;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->TAG:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->PAUSE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mStatusMap:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;

    .line 63
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->unregister()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->TAG:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mLifeState:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->mStatusMap:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;

    .line 50
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->updateStatusValues()V

    .line 51
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->register()V

    .line 52
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;->notifyStatus()V

    goto :goto_0

    :cond_1
    return-void
.end method
