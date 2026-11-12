.class Lcom/prompt/kiosk/slauncher/DigitalClock$2;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 404
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "homeWidgetId"

    const/4 v0, -0x1

    .line 409
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 410
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->access$200(Lcom/prompt/kiosk/slauncher/DigitalClock;)I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 411
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->access$200(Lcom/prompt/kiosk/slauncher/DigitalClock;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->onApplyThemeResource(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method
