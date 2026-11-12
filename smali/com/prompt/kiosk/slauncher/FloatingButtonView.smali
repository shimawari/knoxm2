.class public Lcom/prompt/kiosk/slauncher/FloatingButtonView;
.super Landroid/widget/LinearLayout;
.source "FloatingButtonView.java"


# static fields
.field public static final BUTTON_VIEW_TIME_DELAY:J = 0x1f40L

.field public static changing:Z = false

.field private static final className:Ljava/lang/String; = "FloatingButtonView"

.field public static isAlive:Z

.field private static mTimer:Ljava/util/Timer;

.field private static screenHeight:I

.field private static screenWidth:I

.field private static viewWidth:I

.field private static xDownInScreen:F

.field private static xInScreen:F

.field private static xInView:F

.field private static yDownInScreen:F

.field private static yInScreen:F

.field private static yInView:F


# instance fields
.field private changeOrientationReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p2, Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView$1;-><init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->checkScreenSize()V

    .line 84
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->initLayoutParams()V

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0009

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    sput-object p1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->viewWidth:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->updateViewPosition()V

    return-void
.end method

.method private getNavigationBarHeight()F
    .locals 1

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 190
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    return v0
.end method

.method private getStatusBarHeight()F
    .locals 1

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 196
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    return v0
.end method

.method private initLayoutParams()V
    .locals 7

    .line 122
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f6

    .line 130
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    .line 131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    .line 132
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    .line 133
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    .line 134
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0d0009

    .line 135
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method private updateViewPosition()V
    .locals 2

    .line 201
    invoke-static {}, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->newInstance()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 202
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method cancelFloatingButtonTimer()V
    .locals 2

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->className:Ljava/lang/String;

    const-string v1, "cancelButtonTransparent"

    .line 244
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->timerTask:Ljava/util/TimerTask;

    .line 245
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->timerTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changing:Z

    :cond_0
    return-void
.end method

.method checkScreenSize()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    .line 97
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    .line 98
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->resetScreenSize()V

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 74
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getWidth()I

    move-result p1

    sput p1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->viewWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getNavigationBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInScreen:F

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getStatusBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInScreen:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInScreen:F

    sget v2, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 161
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInScreen:F

    sget v2, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 162
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->updateViewPosition()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInScreen:F

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xDownInScreen:F

    sub-float/2addr v0, v1

    .line 168
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInScreen:F

    sget v2, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yDownInScreen:F

    sub-float/2addr v1, v2

    .line 169
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    cmpg-float v0, v1, v2

    if-gez v0, :cond_2

    .line 174
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->showAboutKioskDialog()V

    .line 175
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButton()V

    .line 176
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->startViewPositionAnimator()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->startViewPositionAnimator()V

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInView:F

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInView:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getNavigationBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xDownInScreen:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getStatusBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yDownInScreen:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getNavigationBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->xInScreen:F

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getStatusBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->yInScreen:F

    .line 154
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->cancelFloatingButtonTimer()V

    .line 184
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method resetScreenSize()V
    .locals 4

    sget v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    sget v2, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sput v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    goto :goto_0

    :cond_1
    sput v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenHeight:I

    sput v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->screenWidth:I

    :cond_2
    :goto_0
    return-void
.end method

.method setFloatingButtonTimer()V
    .locals 4

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changing:Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->className:Ljava/lang/String;

    const-string v1, "makeButtonTransparent"

    .line 230
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$3;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView$3;-><init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->timerTask:Ljava/util/TimerTask;

    sget-object v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1f40

    .line 238
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public startViewPositionAnimator()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 208
    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;-><init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 223
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setFloatingButtonTimer()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
