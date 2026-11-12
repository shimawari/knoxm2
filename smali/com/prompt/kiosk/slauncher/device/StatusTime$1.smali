.class Lcom/prompt/kiosk/slauncher/device/StatusTime$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/device/StatusTime;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/device/StatusTime;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/device/StatusTime;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;->this$0:Lcom/prompt/kiosk/slauncher/device/StatusTime;

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;->this$0:Lcom/prompt/kiosk/slauncher/device/StatusTime;

    .line 41
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/device/StatusTime;->mStatusValues:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;->this$0:Lcom/prompt/kiosk/slauncher/device/StatusTime;

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/device/StatusTime$1;->this$0:Lcom/prompt/kiosk/slauncher/device/StatusTime;

    .line 42
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->notifyStatus()V

    return-void
.end method
