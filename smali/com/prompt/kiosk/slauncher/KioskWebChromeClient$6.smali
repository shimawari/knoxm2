.class Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;
.super Ljava/lang/Object;
.source "KioskWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;->val$result:Landroid/webkit/JsResult;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 165
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p2, p3, :cond_0

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;->val$result:Landroid/webkit/JsResult;

    .line 167
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
