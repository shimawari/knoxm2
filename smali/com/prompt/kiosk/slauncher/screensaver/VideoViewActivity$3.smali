.class Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$3;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 168
    invoke-static {}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTouch"

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    .line 169
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
