.class public Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherHomeWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 42
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)I
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    return p0
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)I
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;-><init>(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    .line 102
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0005

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    return v1

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mHasPerformedLongPress:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->mPendingCheckForLongPress:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView$CheckForLongPress;

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->postCheckForLongClick()V

    :cond_3
    :goto_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 130
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    return-void
.end method
