.class Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 151
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 152
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
