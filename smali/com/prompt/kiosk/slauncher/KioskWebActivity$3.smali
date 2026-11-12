.class Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;
.super Ljava/lang/Object;
.source "KioskWebActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 91
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->access$100(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Lcom/prompt/kiosk/slauncher/KioskWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 92
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->access$000(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 94
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->access$000(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method
