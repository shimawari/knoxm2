.class Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$2;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->runVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 160
    invoke-static {}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCompletion restart video"

    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 161
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
