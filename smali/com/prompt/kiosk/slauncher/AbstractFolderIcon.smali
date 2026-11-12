.class public abstract Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;
.super Landroid/widget/LinearLayout;
.source "AbstractFolderIcon.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;


# static fields
.field static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field protected static final GRID_COLUMN_IN_PREVIEW:I = 0x2

.field protected static final GRID_INSET_H_IN_PREVIEW:F = 0.1f

.field protected static final GRID_INSET_V_IN_PREVIEW:F = 0.1f

.field protected static final GRID_ROW_IN_PREVIEW:I = 0x2

.field static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field protected static final ITEM_SCROLL_DIRECTION_LEFT:I = 0x0

.field protected static final ITEM_SCROLL_DIRECTION_RIGHT:I = 0x1

.field protected static final ITEM_SCROLL_STATE_REST:I = 0x0

.field protected static final ITEM_SCROLL_STATE_SCROLLING:I = 0x1

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.24f

.field public static final PREVIEW_STYLE_GRID:I = 0x1

.field public static final PREVIEW_STYLE_ICS:I = 0x2

.field public static final PREVIEW_STYLE_SLOPE:I = 0x0

.field protected static final SCALE_ITEM_IN_PREVIEW:F = 0.9f

.field protected static final SLOPE_MAX_IN_PREVIEW:F = -60.0f

.field protected static final SLOPE_MIN_IN_PREVIEW:F = -45.0f

.field protected static final SLOPE_STEP_IN_PREVIEW:F = -7.5f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable; = null

.field public static sStaticValuesDirty:Z = true


# instance fields
.field protected NUM_ITEMS_IN_PREVIEW:I

.field private mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableHorizontalSpaceInPreview:I

.field private mAvailableVerticalSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mCamera:Landroid/graphics/Camera;

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mDrawEditModeOverlay:Z

.field public mEditModeOverlay:Landroid/graphics/Bitmap;

.field mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

.field protected mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

.field mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

.field protected mHorizontalInset:I

.field private mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

.field mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

.field private mIntrinsicIconSize:I

.field private mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

.field protected mIsItemScrollable:Z

.field private mItemPressedBackground:Landroid/graphics/Bitmap;

.field protected mItemScrollAnimator:Landroid/animation/ValueAnimator;

.field protected mItemScrollDirection:I

.field protected mItemScrollState:I

.field protected mItemScrollX:I

.field protected mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxPerspectiveShift:F

.field private mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

.field protected mPerformCreateAnimation:Z

.field private mPressedGlowColor:I

.field protected mPreviewBackground:Landroid/widget/ImageView;

.field protected mPreviewBgAutoScaleIfNeeded:Z

.field protected mPreviewBgScale:F

.field protected mPreviewBgScaleOffsetY:I

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field protected mPreviewStyle:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mTouchCellIndex:I

.field private mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

.field protected mTouchSlop:I

.field protected mUserPreviewScale:F

.field protected mXDown:F

.field protected mXLast:F

.field protected mYDown:F

.field protected mYLast:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalWidth:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    .line 97
    new-instance v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p2}, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 98
    new-instance v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, p2}, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalHeight:I

    .line 103
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTmpRect:Landroid/graphics/Rect;

    .line 108
    new-instance p1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mDrawEditModeOverlay:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgAutoScaleIfNeeded:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mUserPreviewScale:F

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIsItemScrollable:Z

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollDirection:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mHorizontalInset:I

    .line 997
    new-instance p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    return p0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .line 952
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 953
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    .line 956
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    .line 957
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 958
    iput-object p1, v4, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    .line 960
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 961
    new-instance v2, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;FLcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;F)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 971
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p2

    .line 981
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 982
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 599
    sget v3, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewPadding:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    .line 600
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v5

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    neg-int p1, v4

    int-to-float p1, p1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 607
    new-instance p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {p2, p1, v2, v0, v3}, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;-><init>(FFFI)V

    goto :goto_0

    .line 609
    :cond_0
    iput p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 610
    iput v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 611
    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 612
    iput v3, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    .line 614
    :goto_0
    iput v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    const/4 p1, 0x0

    .line 615
    iput p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    return-object p2
.end method

