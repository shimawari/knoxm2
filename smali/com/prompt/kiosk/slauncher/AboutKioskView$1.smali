.class Lcom/prompt/kiosk/slauncher/AboutKioskView$1;
.super Landroid/content/BroadcastReceiver;
.source "AboutKioskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AboutKioskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$1;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$1;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 80
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$000(Lcom/prompt/kiosk/slauncher/AboutKioskView;)Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;->dismissOnly()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
