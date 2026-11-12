.class Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;
.super Landroid/os/Handler;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 252
    invoke-static {}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x3138e

    if-ne p1, v0, :cond_1

    .line 255
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getScreensaverContentType()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screensaverContentType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Image"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 258
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->access$100(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V

    goto :goto_0

    :cond_0
    const-string v0, "Video"

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 260
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