.method private computeNoPreviewItemDrawingParams(Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 7

    .line 711
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getSlopStepInPreview()F

    move-result v0

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    const/high16 v2, -0x3dcc0000    # -45.0f

    add-float/2addr v0, v2

    const/high16 v2, -0x3d900000    # -60.0f

    .line 710
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    .line 712
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const v4, 0x3fe66666    # 1.8f

    div-float/2addr v3, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    .line 715
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleItemInPreview()F

    move-result v5

    mul-float/2addr v1, v5

    iget v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    div-float/2addr v6, v4

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 724
    new-instance p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {p1, v3, v6, v1, v2}, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;-><init>(FFFI)V

    goto :goto_0

    .line 726
    :cond_0
    iput v3, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 727
    iput v6, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 728
    iput v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 729
    iput v2, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    .line 731
    :goto_0
    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    return-object p1
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 419
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(II)V

    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 12

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 503
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getSlopStepInPreview()F

    move-result v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, -0x3dcc0000    # -45.0f

    add-float/2addr v1, v2

    const/high16 v2, -0x3d900000    # -60.0f

    .line 505
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    add-int/lit8 v2, v0, 0x1

    .line 507
    div-int v2, v1, v2

    int-to-float v2, v2

    int-to-float v0, v0

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v0

    sub-float v3, v4, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr v2, p1

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPerformCreateAnimation:Z

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleItemInPreview()F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleItemInPreview()F

    move-result v0

    mul-float/2addr p1, v0

    :goto_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v0

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v1, v2

    int-to-float v1, v1

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    sub-int p1, v0, p1

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr p1, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v2, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr v0, p1

    sub-float v0, v2, v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMaxPerspectiveShift:F

    mul-float/2addr v1, p1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mBaselineIconSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    sub-float/2addr v2, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v3, v3

    add-float v6, v1, v4

    add-float/2addr v6, v2

    sub-float/2addr v3, v6

    add-float/2addr v1, v2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mBaselineIconScale:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr p1, v2

    float-to-int v6, p1

    move p1, v0

    move v0, v4

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    int-to-float v0, v0

    .line 464
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getGridInsetHInPreview()F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v3, v3

    .line 465
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getGridInsetVInPreview()F

    move-result v7

    sub-float/2addr v2, v7

    mul-float/2addr v3, v2

    div-float v2, v0, v4

    div-float v7, v3, v4

    cmpg-float v8, v2, v7

    if-gez v8, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v7

    .line 472
    :goto_1
    rem-int/lit8 v9, p1, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v2

    .line 473
    div-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewVerticalOffset()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    div-float/2addr v8, v1

    .line 475
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleItemInPreview()F

    move-result v1

    mul-float/2addr v1, v8

    iget v8, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    iget v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    div-float/2addr v10, v4

    add-float/2addr v10, p1

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    add-float v3, v10, v7

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v4

    add-float/2addr p1, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v4

    add-float/2addr p1, v2

    move v0, v8

    move v11, v1

    move v1, p1

    move p1, v11

    :goto_2
    if-nez p2, :cond_4

    .line 522
    new-instance p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {p2, v1, v3, p1, v6}, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;-><init>(FFFI)V

    goto :goto_3

    .line 524
    :cond_4
    iput v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 525
    iput v3, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 526
    iput p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 527
    iput v6, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    .line 529
    :goto_3
    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    .line 530
    iput v5, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    return-object p2
.end method

.method private computeScrolledClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 9

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-object p2

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 628
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, -0x2

    :goto_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 629
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-nez p1, :cond_4

    iget v8, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-gez v8, :cond_4

    cmpg-float p1, v3, v6

    if-gtz p1, :cond_2

    mul-float/2addr v3, v5

    .line 633
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    div-float/2addr p1, v0

    .line 634
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v4, v3

    mul-float/2addr v0, v4

    .line 635
    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    mul-float/2addr p1, v6

    .line 636
    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 637
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v0, v3

    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 638
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    add-float/2addr v0, p1

    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 639
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    add-float/2addr v0, p1

    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    goto/16 :goto_3

    :cond_2
    sub-float/2addr v3, v6

    mul-float/2addr v3, v5

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 642
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result p1

    if-ge p1, v0, :cond_3

    .line 644
    invoke-direct {p0, v2, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v7

    .line 645
    iget p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    div-float/2addr p1, v0

    .line 646
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v0, v3

    .line 647
    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    mul-float/2addr p1, v6

    .line 648
    iput v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 649
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v0, v3

    iput v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 650
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    add-float/2addr v0, p1

    iput v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 651
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    add-float/2addr v0, p1

    iput v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    goto/16 :goto_3

    :cond_3
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 653
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 654
    invoke-direct {p0, p1, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v7

    .line 655
    iget p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    div-float/2addr p1, v0

    .line 656
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v0, v3

    .line 657
    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v1, v3

    iput v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 658
    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v2, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 659
    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v2, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 660
    iput v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 661
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    goto/16 :goto_3

    :cond_4
    if-ne p1, v2, :cond_7

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-lez v2, :cond_7

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 665
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result p1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_6

    cmpg-float p1, v3, v6

    if-gtz p1, :cond_5

    mul-float/2addr v3, v5

    .line 671
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v4, v3

    mul-float/2addr p1, v4

    .line 672
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v0, v4

    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    move-object v7, p2

    goto :goto_1

    :cond_5
    sub-float/2addr v3, v6

    mul-float/2addr v3, v5

    .line 675
    invoke-direct {p0, v1, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    .line 676
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v0, v3

    .line 677
    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v1, v3

    iput v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    move-object v7, p1

    move p1, v0

    .line 679
    :goto_1
    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    div-float/2addr v0, v1

    .line 680
    iget v1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    .line 681
    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 682
    iget p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 683
    iget p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    goto/16 :goto_3

    .line 685
    :cond_6
    invoke-direct {p0, v1, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v7

    .line 686
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 687
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 688
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 689
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 690
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-gez v0, :cond_8

    sub-int/2addr p1, v1

    .line 694
    invoke-direct {p0, p1, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    goto :goto_2

    :cond_8
    add-int/2addr p1, v1

    .line 696
    invoke-direct {p0, p1, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    :goto_2
    move-object v7, p1

    .line 698
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 699
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 700
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 701
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 702
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v0, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, v7, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    :goto_3
    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    move-object p2, v7

    :goto_4
    return-object p2
.end method

.method private computeScrolledPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;
    .locals 8

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-object p2

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 543
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 546
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v3

    if-ne p1, v3, :cond_2

    add-int/lit8 p1, v2, -0x1

    :cond_2
    :goto_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    int-to-float v3, v3

    iget v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 551
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-int/2addr v2, v1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-lez v2, :cond_4

    cmpg-float p1, v3, v7

    const/high16 v0, 0x40000000    # 2.0f

    if-gtz p1, :cond_3

    mul-float/2addr v3, v0

    .line 557
    iget p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v5, v3

    mul-float/2addr p1, v5

    .line 558
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v0, v5

    iput v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    move v0, p1

    move-object p1, p2

    goto :goto_1

    :cond_3
    sub-float/2addr v3, v7

    mul-float/2addr v3, v0

    .line 561
    invoke-direct {p0, v4, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    .line 562
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v0, v3

    .line 563
    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    mul-float/2addr v1, v3

    iput v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 565
    :goto_1
    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scaledSize:F

    iget v2, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    div-float/2addr v1, v2

    .line 566
    iget v2, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v7

    .line 567
    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 568
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 569
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    goto/16 :goto_3

    :cond_4
    if-nez p1, :cond_5

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-gez v2, :cond_5

    add-int/lit8 v0, v0, -0x2

    .line 571
    invoke-direct {p0, v0, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    .line 572
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 573
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 574
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 575
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 576
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-gez v0, :cond_6

    sub-int/2addr p1, v1

    .line 579
    invoke-direct {p0, p1, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    goto :goto_2

    :cond_6
    add-int/2addr p1, v1

    .line 581
    invoke-direct {p0, p1, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    .line 583
    :goto_2
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    .line 584
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    .line 585
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    .line 586
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    .line 587
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    move-object p2, p1

    :goto_4
    return-object p2
.end method

.method private createGlowingOutline(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1131
    :cond_0
    sget v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1132
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1135
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1136
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 1137
    invoke-virtual {p1, v2, v3, p3, p2}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1138
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V
    .locals 4

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    iget v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 739
    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    if-nez v1, :cond_1

    .line 741
    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    .line 742
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCamera:Landroid/graphics/Camera;

    .line 743
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCamera:Landroid/graphics/Camera;

    .line 744
    iget v2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    .line 745
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCamera:Landroid/graphics/Camera;

    .line 746
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    neg-int v3, v2

    .line 748
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    .line 749
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    .line 750
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 753
    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    const/high16 v2, -0x3dcc0000    # -45.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 754
    iget v1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->rotateY:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 756
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    const/4 v2, 0x0

    .line 761
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x1

    .line 762
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 763
    iget p2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {p2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 765
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 766
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 769
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getHitRectItem(Lcom/prompt/kiosk/slauncher/IconInfo;ILandroid/graphics/Rect;)V
    .locals 2

    .line 1073
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1076
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 1078
    invoke-direct {p0, p2, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 1079
    iput-object p1, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 1081
    iget p2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 1082
    iget p2, p2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 1083
    iget p2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 1084
    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method

.method private getTouchCellIndex(II)I
    .locals 9

    .line 1107
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    .line 1108
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountY()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 1109
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 1110
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    mul-int v7, v2, v6

    .line 1113
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1114
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iput v7, v4, Landroid/graphics/Rect;->right:I

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_1

    mul-int v8, v3, v7

    .line 1116
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 1117
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 1119
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    mul-int/2addr v7, v0

    add-int/2addr v7, v6

    return v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getTouchItem(II)Lcom/prompt/kiosk/slauncher/IconInfo;
    .locals 7

    .line 1091
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountY()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1093
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemsInReadingOrderOnFirstPage()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 1095
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_1

    .line 1096
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 1097
    invoke-direct {p0, v5, v4, v3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getHitRectItem(Lcom/prompt/kiosk/slauncher/IconInfo;ILandroid/graphics/Rect;)V

    .line 1098
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initItemScroll()V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIsItemScrollable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1307
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 1314
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 1315
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1316
    new-instance v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1327
    new-instance v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private willAcceptItem(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z
    .locals 4

    .line 280
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-object v2, p1

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contains(Lcom/prompt/kiosk/slauncher/IconInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 288
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->isFull()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    if-eq p1, v0, :cond_2

    iget-boolean p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 0

    .line 292
    check-cast p1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 293
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->willAcceptItem(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 343
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->add(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    return-void
.end method

.method computePreviewDrawingParams(II)V
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalHeight:I

    .line 380
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalWidth:I

    .line 384
    sget p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewSize:I

    int-to-float p1, p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 385
    sget v0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewPadding:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableVerticalSpaceInPreview:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mHorizontalInset:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    .line 391
    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v2

    const v4, 0x3f9eb852    # 1.24f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mBaselineIconScale:F

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    const v2, 0x3e75c28f    # 0.24f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMaxPerspectiveShift:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalWidth:I

    sub-int/2addr v1, p1

    .line 399
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    .line 402
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 404
    div-int/2addr p2, p1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    sub-int/2addr p1, v1

    mul-int/2addr p1, p2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAvailableHorizontalSpaceInPreview:I

    sub-int/2addr p2, v2

    .line 405
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalHeight:I

    .line 410
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountY()I

    move-result p1

    if-le p1, v1, :cond_2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTotalHeight:I

    .line 412
    div-int/2addr p2, p1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellHeight:I

    sub-int/2addr p1, v1

    mul-int/2addr p2, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1292
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isTextEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 787
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 788
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBottom()I

    move-result v1

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 789
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 790
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 792
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 795
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->dispatchDrawImpl(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchDrawImpl(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    if-nez v0, :cond_1

    .line 803
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Utilities;->getIconSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 804
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeNoPreviewItemDrawingParams(Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 805
    iput-object v1, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 806
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 811
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemsInReadingOrderOnFirstPage()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 812
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getLastItem()Lcom/prompt/kiosk/slauncher/IconInfo;

    move-result-object v2

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 817
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 819
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 820
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v3, v5}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 821
    invoke-direct {p0, v3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 824
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    if-nez v5, :cond_e

    .line 826
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v5

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v9, :cond_7

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    int-to-float v6, v6

    iget v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCellWidth:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    .line 831
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    iget v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    add-int/2addr v6, v10

    iget v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    if-gez v10, :cond_6

    .line 835
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_5

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 836
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v2, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 838
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v2, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 841
    invoke-direct {p0, v4, v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeScrolledClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v6

    iput-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 842
    iput-object v2, v6, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 843
    invoke-direct {p0, p1, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    move v2, v4

    move v6, v9

    goto :goto_2

    .line 846
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_7

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 847
    invoke-virtual {v6, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    sub-int/2addr v6, v9

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 849
    invoke-direct {p0, v6, v10}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeScrolledPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v6

    iput-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 850
    iput-object v2, v6, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 851
    invoke-direct {p0, p1, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    move v6, v4

    move v2, v9

    goto :goto_2

    :cond_7
    move v2, v4

    move v6, v2

    :goto_2
    sub-int/2addr v3, v9

    :goto_3
    if-ltz v3, :cond_a

    add-int v10, v3, v5

    sub-int/2addr v10, v9

    .line 861
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v10, v11, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    move v2, v4

    goto :goto_4

    :cond_9
    iget-object v11, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 868
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v11, v10}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 870
    invoke-direct {p0, v3, v11}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeScrolledPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v11

    iput-object v11, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 871
    iput-object v10, v11, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 872
    invoke-direct {p0, p1, v10}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 876
    :cond_a
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d

    add-int/lit8 v2, v5, -0x1

    if-ge v4, v2, :cond_d

    if-nez v4, :cond_b

    if-eqz v6, :cond_b

    goto :goto_6

    .line 879
    :cond_b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 880
    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v9, :cond_c

    if-ne v2, v9, :cond_c

    .line 883
    invoke-direct {p0, v4, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v2

    .line 884
    sget v9, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    int-to-float v9, v9

    .line 885
    iget v10, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v7

    neg-float v9, v9

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 888
    iget v10, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v11, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v12, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 890
    iget v9, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v2, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v9, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    .line 891
    invoke-virtual {p1, v2, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 895
    invoke-direct {p0, v4, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeScrolledClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 896
    iput-object v3, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 897
    invoke-direct {p0, p1, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    if-nez v1, :cond_f

    .line 902
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_f

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 903
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeNoPreviewItemDrawingParams(Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 904
    iput-object v1, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 905
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 909
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)V

    :cond_f
    :goto_7
    return-void
.end method

.method public getCellCountX()I
    .locals 1

    .line 1057
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 1059
    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellHSpan:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 1067
    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellVSpan:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getGridInsetHInPreview()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method protected getGridInsetVInPreview()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    return-object v0
.end method

.method protected getLocalCenterForClickIndex(I[I)F
    .locals 4

    .line 439
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    .line 440
    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computeClickPreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 442
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 443
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 444
    iget p1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 445
    iget v0, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    const/4 v1, 0x0

    .line 447
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    const/4 p1, 0x1

    .line 448
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, p1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 449
    iget p1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    return p1
.end method

.method protected getLocalCenterForIndex(I[I)F
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    sub-int/2addr v0, v1

    .line 424
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    .line 426
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewItemDrawingParams(ILcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 428
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 429
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 430
    iget p1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 431
    iget v0, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v3, v3, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    const/4 v2, 0x0

    .line 433
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v2

    .line 434
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    .line 435
    iget p1, p1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    return p1
.end method

.method public getMeasuredPreviewScale()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    return v0
.end method

.method public getPreviewBackgroundHeight()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 1280
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewBackgroundLocation([I)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1433
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    aput v0, p1, v1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 1434
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public getPreviewBackgroundWidth()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 1276
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getPreviewVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getScaleItemInPreview()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method protected getSlopStepInPreview()F
    .locals 1

    const/high16 v0, -0x3f100000    # -7.5f

    return v0
.end method

.method public getTextVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 994
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1301
    check-cast p1, Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getViewForInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mMatrix:Landroid/graphics/Matrix;

    .line 159
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mCamera:Landroid/graphics/Camera;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchSlop:I

    .line 170
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 171
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPressedGlowColor:I

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewStyle:I

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    :goto_0
    return-void
.end method

.method public isItemScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    if-eqz v0, :cond_0

    .line 1395
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->isFolderIconScrollEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isItemScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIsItemScrollable:Z

    return v0
.end method

.method public moveItemTo(I)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1372
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemsInReadingOrderOnFirstPage()Ljava/util/ArrayList;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1375
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getLastItem()Lcom/prompt/kiosk/slauncher/IconInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1379
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->moveItemTo(Lcom/prompt/kiosk/slauncher/IconInfo;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1382
    invoke-virtual {p1, v1, v3}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->moveItemTo(Lcom/prompt/kiosk/slauncher/IconInfo;I)V

    :goto_0
    return-void
.end method

.method public onAdd(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    .line 1013
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1014
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1016
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1032
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1034
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onClick(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1262
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 1263
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1264
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1268
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 4

    .line 297
    check-cast p1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->willAcceptItem(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 299
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 300
    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2, v3}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setCell(II)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 301
    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget p1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v1, v2, p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setSpan(II)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 302
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setCellLayout(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 303
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToAcceptState()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 304
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->showFolderAccept(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 339
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToNaturalState()V

    return-void
.end method

.method public abstract onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method

.method protected abstract onDrop(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;FI)V
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 195
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->init(Landroid/content/Context;)V

    const v0, 0x7f09003f

    .line 197
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    const v0, 0x7f09007e

    .line 198
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-void
.end method

.method public onItemsChanged()V
    .locals 2

    .line 1005
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1006
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1008
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 258
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 262
    invoke-virtual {p4}, Landroid/widget/ImageView;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p5}, Landroid/widget/ImageView;->getRight()I

    move-result p5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 264
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    .line 261
    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 265
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 266
    invoke-virtual {p4}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 267
    invoke-virtual {p5}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result p5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 268
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    .line 265
    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 203
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 205
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v0

    .line 209
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountY()I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mUserPreviewScale:F

    .line 212
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidthGap()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidthGap()I

    move-result v4

    add-int/2addr v3, v4

    .line 213
    :goto_0
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeightGap()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellHeight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeightGap()I

    move-result v5

    add-int/2addr v4, v5

    .line 214
    :goto_1
    sget v5, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v0, v7, :cond_3

    sub-int v8, v3, v5

    goto :goto_2

    :cond_3
    move v8, v6

    .line 217
    :goto_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredWidth()I

    move-result v9

    if-le v0, v7, :cond_4

    sub-int v8, v9, v8

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    const/high16 v10, 0x40000000    # 2.0f

    .line 218
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 221
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellHeight()I

    move-result v11

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeightGap()I

    move-result p2

    add-int/2addr v11, p2

    sub-int/2addr v1, v7

    mul-int/2addr v11, v1

    add-int/2addr v11, v5

    .line 223
    invoke-static {v11, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {v1, v8, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 229
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, v11

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 228
    invoke-static {p2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 230
    invoke-virtual {v1, p1, p2}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->measure(II)V

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, v2, p1

    if-ltz p2, :cond_5

    move p2, v6

    goto :goto_4

    .line 234
    :cond_5
    sget p2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewSize:I

    int-to-float p2, p2

    sub-float v1, p1, v2

    mul-float/2addr p2, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :goto_4
    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    iget-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgAutoScaleIfNeeded:Z

    if-eqz p2, :cond_9

    if-lt v3, v5, :cond_6

    if-ge v4, v5, :cond_9

    .line 238
    :cond_6
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float v1, p2

    int-to-float v2, v5

    div-float/2addr v1, v2

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    if-le v0, v7, :cond_7

    sub-int/2addr v3, p2

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    if-le v0, v7, :cond_8

    sub-int/2addr v9, v3

    goto :goto_6

    :cond_8
    move v9, p2

    .line 242
    :goto_6
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 244
    invoke-static {p2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 245
    invoke-virtual {v4, v3, p2}, Landroid/widget/ImageView;->measure(II)V

    cmpg-float p2, v1, p1

    if-gez p2, :cond_9

    iget p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    sub-float/2addr p1, v1

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScaleOffsetY:I

    :cond_9
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 251
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->isItemScrollEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    if-le v0, v7, :cond_a

    if-le p1, v7, :cond_a

    move v6, v7

    :cond_a
    iput-boolean v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIsItemScrollable:Z

    .line 253
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->initItemScroll()V

    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1022
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1024
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->sStaticValuesDirty:Z

    .line 274
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIsItemScrollable:Z

    .line 1151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    const/4 v6, 0x0

    if-eq v0, v4, :cond_7

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iput v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    .line 1236
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    goto/16 :goto_2

    :cond_1
    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    if-ne v0, v4, :cond_3

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mXLast:F

    iput v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mYLast:F

    return v4

    :cond_3
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mXLast:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mYLast:F

    sub-float v1, v3, v1

    float-to-int v1, v1

    if-nez v1, :cond_4

    const v1, 0x3f860a92

    goto :goto_0

    .line 1191
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v6, v1

    int-to-float v1, v6

    :goto_0
    float-to-double v6, v1

    .line 1192
    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v1, v6

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    if-nez v6, :cond_c

    .line 1193
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchSlop:I

    if-le v6, v7, :cond_c

    const v6, 0x3f060a92

    cmpl-float v1, v1, v6

    if-lez v1, :cond_c

    iput v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    .line 1195
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->cancelLongPress()V

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mXLast:F

    iput v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mYLast:F

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1200
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    :cond_5
    if-lez v0, :cond_6

    .line 1205
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->scrollRight()V

    goto :goto_2

    :cond_6
    if-gez v0, :cond_c

    .line 1207
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->scrollLeft()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    if-ne v0, v4, :cond_8

    iput v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    goto :goto_1

    :cond_8
    float-to-int v0, v2

    float-to-int v1, v3

    .line 1217
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getTouchCellIndex(II)I

    move-result v2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    if-eq v3, v2, :cond_9

    iput v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    goto :goto_1

    .line 1221
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getTouchItem(II)Lcom/prompt/kiosk/slauncher/IconInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    :goto_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    .line 1227
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    goto :goto_2

    :cond_a
    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mXDown:F

    iput v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mYDown:F

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mXLast:F

    iput v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mYLast:F

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    if-nez v0, :cond_d

    float-to-int v0, v2

    float-to-int v1, v3

    .line 1162
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getTouchCellIndex(II)I

    move-result v2

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    .line 1163
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getTouchItem(II)Lcom/prompt/kiosk/slauncher/IconInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 1166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    :cond_b
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v0, :cond_c

    .line 1170
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPressedGlowColor:I

    invoke-direct {p0, v0, v1, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->createGlowingOutline(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemPressedBackground:Landroid/graphics/Bitmap;

    .line 1172
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    .line 1240
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    return v4
.end method

.method public onUpdate(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 1

    .line 1039
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1040
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInvalidateAndRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1042
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    .line 1250
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchItem:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTmpRect:Landroid/graphics/Rect;

    .line 1251
    invoke-virtual {p0, v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->onClick(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/graphics/Rect;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mTouchCellIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1253
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    return v1

    .line 1257
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performCreateAnimation(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;F)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPerformCreateAnimation:Z

    .line 317
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 318
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v0

    .line 319
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->computePreviewDrawingParams(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 323
    invoke-virtual/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->onDrop(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;FI)V

    const/16 p2, 0x15e

    .line 327
    invoke-direct {p0, v0, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPerformCreateAnimation:Z

    .line 331
    new-instance p2, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;

    invoke-direct {p2, p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/IconInfo;)V

    const-wide/16 p3, 0x15e

    invoke-virtual {p0, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public refreshFolder()V
    .locals 0

    return-void
.end method

.method public scrollItemTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollDirection:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 1367
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    const/4 v0, 0x0

    .line 1400
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->scrollItemTo(I)V

    return-void
.end method

.method public scrollRight()V
    .locals 1

    const/4 v0, 0x1

    .line 1404
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->scrollItemTo(I)V

    return-void
.end method

.method public setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V
    .locals 3

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 929
    :cond_1
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextStyle()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v2, :cond_2

    .line 931
    invoke-virtual {v2, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 932
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setTextColor(I)V

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 934
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method public setPreviewScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x3f6db6db

    mul-float/2addr p1, v0

    const v0, 0x3fa66666    # 1.3f

    .line 1413
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mUserPreviewScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mUserPreviewScale:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBgScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mIntrinsicIconSize:I

    .line 1419
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    const/4 v0, 0x4

    .line 989
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
