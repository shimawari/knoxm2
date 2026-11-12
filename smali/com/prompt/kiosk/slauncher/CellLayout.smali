.class public Lcom/prompt/kiosk/slauncher/CellLayout;
.super Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;,
        Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayout"


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mAllowFreeGap:Z

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private final mCellInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

.field private mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsOffset:I

.field private mCrosshairsVisibility:F

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragging:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mLastDownOnOccupiedCell:Z

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

.field private final mRect:Landroid/graphics/Rect;

.field mTempLocation:[I

.field private final mTmpPointF:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 62
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragCenter:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    const/4 v3, 0x0

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsVisibility:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsOffset:I

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragging:Z

    .line 88
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setWillNotDraw(Z)V

    .line 90
    sget-object v4, Lcom/prompt/kiosk/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xa

    .line 93
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalCellWidth:I

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalCellHeight:I

    const/4 p3, 0x5

    .line 96
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalWidthGap:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    const/4 p3, 0x3

    .line 97
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalHeightGap:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    const/4 p3, 0x4

    .line 98
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mMaxGap:I

    .line 99
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mAllowFreeGap:Z

    .line 100
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    .line 101
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    .line 102
    iget p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    filled-new-array {p3, v1}, [I

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Z

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOccupied:[[Z

    .line 103
    iget p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    filled-new-array {p3, v1}, [I

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Z

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTmpOccupied:[[Z

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 109
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p3

    const v1, 0x7f080041

    .line 111
    invoke-virtual {p3, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080042

    .line 112
    invoke-virtual {p3, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    const v0, 0x7f080032

    .line 119
    invoke-virtual {p3, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f0a0001

    .line 122
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 123
    new-instance p3, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    int-to-long v0, p2

    invoke-direct {p3, v0, v1, v3, v2}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;-><init>(JFF)V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 124
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/prompt/kiosk/slauncher/CellLayout$1;

    invoke-direct {p3, p0}, Lcom/prompt/kiosk/slauncher/CellLayout$1;-><init>(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 130
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 134
    new-instance p2, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    invoke-direct {p2, p1}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 135
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    iget p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setCellDimensions(IIII)V

    .line 136
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lcom/prompt/kiosk/slauncher/CellLayout;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method private clearTagCellInfo()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    const/4 v1, 0x0

    .line 347
    iput-object v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v1, -0x1

    .line 348
    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    .line 349
    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    const/4 v1, 0x0

    .line 350
    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    .line 351
    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    .line 352
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 3

    const v0, 0x7f070050

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070067

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070058

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 155
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr p0, v1

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method private invalidateBubbleTextView(Lcom/prompt/kiosk/slauncher/BubbleTextView;)V
    .locals 5

    .line 162
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 163
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 164
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 165
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 166
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr p1, v4

    add-int/2addr p1, v0

    .line 163
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidate(IIII)V

    return-void
.end method

.method private postProcessCrossHair()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidate()V

    .line 544
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private preProcessCrossHair(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    invoke-virtual {p5, p3, p4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 526
    invoke-virtual {p5, p3, p4}, Landroid/graphics/Point;->set(II)V

    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidate()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 2

    const v0, 0x7f070053

    .line 666
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070050

    .line 667
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 668
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double v0, p1

    .line 671
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-double v0, p2

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    if-nez p3, :cond_0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 677
    aput p1, p3, p2

    const/4 p1, 0x1

    .line 678
    aput p0, p3, p1

    return-object p3
.end method

.method private setChildrenAlpha(F)V
    .locals 3

    .line 463
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 465
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 3

    const v0, 0x7f070053

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070067

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070058

    .line 145
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 144
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr p0, v1

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public calculateSpans(Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 4

    .line 696
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 697
    move-object v0, p1

    check-cast v0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;

    iget v2, v0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minWidth:I

    .line 698
    iget v0, v0, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->minHeight:I

    goto :goto_0

    .line 699
    :cond_0
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    if-eqz v0, :cond_1

    .line 700
    move-object v0, p1

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    iget v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 701
    iget v0, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    goto :goto_0

    .line 702
    :cond_1
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;

    if-eqz v0, :cond_2

    .line 703
    move-object v0, p1

    check-cast v0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;

    iget v2, v0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minWidth:I

    .line 704
    iget v0, v0, Lcom/prompt/kiosk/slauncher/PendingAddHomeWidgetInfo;->minHeight:I

    :goto_0
    const/4 v3, 0x0

    .line 710
    invoke-virtual {p0, v2, v0, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->rectToCell(II[I)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 711
    aget v2, v0, v2

    iput v2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 712
    aget v0, v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    return-void

    .line 707
    :cond_2
    iput v1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput v1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    return-void
.end method

.method public cellSpansToSize(II)[I
    .locals 2

    .line 684
    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 685
    iget p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    mul-int/2addr p1, p2

    add-int/lit8 p2, p2, -0x1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 7

    .line 611
    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    .line 612
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    .line 613
    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    .line 614
    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    .line 616
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v4

    .line 617
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v5

    mul-int v6, p3, v0

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p3, v2

    add-int/2addr v6, p3

    mul-int p3, p4, v1

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, v3

    add-int/2addr p3, p4

    add-int/2addr v0, v2

    mul-int/2addr p1, v0

    add-int/2addr v4, p1

    add-int/2addr v1, v3

    mul-int/2addr p2, v1

    add-int/2addr v5, p2

    int-to-float p1, v4

    int-to-float p2, v5

    add-int/2addr v4, v6

    int-to-float p4, v4

    add-int/2addr v5, p3

    int-to-float p3, v5

    .line 625
    invoke-virtual {p5, p1, p2, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 722
    instance-of p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    return p1
.end method

.method estimateDropCell(IIII[I)V
    .locals 2

    .line 479
    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    .line 480
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    .line 484
    invoke-virtual {p0, p1, p2, p5}, Lcom/prompt/kiosk/slauncher/CellLayout;->pointToCellRounded(II[I)V

    const/4 p1, 0x0

    .line 487
    aget p2, p5, p1

    add-int/2addr p3, p2

    sub-int/2addr p3, v0

    if-lez p3, :cond_0

    sub-int/2addr p2, p3

    .line 489
    aput p2, p5, p1

    .line 491
    :cond_0
    aget p2, p5, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p5, p1

    const/4 p2, 0x1

    .line 492
    aget p3, p5, p2

    add-int/2addr p4, p3

    sub-int/2addr p4, v1

    if-lez p4, :cond_1

    sub-int/2addr p3, p4

    .line 494
    aput p3, p5, p2

    .line 496
    :cond_1
    aget p3, p5, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, p2

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 717
    new-instance v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 727
    new-instance v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;
    .locals 1

    .line 356
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTag()Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 272
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 273
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->screen:I

    return-void
.end method

.method onDragEnter()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateIn()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragging:Z

    return-void
.end method

.method onDragExit()V
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragging:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsAnimator:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateOut()V

    .line 581
    :cond_0
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onDragExit()V

    .line 583
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x437f0000    # 255.0f

    if-lez v2, :cond_1

    .line 199
    iget-boolean v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mIsDragOverlapping:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlpha:F

    iget v6, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 206
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 207
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 208
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsVisibility:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 212
    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    .line 213
    iget v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 221
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsOffset:I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v10

    iget v11, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    const/4 v12, 0x0

    :goto_1
    if-gt v12, v2, :cond_5

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v13

    iget v14, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int/lit8 v14, v8, 0x2

    sub-int/2addr v13, v14

    if-gez v9, :cond_2

    sub-int/2addr v13, v9

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-gt v14, v5, :cond_4

    iget-object v15, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 232
    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int v11, v10, v11

    int-to-float v11, v11

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mDragCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v15, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 233
    invoke-virtual {v4}, Landroid/graphics/PointF;->length()F

    move-result v4

    const/high16 v11, 0x44160000    # 600.0f

    sub-float/2addr v11, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v4

    const v4, 0x3f666666    # 0.9f

    .line 235
    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v11, v4, v3

    if-lez v11, :cond_3

    add-int v11, v10, v7

    add-int v15, v13, v8

    .line 238
    invoke-virtual {v6, v10, v13, v11, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v4, v11

    iget v15, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsVisibility:F

    mul-float/2addr v4, v15

    float-to-int v4, v4

    .line 239
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_3
    const/high16 v11, 0x437f0000    # 255.0f

    .line 242
    :goto_3
    iget v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    iget v15, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v15

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int/2addr v4, v15

    add-int/2addr v13, v4

    add-int/lit8 v14, v14, 0x1

    move v4, v11

    goto :goto_2

    :cond_4
    move v11, v4

    .line 244
    iget v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    iget v13, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v13

    add-int/2addr v10, v4

    add-int/lit8 v12, v12, 0x1

    move v4, v11

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v2, :cond_6

    .line 251
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 252
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 255
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 256
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/4 v5, 0x0

    .line 254
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    .line 596
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->dropped:Z

    .line 597
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->clearTagCellInfo()V

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    .line 335
    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTagToCellInfoForPoint(II)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 363
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 364
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 366
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 367
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 369
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    add-int/lit8 v1, v1, -0x1

    .line 370
    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mAllowFreeGap:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 374
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 376
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    div-int v6, v3, v6

    iput v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    .line 377
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    div-int v6, v5, v6

    iput v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    .line 379
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 380
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 382
    div-int/2addr v3, v1

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    .line 383
    div-int/2addr v5, v2

    iput v5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    .line 384
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setCellDimensions(IIII)V

    goto :goto_3

    .line 385
    :cond_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalWidthGap:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalHeightGap:I

    if-gez v3, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalWidthGap:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    .line 395
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalHeightGap:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    goto :goto_3

    .line 386
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 387
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 388
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalCellWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 389
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mOriginalCellHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 390
    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mMaxGap:I

    if-lez v1, :cond_3

    div-int/2addr v3, v1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    .line 391
    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mMaxGap:I

    if-lez v2, :cond_4

    div-int/2addr v5, v2

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    .line 392
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    iget v6, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setCellDimensions(IIII)V

    :goto_3
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    .line 402
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellWidth:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 404
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellHeight:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setMeasuredDimension(II)V

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildCount()I

    move-result v0

    :goto_4
    if-ge v4, v0, :cond_6

    .line 411
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    .line 413
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 412
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 414
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    .line 415
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 414
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 416
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 418
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 423
    invoke-super {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    .line 424
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 5

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mAllowFreeGap:Z

    if-eqz v0, :cond_3

    .line 638
    iget v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result v2

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mWidthGap:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    sub-int/2addr v3, v1

    mul-int/2addr v2, v3

    :goto_0
    sub-int/2addr v0, v2

    .line 640
    iget v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mHeightGap:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    sub-int/2addr v4, v1

    mul-int/2addr v3, v4

    :goto_1
    sub-int/2addr v2, v3

    .line 643
    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountX:I

    div-int/2addr v0, v3

    .line 644
    iget v3, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellCountY:I

    div-int/2addr v2, v3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v3, p1

    .line 650
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    int-to-float p2, p2

    int-to-float v0, v2

    div-float/2addr p2, v0

    float-to-double v2, p2

    .line 651
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    if-nez p3, :cond_2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 656
    aput p1, p3, v0

    .line 657
    aput p2, p3, v1

    return-object p3

    .line 660
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object p1

    return-object p1
.end method

.method public setAlpha(F)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setChildrenAlpha(F)V

    .line 459
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setAlpha(F)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlpha:F

    .line 445
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidate()V

    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlphaMultiplier:F

    return-void
.end method

.method public setCrosshairsOffset(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCrosshairsOffset:I

    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mBackgroundAlpha:F

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/prompt/kiosk/slauncher/BubbleTextView;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidateBubbleTextView(Lcom/prompt/kiosk/slauncher/BubbleTextView;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mPressedOrFocusedIcon:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz p1, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->invalidateBubbleTextView(Lcom/prompt/kiosk/slauncher/BubbleTextView;)V

    :cond_1
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mCellInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 279
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScrollX()I

    move-result v2

    add-int/2addr p1, v2

    .line 280
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 281
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    .line 285
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v5, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    iget-boolean v7, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v7, :cond_1

    .line 290
    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 297
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 298
    iput-object v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 299
    iget v1, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    .line 300
    iget v1, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    .line 301
    iget v1, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    .line 302
    iget v1, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellVSpan:I

    iput v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CellLayout;->mTmpXY:[I

    .line 313
    invoke-virtual {p0, p1, p2, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->pointToCellExact(II[I)V

    const/4 p1, 0x0

    .line 315
    iput-object p1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 316
    aget p1, v1, v4

    iput p1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    .line 317
    aget p1, v1, v3

    iput p1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    .line 318
    iput v3, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    .line 319
    iput v3, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    .line 321
    :cond_3
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p10

    .line 513
    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->preProcessCrossHair(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 519
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->postProcessCrossHair()V

    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->preProcessCrossHair(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-super/range {p0 .. p8}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 507
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->postProcessCrossHair()V

    return-void
.end method
