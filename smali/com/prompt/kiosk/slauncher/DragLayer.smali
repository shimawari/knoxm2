.class public Lcom/prompt/kiosk/slauncher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_FADE_OUT:I = 0x1

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragController:Lcom/prompt/kiosk/slauncher/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Landroid/view/View;

.field private mDropViewPos:[I

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mTmpXY:[I

.field private final mUserAnimationViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspaceIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mTmpXY:[I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 61
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorViewInitialScrollX:I

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorView:Landroid/view/View;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropViewPos:[I

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mWorkspaceIndex:I

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->setMotionEventSplittingEnabled(Z)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/DragLayer;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/prompt/kiosk/slauncher/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/DragLayer;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/DragLayer;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorViewInitialScrollX:I

    return p0
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/DragLayer;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/DragLayer;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropViewPos:[I

    return-object p0
.end method

.method private fadeOutDragView()V
    .locals 3

    .line 619
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 620
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 621
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 622
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 623
    new-instance v1, Lcom/prompt/kiosk/slauncher/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/DragLayer$4;-><init>(Lcom/prompt/kiosk/slauncher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 631
    new-instance v1, Lcom/prompt/kiosk/slauncher/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/DragLayer$5;-><init>(Lcom/prompt/kiosk/slauncher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 636
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 2

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 134
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 137
    invoke-direct {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->isEventOverFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 138
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isEventOverFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendTapOutsideFolderAccessibilityEvent()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 197
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 199
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mContext:Landroid/content/Context;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private updateChildIndices()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mWorkspaceIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addUserAnimationView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 676
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 681
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 683
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 684
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 686
    new-instance v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {v0, v2, p1}, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 687
    iput-boolean p1, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->customPosition:Z

    .line 688
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 690
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public animateView(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    .line 549
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/DragView;

    if-eqz v0, :cond_2

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragView;->cancelAnimation()V

    .line 551
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragView;->resetLayoutParams()V

    :cond_2
    if-eqz p7, :cond_3

    .line 556
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorViewInitialScrollX:I

    :cond_3
    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mAnchorView:Landroid/view/View;

    .line 561
    new-instance p7, Landroid/animation/ValueAnimator;

    invoke-direct {p7}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 562
    invoke-virtual {p7, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v0, p3

    .line 563
    invoke-virtual {p4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 p4, 0x2

    new-array p4, p4, [F

    fill-array-data p4, :array_0

    .line 564
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 565
    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 566
    new-instance p3, Lcom/prompt/kiosk/slauncher/DragLayer$3;

    invoke-direct {p3, p0, p5, p6, p1}, Lcom/prompt/kiosk/slauncher/DragLayer$3;-><init>(Lcom/prompt/kiosk/slauncher/DragLayer;Ljava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 584
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 478
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 479
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 478
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p9, :cond_1

    const v3, 0x7f0a0004

    .line 485
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    int-to-float v3, v3

    iget-object v4, v14, Lcom/prompt/kiosk/slauncher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    .line 487
    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    :cond_0
    const v0, 0x7f0a0005

    .line 489
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    if-eqz p11, :cond_3

    if-nez p10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, v14, Lcom/prompt/kiosk/slauncher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    :goto_2
    move-object/from16 v16, v0

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 501
    new-instance v17, Lcom/prompt/kiosk/slauncher/DragLayer$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/prompt/kiosk/slauncher/DragLayer$2;-><init>(Lcom/prompt/kiosk/slauncher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v17

    move/from16 p5, v15

    move-object/from16 p6, v16

    move-object/from16 p7, p12

    move/from16 p8, p13

    move-object/from16 p9, p14

    .line 536
    invoke-virtual/range {p2 .. p9}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateView(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 443
    new-instance v4, Landroid/graphics/Rect;

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    .line 446
    invoke-virtual/range {v0 .. v14}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 382
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v3, p1

    .line 383
    invoke-virtual {v15, v3, v2}, Lcom/prompt/kiosk/slauncher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 386
    iget v4, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 387
    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    filled-new-array {v4, v1}, [I

    move-result-object v1

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v15, v4, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v4

    const/4 v5, 0x0

    .line 391
    aget v5, v1, v5

    const/4 v6, 0x1

    .line 392
    aget v1, v1, v6

    .line 393
    instance-of v7, v0, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 394
    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 395
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aget-object v6, v8, v6

    .line 398
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v1, v7

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v1, v7

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    .line 403
    invoke-static {v6}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getScale(Landroid/graphics/drawable/Drawable;)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getSourceIconScale()F

    move-result v7

    :goto_0
    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    :goto_1
    move v10, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_3

    .line 404
    :cond_0
    instance-of v6, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz v6, :cond_2

    .line 405
    instance-of v6, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v6, :cond_1

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getHeight()I

    move-result v6

    move-object v7, v0

    check-cast v7, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 407
    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 410
    move-object v6, v0

    check-cast v6, Lcom/prompt/kiosk/slauncher/FolderIcon;

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getMeasuredPreviewScale()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getSourceIconScale()F

    move-result v7

    goto :goto_0

    .line 413
    :cond_1
    sget v6, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 418
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v6

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    .line 419
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    :goto_2
    sub-int/2addr v5, v6

    goto :goto_1

    .line 423
    :goto_3
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 424
    iget v7, v2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x4

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    new-instance v11, Lcom/prompt/kiosk/slauncher/DragLayer$1;

    move-object/from16 v1, p4

    invoke-direct {v11, v15, v0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer$1;-><init>(Lcom/prompt/kiosk/slauncher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move v6, v8

    move v7, v9

    move v8, v12

    move v9, v10

    move v12, v13

    move/from16 v13, p3

    move-object/from16 v14, p5

    .line 435
    invoke-virtual/range {v0 .. v14}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 374
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    .line 364
    invoke-virtual {v15, v2, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 366
    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    .line 368
    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    move-object v15, v0

    invoke-virtual/range {v1 .. v15}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public clearAllUserAnimationViews()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 703
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 704
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearAnimatedView()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 608
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/DragController;->onDeferredEndDrag(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    .line 611
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->invalidate()V

    return-void
.end method

.method public clearUserAnimationView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 696
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mUserAnimationViews:Ljava/util/ArrayList;

    .line 698
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 100
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 294
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7

    .line 105
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    instance-of v4, v2, Lcom/prompt/kiosk/slauncher/Insettable;

    if-eqz v4, :cond_0

    .line 110
    move-object v4, v2

    check-cast v4, Lcom/prompt/kiosk/slauncher/Insettable;

    invoke-interface {v4, p1}, Lcom/prompt/kiosk/slauncher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 112
    :cond_0
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 113
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 114
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 115
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 117
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 258
    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    aget v4, v0, v1

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v1

    aget v4, v0, v2

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 264
    :goto_0
    instance-of v4, p1, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq p1, p0, :cond_0

    .line 265
    check-cast p1, Landroid/view/View;

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    aget v4, v0, v1

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v1

    aget v4, v0, v2

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    .line 272
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    aget p1, v0, v2

    .line 273
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v2

    return v3
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    .line 234
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 235
    aput v1, v0, v2

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mTmpXY:[I

    .line 237
    aget v1, v3, v1

    aget v3, v3, v2

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mTmpXY:[I

    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    .line 237
    invoke-virtual {p2, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    const/4 v0, 0x0

    .line 243
    aput v0, p2, v0

    const/4 v1, 0x1

    .line 244
    aput v0, p2, v1

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    return p1
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 279
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v1

    aget v0, v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v4

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 659
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragController;->dismissAllDismissableByDrag()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 158
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->isEventOverFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->sendTapOutsideFolderAccessibilityEvent()V

    iput-boolean v4, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    :cond_2
    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_3
    return v4

    .line 178
    :cond_4
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->isEventOverFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v0, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->sendTapOutsideFolderAccessibilityEvent()V

    iput-boolean v4, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    :cond_5
    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 153
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 342
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 343
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 345
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 346
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    instance-of p5, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 348
    check-cast p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    .line 349
    iget-boolean p5, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 350
    iget p5, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 223
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 641
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 642
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->updateChildIndices()V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 647
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 648
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->updateChildIndices()V

    return-void
.end method

.method public setup(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    return-void
.end method

.method public stopViewAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 595
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    :cond_1
    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer;->mDropView:Landroid/view/View;

    :cond_2
    return-void
.end method
