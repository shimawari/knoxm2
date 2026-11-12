.class Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;
.super Ljava/lang/Object;
.source "KioskWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;->val$result:Landroid/webkit/JsResult;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;->val$result:Landroid/webkit/JsResult;

    .line 158
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
