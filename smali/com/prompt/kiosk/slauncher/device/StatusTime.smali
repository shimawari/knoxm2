.class public Lcom/prompt/kiosk/slauncher/device/StatusTime;
.super Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;
.source "StatusTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/util/Calendar;
    .locals 2

    .line 53
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 4

    .line 26
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->values()[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mStatusValues:[Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/IntentFilter;

    .line 34
    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mIntentFilters:[Landroid/content/IntentFilter;

    .line 35
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mIntentFilters:[Landroid/content/IntentFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Landroid/content/BroadcastReceiver;

    .line 37
    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mBroadcastReceivers:[Landroid/content/BroadcastReceiver;

    .line 38
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mBroadcastReceivers:[Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;-><init>(Lcom/prompt/kiosk/slauncher/device/StatusTime;)V

    aput-object v1, v0, v3

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "time"

    return-object v0
.end method

.method protected updateStatusValues()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mStatusValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
