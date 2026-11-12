.class Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;
.super Landroid/os/Handler;
.source "KioskWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x325

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 59
    invoke-static {}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->access$000()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 61
    invoke-static {}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HANDLER_MSG_PROGRESS!!!! mLastProgress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", brforeProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    .line 62
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->access$200(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    .line 64
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
