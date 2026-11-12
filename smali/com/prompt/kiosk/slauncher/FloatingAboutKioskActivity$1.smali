.class Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FloatingAboutKioskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButton()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;

    .line 32
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->access$000(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;

    .line 33
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->access$100(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V

    :cond_0
    return-void
.end method
