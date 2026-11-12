.class Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherHomeWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 92
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->access$200(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 82
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 83
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->access$000(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 84
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->access$100(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    .line 85
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->this$0:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    const/4 v1, 0x1

    .line 86
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->access$102(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;Z)Z

    :cond_0
    return-void
.end method
