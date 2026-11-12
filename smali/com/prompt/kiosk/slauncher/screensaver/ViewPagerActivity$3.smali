.class Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$3;
.super Ljava/lang/Object;
.source "ViewPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 230
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
