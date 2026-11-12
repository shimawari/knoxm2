.class Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;
.super Landroid/content/BroadcastReceiver;
.source "FloatingButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FloatingButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 54
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->resetScreenSize()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 55
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->startViewPositionAnimator()V

    :cond_0
    return-void
.end method
