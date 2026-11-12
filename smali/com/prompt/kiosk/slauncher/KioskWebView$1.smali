.class Lcom/prompt/kiosk/slauncher/KioskWebView$1;
.super Ljava/lang/Object;
.source "KioskWebView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebView;->setupContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 72
    instance-of p3, p2, Landroid/webkit/WebView;

    if-eqz p3, :cond_1

    .line 73
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_1

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 82
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 83
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTION_BROWSER_OPEN"

    invoke-static {v3, v5, v2, p3, v4}, Lcom/prompt/kiosk/slauncher/KioskWebView;->access$000(Lcom/prompt/kiosk/slauncher/KioskWebView;Ljava/lang/String;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 84
    invoke-static {v2, v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->access$100(Lcom/prompt/kiosk/slauncher/KioskWebView;Landroid/view/MenuItem;)V

    const v0, 0x7f0c0039

    const/16 v2, 0xc

    .line 86
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 87
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, p3, v3}, Lcom/prompt/kiosk/slauncher/KioskWebView;->access$000(Lcom/prompt/kiosk/slauncher/KioskWebView;Ljava/lang/String;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 88
    invoke-static {p3, v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->access$100(Lcom/prompt/kiosk/slauncher/KioskWebView;Landroid/view/MenuItem;)V

    .line 89
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_1
    :goto_0
    return-void
.end method
