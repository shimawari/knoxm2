.class Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$2;
.super Ljava/lang/Thread;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->runImage()V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    const-wide/16 v0, 0x1388

    .line 215
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 216
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
