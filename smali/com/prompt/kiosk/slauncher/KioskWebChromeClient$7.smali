.class Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;
.super Ljava/lang/Object;
.source "KioskWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;->val$result:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;->val$input:Landroid/widget/EditText;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;->val$result:Landroid/webkit/JsPromptResult;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;->val$input:Landroid/widget/EditText;

    .line 204
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method
