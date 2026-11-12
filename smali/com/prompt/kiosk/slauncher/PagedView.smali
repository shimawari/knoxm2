.class public abstract Lcom/prompt/kiosk/slauncher/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/PagedView$ScrollInterpolator;,
        Lcom/prompt/kiosk/slauncher/PagedView$SavedState;,
        Lcom/prompt/kiosk/slauncher/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field public static HORIZONTAL:I = 0x1

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field private mBottomSlopEdge:F

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private final mEdgeSlop:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mIsWrapMode:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastMotionYRemainder:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field protected mMaxScrollY:I

.field protected mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field private mOldMeasuredHeight:I

.field protected mOrientation:I

.field protected mOverScrollX:I

.field protected mOverScrollY:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field protected mPagingTouchSlop:I

.field protected mPendingUpdateScrollPos:Z

.field private mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

.field protected mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

.field private mRightSlopEdge:F

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingIndicatorEnabled:Z

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field protected mTempVisiblePagesRange:[I

.field protected mTmpDeltaForNextPage:I

.field protected mTotalMotionX:F

.field protected mTotalMotionY:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mUnboundedScrollX:I

.field protected mUnboundedScrollY:I

.field protected mUsePagingTouchSlop:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSnapVelocity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPendingUpdateScrollPos:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastScreenCenter:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceScreenScrolled:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCellCountX:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCellCountY:I

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowOverScroll:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContentIsRefreshable:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFadeInAdjacentScreens:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUsePagingTouchSlop:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferScrollUpdate:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollingIndicatorEnabled:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsWrapMode:Z

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTmpDeltaForNextPage:I

    .line 196
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 2356
    new-instance v2, Lcom/prompt/kiosk/slauncher/PagedView$1;

    invoke-direct {v2, p0}, Lcom/prompt/kiosk/slauncher/PagedView$1;-><init>(Lcom/prompt/kiosk/slauncher/PagedView;)V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 213
    sget-object v2, Lcom/prompt/kiosk/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x6

    .line 214
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->setPageSpacing(I)V

    const/4 p3, 0x4

    .line 215
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutPaddingTop:I

    .line 216
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutPaddingBottom:I

    .line 217
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutPaddingLeft:I

    const/4 p3, 0x3

    .line 218
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutPaddingRight:I

    const/4 p3, 0x5

    .line 219
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutWidthGap:I

    .line 220
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageLayoutHeightGap:I

    .line 221
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->init()V

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 226
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 228
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/PagedView;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1781
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1783
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private actionDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1725
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1726
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mRightSlopEdge:F

    .line 1727
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mBottomSlopEdge:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1733
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1734
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1738
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    .line 1739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    const/4 v0, 0x0

    .line 1744
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1746
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->pageBeginMoving()V

    :cond_1
    return-void
.end method

.method private actionMove(Landroid/view/MotionEvent;)V
    .locals 7

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1666
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1670
    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 1673
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    .line 1678
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    .line 1679
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    sub-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    .line 1684
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1685
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    add-float/2addr v2, v3

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    .line 1689
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    .line 1690
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    .line 1696
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v3

    const/4 v4, 0x0

    const v5, 0x4e6e6b28    # 1.0E9f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchY:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchY:F

    .line 1698
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSmoothingTime:F

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferScrollUpdate:Z

    if-nez v0, :cond_2

    float-to-int v0, v2

    .line 1700
    invoke-virtual {p0, v4, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollBy(II)V

    goto :goto_0

    .line 1702
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    :goto_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    float-to-int p1, v2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    goto :goto_2

    .line 1706
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v6

    if-ltz p1, :cond_5

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchX:F

    .line 1708
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float p1, v2

    div-float/2addr p1, v5

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSmoothingTime:F

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferScrollUpdate:Z

    if-nez p1, :cond_4

    float-to-int p1, v0

    .line 1710
    invoke-virtual {p0, p1, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollBy(II)V

    goto :goto_1

    .line 1712
    :cond_4
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    :goto_1
    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    float-to-int p1, v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    goto :goto_2

    .line 1717
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->awakenScrollBars()Z

    goto :goto_2

    .line 1720
    :cond_6
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_2
    return-void
.end method

.method private actionUp(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1574
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-ne v6, v3, :cond_0

    return-void

    .line 1581
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1582
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaximumVelocity:I

    int-to-float v8, v8

    const/16 v9, 0x3e8

    .line 1584
    invoke-virtual {v6, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1585
    invoke-virtual {v6, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    float-to-int v8, v8

    .line 1586
    invoke-virtual {v6, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    iget v6, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    sub-float v6, v7, v6

    float-to-int v6, v6

    iget v9, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    sub-float v9, v1, v9

    float-to-int v9, v9

    iget v10, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1589
    invoke-virtual {v0, v10}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    iget v11, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1590
    invoke-virtual {v0, v11}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v11

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v12

    const v13, 0x3ecccccd    # 0.4f

    if-eqz v12, :cond_1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v14, v11

    mul-float/2addr v14, v13

    cmpl-float v12, v12, v14

    if-lez v12, :cond_2

    goto :goto_0

    .line 1592
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v14, v10

    mul-float/2addr v14, v13

    cmpl-float v12, v12, v14

    if-lez v12, :cond_2

    :goto_0
    move v12, v5

    goto :goto_1

    :cond_2
    move v12, v4

    :goto_1
    iget v13, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mSnapVelocity:I

    iget v14, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iget v15, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iget v3, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v15, v3

    sub-float/2addr v15, v7

    .line 1595
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v14, v3

    iput v14, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iget v3, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    iget v7, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    iget v14, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    add-float/2addr v7, v14

    sub-float/2addr v7, v1

    .line 1596
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v3, v1

    iput v3, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v1

    const/high16 v3, 0x41c80000    # 25.0f

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v13, :cond_4

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 1599
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v13, :cond_4

    :goto_2
    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v4

    .line 1605
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v3

    const v7, 0x3ea8f5c3    # 0.33f

    if-eqz v3, :cond_5

    .line 1606
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v10, v11

    mul-float/2addr v10, v7

    cmpl-float v3, v3, v10

    if-lez v3, :cond_6

    int-to-float v3, v2

    .line 1607
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v7, v9

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    goto :goto_4

    .line 1610
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v10, v10

    mul-float/2addr v10, v7

    cmpl-float v3, v3, v10

    if-lez v3, :cond_6

    int-to-float v3, v8

    .line 1611
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v7, v6

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    :goto_4
    move v3, v5

    goto :goto_5

    :cond_6
    move v3, v4

    .line 1622
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v7

    if-eqz v7, :cond_7

    move v8, v2

    move v6, v9

    :cond_7
    if-eqz v12, :cond_8

    if-lez v6, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v1, :cond_b

    if-lez v8, :cond_b

    :cond_9
    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ltz v2, :cond_b

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 1629
    :goto_6
    invoke-virtual {v0, v2, v8}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_a

    :cond_b
    if-eqz v12, :cond_c

    if-gez v6, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v1, :cond_f

    if-gez v8, :cond_f

    :cond_d
    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-gt v1, v2, :cond_f

    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    add-int/2addr v1, v5

    .line 1633
    :goto_7
    invoke-virtual {v0, v1, v8}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_a

    .line 1635
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToDestination()V

    goto :goto_a

    :cond_10
    const/4 v1, 0x2

    if-ne v2, v1, :cond_13

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    sub-int/2addr v1, v5

    goto :goto_8

    :cond_11
    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    sub-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_8
    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_12

    .line 1643
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    goto :goto_a

    .line 1645
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToDestination()V

    goto :goto_a

    :cond_13
    const/4 v1, 0x3

    if-ne v2, v1, :cond_16

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    add-int/2addr v1, v5

    goto :goto_9

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    add-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_9
    iget v2, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_15

    .line 1653
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    goto :goto_a

    .line 1655
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToDestination()V

    :cond_16
    :goto_a
    iput v4, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->releaseVelocityTracker()V

    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 8

    .line 1814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1817
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p3, :cond_0

    if-eq v1, p2, :cond_0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mRightSlopEdge:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mBottomSlopEdge:F

    .line 1826
    invoke-static {p1, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1827
    invoke-static {p1, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpl-float v7, v5, v2

    if-ltz v7, :cond_0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_0

    cmpg-float v2, v6, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1842
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0

    .line 1843
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1844
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1852
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0

    .line 1853
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1854
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1795
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1801
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    .line 1802
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    .line 1805
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1806
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setHorizontalOrientation(Landroid/graphics/Canvas;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 990
    invoke-virtual {v0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getVisiblePages([I)V

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    .line 991
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 992
    aget v3, v3, v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_e

    if-eq v3, v7, :cond_e

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getDrawingTime()J

    move-result-wide v8

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getBottom()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v4

    :goto_0
    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 1005
    invoke-virtual {v0, v11}, Lcom/prompt/kiosk/slauncher/PagedView;->getExtraVisiblePage([I)V

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 1006
    aget v12, v11, v4

    .line 1007
    aget v11, v11, v6

    if-ne v12, v7, :cond_2

    if-eq v11, v7, :cond_1

    goto :goto_1

    :cond_1
    move v14, v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v13, v2, -0x1

    .line 1009
    invoke-virtual {v0, v13}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v13

    sub-int/2addr v14, v13

    .line 1010
    invoke-virtual {v0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v13

    invoke-virtual {v0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v15

    sub-int/2addr v13, v15

    add-int/2addr v14, v13

    goto :goto_2

    :cond_3
    move v10, v4

    move v14, v10

    move v11, v7

    move v12, v11

    .line 1025
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v6

    :goto_3
    if-ltz v13, :cond_d

    .line 1026
    invoke-virtual {v0, v13}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    iget-boolean v4, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v4, :cond_6

    if-gt v5, v13, :cond_4

    if-gt v13, v3, :cond_4

    .line 1028
    invoke-virtual {v0, v15}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    if-eq v12, v7, :cond_5

    if-ne v12, v13, :cond_5

    .line 1029
    invoke-virtual {v0, v15}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eq v11, v7, :cond_c

    if-ne v11, v13, :cond_c

    .line 1030
    invoke-virtual {v0, v15}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_6
    const/4 v4, 0x0

    if-ne v12, v13, :cond_8

    if-eqz v10, :cond_7

    int-to-float v14, v14

    .line 1033
    invoke-virtual {v15}, Landroid/view/View;->getTranslationX()F

    move-result v16

    invoke-virtual {v0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationX()F

    move-result v17

    add-float v16, v16, v17

    add-float v14, v14, v16

    float-to-int v14, v14

    :cond_7
    neg-int v6, v14

    int-to-float v6, v6

    .line 1035
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1036
    invoke-virtual {v0, v1, v15, v8, v9}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    int-to-float v6, v14

    .line 1037
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_8
    if-ne v11, v13, :cond_b

    if-eqz v10, :cond_a

    int-to-float v6, v14

    .line 1040
    invoke-virtual {v15}, Landroid/view/View;->getTranslationX()F

    move-result v14

    const/4 v7, 0x2

    if-le v2, v7, :cond_9

    add-int/lit8 v7, v2, -0x2

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v0, v7}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    add-float/2addr v14, v7

    sub-float/2addr v6, v14

    float-to-int v14, v6

    :cond_a
    int-to-float v6, v14

    .line 1042
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1043
    invoke-virtual {v0, v1, v15, v8, v9}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    neg-int v6, v14

    int-to-float v6, v6

    .line 1044
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    .line 1046
    :cond_b
    invoke-virtual {v0, v1, v15, v8, v9}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_c
    :goto_5
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    goto :goto_3

    :cond_d
    iput-boolean v4, v0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    return-void
.end method

.method private setScreenCenter()V
    .locals 2

    .line 1109
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 1112
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollY:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    :goto_1
    add-int/2addr v1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastScreenCenter:I

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceScreenScrolled:Z

    if-eqz v0, :cond_3

    .line 1114
    :cond_2
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->screenScrolled(I)V

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastScreenCenter:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceScreenScrolled:Z

    :cond_3
    return-void
.end method

.method private setVerticalOrientation(Landroid/graphics/Canvas;I)V
    .locals 12

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 1056
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getVisiblePagesVertical([I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    const/4 v1, 0x0

    .line 1057
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 1058
    aget v0, v0, v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    if-eq v0, v4, :cond_a

    .line 1060
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getDrawingTime()J

    move-result-wide v5

    .line 1062
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1063
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1068
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 1069
    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/PagedView;->getExtraVisiblePageVertical([I)V

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTempVisiblePagesRange:[I

    .line 1070
    aget v8, v7, v1

    .line 1071
    aget v7, v7, v3

    if-ne v8, v4, :cond_1

    if-eq v7, v4, :cond_0

    goto :goto_0

    :cond_0
    move v9, v1

    goto :goto_1

    :cond_1
    :goto_0
    sub-int/2addr p2, v3

    .line 1073
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v9

    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result p2

    sub-int/2addr v9, p2

    .line 1074
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p2

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v10

    sub-int/2addr p2, v10

    add-int/2addr v9, p2

    goto :goto_1

    :cond_2
    move v9, v1

    move v7, v4

    move v8, v7

    .line 1084
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_2
    if-ltz p2, :cond_9

    .line 1085
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v10, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v10, :cond_5

    if-gt v2, p2, :cond_3

    if-gt p2, v0, :cond_3

    .line 1087
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_3
    if-eq v8, v4, :cond_4

    if-ne v8, p2, :cond_4

    .line 1088
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    if-eq v7, v4, :cond_8

    if-ne v7, p2, :cond_8

    .line 1089
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_5
    const/4 v10, 0x0

    if-ne v8, p2, :cond_6

    neg-int v11, v9

    int-to-float v11, v11

    .line 1091
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1092
    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    int-to-float v3, v9

    .line 1093
    invoke-virtual {p1, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_6
    if-ne v7, p2, :cond_7

    int-to-float v11, v9

    .line 1095
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1096
    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    neg-int v3, v9

    int-to-float v3, v3

    .line 1097
    invoke-virtual {p1, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 1099
    :cond_7
    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_8
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_9
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method private updateScroll(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ltz p1, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 737
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateCurrentPageScroll()V

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .line 2443
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2445
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPosition()V

    return-void
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 0

    return-void
.end method

.method private updateScrollingIndicatorPositionVertical()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 5

    .line 1480
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    .line 1488
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1489
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    :cond_1
    mul-float/2addr v1, v0

    .line 1492
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    const/4 p1, 0x0

    .line 1495
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    .line 1498
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    .line 1500
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ltz p3, :cond_0

    .line 1163
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1164
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    const/16 p3, 0x11

    if-ne p2, p3, :cond_1

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 1168
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x42

    if-ne p2, p3, :cond_2

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1171
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_2

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    add-int/lit8 p3, p3, 0x1

    .line 1172
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1431
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1433
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2395
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 436
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 439
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    return v1

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    .line 444
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->resetScrollPage()V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 446
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    if-eqz v4, :cond_3

    int-to-float v0, v0

    .line 447
    invoke-virtual {v4, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setMarkerOffset(F)V

    :cond_3
    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 449
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->notifyPageSwitchListener()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 453
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->loadAssociatedPages(I)V

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    :cond_4
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    if-nez v0, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->pageEndMoving()V

    .line 464
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1000

    .line 465
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_6
    return v1

    :cond_7
    return v3
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    .line 1504
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    .line 1508
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->overScrollInfluenceCurve(F)F

    move-result v1

    mul-float/2addr v3, v1

    .line 1511
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    .line 1512
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    :cond_1
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v0

    .line 1515
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    const/4 p1, 0x0

    .line 1518
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    .line 1521
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    .line 1523
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1370
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 8

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1382
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1386
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1387
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    sub-float v0, v1, v0

    .line 1388
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    sub-float v2, p1, v2

    .line 1389
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr p2, v3

    .line 1391
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPagingTouchSlop:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-le v0, p2, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-le v2, p2, :cond_3

    move p2, v5

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    if-le v2, v3, :cond_4

    move v4, v5

    :cond_4
    if-nez v0, :cond_5

    if-nez v6, :cond_5

    if-nez p2, :cond_5

    if-eqz v4, :cond_a

    .line 1398
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v2

    const v3, 0x4e6e6b28    # 1.0E9f

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_9

    :goto_3
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    sub-float/2addr v0, p1

    .line 1401
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    iput v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    .line 1404
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchY:F

    .line 1405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSmoothingTime:F

    .line 1406
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->pageBeginMoving()V

    goto :goto_5

    :cond_7
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUsePagingTouchSlop:Z

    if-eqz p1, :cond_8

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    :goto_4
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    .line 1412
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iput v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    .line 1415
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchX:F

    .line 1416
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSmoothingTime:F

    .line 1417
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->pageBeginMoving()V

    .line 1421
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->cancelCurrentPageLongPress()V

    :cond_a
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 977
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->setScreenCenter()V

    .line 979
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 981
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setVerticalOrientation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 984
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setHorizontalOrientation(Landroid/graphics/Canvas;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    return v1

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1153
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    return v1

    .line 1158
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 1949
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2364
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    xor-int/lit8 p1, p1, 0x1

    .line 2365
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->showScrollingIndicator(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x28a

    .line 2366
    invoke-virtual {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1186
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 1190
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 1196
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1197
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1198
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 2263
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 2267
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected getChildHeight(I)I
    .locals 1

    .line 1889
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getChildOffset(I)I
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 796
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsets:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsetsWithLayoutScale:[I

    :goto_0
    if-eqz v0, :cond_1

    .line 798
    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v1

    .line 801
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 803
    :cond_2
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 805
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 808
    aput v1, v0, p1

    :cond_4
    return v1
.end method

.method protected getChildOffsetVertical(I)I
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 815
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsets:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsetsWithLayoutScale:[I

    :goto_0
    if-eqz v0, :cond_1

    .line 817
    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v1

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 822
    :cond_2
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 824
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 827
    aput v1, v0, p1

    :cond_4
    return v1
.end method

.method protected getChildWidth(I)I
    .locals 1

    .line 1883
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMinimumWidth:I

    if-le v0, p1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 2478
    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExtraVisiblePage([I)V
    .locals 5

    .line 933
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 934
    aput v2, p1, v1

    const/4 v3, 0x1

    .line 935
    aput v2, p1, v3

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v2

    if-gtz v2, :cond_0

    sub-int/2addr v0, v3

    .line 938
    aput v0, p1, v1

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    if-lt v0, v2, :cond_3

    .line 940
    aput v1, p1, v3

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v2

    if-gez v2, :cond_2

    sub-int/2addr v0, v3

    .line 944
    aput v0, p1, v1

    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    if-le v0, v2, :cond_3

    .line 946
    aput v1, p1, v3

    :cond_3
    :goto_0
    return-void
.end method

.method protected getExtraVisiblePageVertical([I)V
    .locals 5

    .line 953
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 954
    aput v2, p1, v1

    const/4 v3, 0x1

    .line 955
    aput v2, p1, v3

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_0

    sub-int/2addr v0, v3

    .line 958
    aput v0, p1, v1

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    if-lt v0, v2, :cond_3

    .line 960
    aput v1, p1, v3

    goto :goto_0

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v2

    if-gez v2, :cond_2

    sub-int/2addr v0, v3

    .line 964
    aput v0, p1, v1

    goto :goto_0

    .line 965
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    if-le v0, v2, :cond_3

    .line 966
    aput v1, p1, v3

    :cond_3
    :goto_0
    return-void
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getPageCount()I
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 2167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2168
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2170
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 7

    .line 1896
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 1897
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 1898
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_3

    .line 1900
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1901
    invoke-virtual {p0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v5

    .line 1902
    div-int/lit8 v5, v5, 0x2

    .line 1903
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 1904
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_0

    move v3, v1

    move v2, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 1912
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_3

    .line 1914
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1915
    invoke-virtual {p0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 1916
    div-int/lit8 v5, v5, 0x2

    .line 1917
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 1918
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_2

    move v3, v1

    move v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method protected getRelativeChildOffset(I)I
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    if-eqz v0, :cond_0

    .line 834
    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildWidth(I)I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    if-eqz v0, :cond_1

    .line 840
    aput v1, v0, p1

    :cond_1
    return v1
.end method

.method protected getRelativeChildOffsetVertical(I)I
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    if-eqz v0, :cond_0

    .line 847
    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildHeight(I)I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    if-eqz v0, :cond_1

    .line 853
    aput v1, v0, p1

    :cond_1
    return v1
.end method

.method protected getScaledMeasuredHeight(Landroid/view/View;)I
    .locals 0

    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 1

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMinimumWidth:I

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 3

    .line 860
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 861
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getScaledRelativeChildOffsetVertical(I)I
    .locals 3

    .line 865
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 6

    .line 1439
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 1440
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p2

    :goto_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr p2, v1

    .line 1441
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1442
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v2

    goto :goto_2

    .line 1443
    :cond_2
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    sub-int v1, p1, v1

    .line 1445
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1446
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    .line 1447
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 1448
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    if-ne p3, v3, :cond_3

    .line 1449
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p3

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    goto :goto_3

    .line 1450
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v3

    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    if-le v3, v5, :cond_6

    if-nez p3, :cond_6

    sub-int/2addr v2, v4

    .line 1451
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p3

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr p3, v1

    .line 1452
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    goto :goto_5

    .line 1456
    :cond_4
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v2, -0x1

    if-ne p3, v3, :cond_5

    .line 1457
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p3

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_3
    sub-int/2addr p3, v1

    neg-int p3, p3

    :goto_4
    add-int/2addr p3, v0

    sub-int v1, p1, p3

    goto :goto_6

    .line 1458
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v3

    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    if-le v3, v5, :cond_6

    if-nez p3, :cond_6

    sub-int/2addr v2, v4

    .line 1459
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p3

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr p3, v1

    .line 1460
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    :goto_5
    sub-int/2addr v1, v2

    add-int/2addr p3, v1

    goto :goto_4

    :cond_6
    :goto_6
    int-to-float p1, v1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 1467
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    .line 1468
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method protected getScrollingIndicator()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getVisiblePages([I)V
    .locals 9

    .line 883
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 885
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    .line 886
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 887
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledRelativeChildOffset(I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v1

    .line 890
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 892
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move v6, v3

    .line 895
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v4

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 897
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    goto :goto_1

    .line 899
    :cond_1
    aput v3, p1, v1

    .line 900
    aput v6, p1, v2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 902
    aput v0, p1, v1

    .line 903
    aput v0, p1, v2

    :goto_2
    return-void
.end method

.method protected getVisiblePagesVertical([I)V
    .locals 9

    .line 908
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 910
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v3

    .line 911
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v4

    .line 912
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledRelativeChildOffsetVertical(I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v1

    .line 915
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v6

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 917
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move v6, v3

    .line 920
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v7

    add-int/2addr v7, v4

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 922
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredHeight(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    goto :goto_1

    .line 924
    :cond_1
    aput v3, p1, v1

    .line 925
    aput v6, p1, v2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    .line 927
    aput v0, p1, v1

    .line 928
    aput v0, p1, v2

    :goto_2
    return-void
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 3

    .line 2400
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2401
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2406
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2407
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPositionVertical()V

    goto :goto_0

    .line 2409
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPosition()V

    .line 2411
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->cancelScrollingIndicatorAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    .line 2413
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 2414
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const-string v0, "alpha"

    .line 2416
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x28a

    .line 2417
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2418
    new-instance v0, Lcom/prompt/kiosk/slauncher/PagedView$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/PagedView$2;-><init>(Lcom/prompt/kiosk/slauncher/PagedView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2429
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3

    .line 1233
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3

    .line 1223
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1224
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1226
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v1, 0x20

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 238
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/prompt/kiosk/slauncher/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/prompt/kiosk/slauncher/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCenterPagesVertically:Z

    sget v0, Lcom/prompt/kiosk/slauncher/PagedView;->HORIZONTAL:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOrientation:I

    .line 243
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchSlop:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPagingTouchSlop:I

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaximumVelocity:I

    .line 247
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDensity:F

    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .line 777
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsets:[I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsetsWithLayoutScale:[I

    return-void

    .line 785
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsets:[I

    .line 786
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    .line 787
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsetsWithLayoutScale:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsets:[I

    const/4 v3, -0x1

    .line 789
    aput v3, v2, v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildRelativeOffsets:[I

    .line 790
    aput v3, v2, v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 791
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2285
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2288
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContentIsRefreshable:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 2296
    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 2301
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->syncPages()V

    .line 2305
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2306
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2305
    invoke-virtual {p0, v2, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->measure(II)V

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 2309
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 2310
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setCurrentPage(I)V

    .line 2314
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 2315
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 2317
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 2321
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->loadAssociatedPages(IZ)V

    .line 2322
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->requestLayout()V

    :cond_5
    return-void
.end method

.method protected isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method public isPossibleWrap()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsWrapMode:Z

    if-eqz v0, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScrollingIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollingIndicatorEnabled:Z

    return v0
.end method

.method public isVerticalOrientation()Z
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOrientation:I

    sget v1, Lcom/prompt/kiosk/slauncher/PagedView;->HORIZONTAL:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2223
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->loadAssociatedPages(IZ)V

    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContentIsRefreshable:Z

    if-eqz v0, :cond_9

    .line 2227
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 2229
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    .line 2230
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v2

    .line 2233
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    add-int/lit8 v3, p1, -0x1

    if-gez v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v6, v0, -0x1

    if-le v3, v6, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_9

    if-eq v6, p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_3

    .line 2244
    :cond_2
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/prompt/kiosk/slauncher/Page;

    .line 2245
    invoke-interface {v7}, Lcom/prompt/kiosk/slauncher/Page;->getPageChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-gt v1, v6, :cond_3

    if-le v6, v2, :cond_4

    :cond_3
    if-eq v3, v4, :cond_6

    if-ne v3, v6, :cond_6

    :cond_4
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 2247
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v6, p1, :cond_5

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v9, v5

    .line 2248
    :goto_2
    invoke-virtual {p0, v6, v9}, Lcom/prompt/kiosk/slauncher/PagedView;->syncPageItems(IZ)V

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 2249
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-lez v8, :cond_7

    .line 2253
    invoke-interface {v7}, Lcom/prompt/kiosk/slauncher/Page;->removeAllViewsOnPage()V

    :cond_7
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 2255
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 1753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 1758
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1760
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v3

    goto :goto_0

    .line 1762
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 1763
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5

    :cond_2
    if-gtz v0, :cond_4

    cmpl-float p1, v2, v3

    if-lez p1, :cond_3

    goto :goto_1

    .line 1769
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1767
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollRight()V

    :goto_2
    return v1

    .line 1776
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2467
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    .line 2468
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 2470
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 2471
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2472
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 2461
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 2462
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1248
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1251
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1258
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const/4 v5, -0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    .line 1344
    :cond_2
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1345
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_3

    :cond_3
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    if-eq v0, v5, :cond_5

    .line 1270
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iput v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    iput-boolean v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1340
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_3

    .line 1281
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionX:F

    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDownMotionY:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionX:F

    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionY:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionXRemainder:F

    iput v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLastMotionYRemainder:F

    iput v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionX:F

    iput v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTotalMotionY:F

    .line 1292
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowLongPress:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1300
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1301
    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v6

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1303
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchSlop:I

    if-ge v6, p1, :cond_7

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchSlop:I

    if-ge p1, v6, :cond_7

    goto :goto_0

    :cond_7
    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    goto :goto_1

    :cond_8
    :goto_0
    iput v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1310
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :goto_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    if-eq p1, v1, :cond_a

    if-eq p1, v3, :cond_a

    .line 1319
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 1320
    invoke-virtual {p0, v0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->hitsPreviousPage(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    iput v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    goto :goto_2

    .line 1322
    :cond_9
    invoke-virtual {p0, v0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->hitsNextPage(FF)Z

    move-result p1

    if-eqz p1, :cond_a

    iput v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    .line 1328
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1329
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mRightSlopEdge:F

    .line 1330
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mEdgeSlop:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mBottomSlopEdge:F

    :goto_3
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 644
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 645
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    .line 647
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    if-lez v2, :cond_2

    .line 650
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v6

    :goto_0
    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    if-gez p2, :cond_3

    sub-int/2addr p5, p3

    .line 655
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p0, p5}, Lcom/prompt/kiosk/slauncher/PagedView;->setPageSpacing(I)V

    :cond_3
    move p2, v6

    :goto_1
    if-ge p2, v2, :cond_6

    .line 659
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    .line 660
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eq p4, v4, :cond_5

    .line 661
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 662
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 663
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCenterPagesVertically:Z

    if-eqz v3, :cond_4

    .line 665
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v7

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    sub-int/2addr v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 668
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, v0

    add-int v3, p1, p5

    invoke-virtual {p3, v0, p1, p4, v3}, Landroid/view/View;->layout(IIII)V

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr p5, p3

    add-int/2addr p1, p5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    if-nez p1, :cond_8

    .line 673
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOldMeasuredHeight:I

    if-eq p1, p2, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    .line 674
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOldMeasuredHeight:I

    .line 675
    invoke-direct {p0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScroll(Z)V

    goto/16 :goto_5

    :cond_9
    if-lez v2, :cond_a

    .line 680
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result p3

    iget p5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    if-gez p5, :cond_b

    sub-int/2addr p4, p2

    .line 683
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0, p4}, Lcom/prompt/kiosk/slauncher/PagedView;->setPageSpacing(I)V

    goto :goto_3

    :cond_a
    move p3, v6

    :cond_b
    :goto_3
    move p2, v6

    :goto_4
    if-ge p2, v2, :cond_e

    .line 688
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p4

    .line 689
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v4, :cond_d

    .line 690
    invoke-virtual {p0, p4}, Lcom/prompt/kiosk/slauncher/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p5

    .line 691
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 692
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v3

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    iget-boolean v7, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCenterPagesVertically:Z

    if-eqz v7, :cond_c

    .line 694
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    .line 697
    :cond_c
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, p3

    add-int/2addr v1, v3

    invoke-virtual {p4, p3, v3, v7, v1}, Landroid/view/View;->layout(IIII)V

    iget p4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    add-int/2addr p5, p4

    add-int/2addr p3, p5

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPendingUpdateScrollPos:Z

    if-eqz p1, :cond_10

    :cond_f
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ltz p1, :cond_10

    .line 713
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_10

    .line 714
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 720
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateCurrentPageScroll()V

    .line 722
    invoke-virtual {p0, v5}, Lcom/prompt/kiosk/slauncher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPendingUpdateScrollPos:Z

    if-eqz p1, :cond_10

    iput-boolean v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPendingUpdateScrollPos:Z

    :cond_10
    :goto_5
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ltz p1, :cond_11

    .line 730
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_11

    iput-boolean v6, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFirstLayout:Z

    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_0

    .line 482
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 486
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 487
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 488
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Workspace can only be used in EXACTLY mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 493
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 502
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 503
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 506
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 507
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    .line 512
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    const/high16 v8, -0x80000000

    if-ge v6, v4, :cond_6

    .line 515
    invoke-virtual {p0, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    .line 516
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 519
    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_4

    move v11, v8

    goto :goto_2

    :cond_4
    move v11, v3

    .line 526
    :goto_2
    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v12, :cond_5

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    sub-int v10, v1, v2

    iget-object v12, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 532
    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v12

    iget-object v12, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v12

    .line 533
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v11, p2, v0

    iget-object v12, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 534
    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 535
    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 537
    invoke-virtual {v9, v10, v8}, Landroid/view/View;->measure(II)V

    .line 538
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-ne p1, v8, :cond_7

    add-int p2, v7, v0

    .line 545
    :cond_7
    invoke-virtual {p0, v1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->setMeasuredDimension(II)V

    .line 550
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidateCachedOffsets()V

    .line 552
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 553
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPositionVertical()V

    if-lez v4, :cond_8

    add-int/lit8 v4, v4, -0x1

    .line 555
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p1

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    goto :goto_4

    :cond_8
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    :goto_4
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    goto :goto_6

    .line 561
    :cond_9
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPosition()V

    if-lez v4, :cond_a

    add-int/lit8 v4, v4, -0x1

    .line 563
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    goto :goto_5

    :cond_a
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    :goto_5
    iput v5, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    :goto_6
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->showScrollingIndicator(Z)V

    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->hideScrollingIndicator(Z)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1138
    :goto_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1541
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1543
    :cond_0
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1565
    :cond_1
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    if-ne p1, v1, :cond_3

    .line 1558
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToDestination()V

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchState:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mActivePointerId:I

    .line 1562
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->releaseVelocityTracker()V

    goto :goto_0

    .line 1551
    :cond_4
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->actionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1554
    :cond_5
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->actionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1548
    :cond_6
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->actionDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 767
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mForceScreenScrolled:Z

    .line 772
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    .line 773
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1527
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    .line 341
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsPageMoving:Z

    .line 348
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1859
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1860
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1861
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1862
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1122
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->indexToPage(I)I

    move-result p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 1123
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1124
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 1213
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1216
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public resetScrollPage()V
    .locals 5

    .line 2495
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2496
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    .line 2498
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v2

    .line 2499
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 2500
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 2501
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollY(I)V

    goto :goto_0

    .line 2502
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    if-le v0, v4, :cond_1

    .line 2503
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollY(I)V

    .line 2506
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    goto :goto_2

    .line 2508
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2509
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    .line 2510
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v2

    .line 2511
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 2512
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_3

    .line 2513
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    goto :goto_1

    .line 2514
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    if-le v0, v4, :cond_4

    .line 2515
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->setScrollX(I)V

    .line 2518
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    :goto_2
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 4

    .line 745
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicator()V

    :cond_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 749
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 750
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {p0, p1, v1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 753
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v3, v2

    .line 756
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 758
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    :cond_3
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollY:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    .line 387
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 2149
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2150
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-lez v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 2152
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    if-lez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 2157
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 2160
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollY:I

    .line 396
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollY:I

    move p1, v1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    .line 403
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    .line 406
    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_6

    int-to-float v0, p1

    .line 408
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->overScroll(F)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_3

    .line 411
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 413
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->overScroll(F)V

    goto :goto_1

    :cond_3
    if-gez p2, :cond_4

    .line 416
    invoke-super {p0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mMaxScrollY:I

    if-le p2, v0, :cond_5

    .line 418
    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_5
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mOverScrollY:I

    .line 425
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_6
    :goto_1
    int-to-float p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchX:F

    int-to-float p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTouchY:F

    .line 431
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mSmoothingTime:F

    return-void
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 6

    .line 572
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 574
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    .line 576
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 578
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 579
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 583
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    .line 585
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 587
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_1
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method setCurrentPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 315
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 316
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    if-eqz v0, :cond_2

    int-to-float p1, p1

    .line 325
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setMarkerOffset(F)V

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateCurrentPageScroll()V

    .line 327
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicator()V

    .line 328
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->notifyPageSwitchListener()V

    .line 329
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    return-void
.end method

.method protected setDataIsReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsDataReady:Z

    return-void
.end method

.method setFadeForOverScroll(F)V
    .locals 0

    return-void
.end method

.method public setLayoutScale(F)V
    .locals 7

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLayoutScale:F

    .line 600
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidateCachedOffsets()V

    .line 603
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result p1

    .line 604
    new-array v0, p1, [F

    .line 605
    new-array v1, p1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 607
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 608
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v0, v3

    .line 609
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 613
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 614
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->requestLayout()V

    .line 615
    invoke-virtual {p0, v3, v4}, Lcom/prompt/kiosk/slauncher/PagedView;->measure(II)V

    .line 616
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/prompt/kiosk/slauncher/PagedView;->layout(IIII)V

    :goto_1
    if-ge v2, p1, :cond_1

    .line 618
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 619
    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 620
    aget v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 625
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 376
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 378
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPageSpacing:I

    .line 630
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public setPositionMarker(Lcom/prompt/kiosk/slauncher/PositionMarker;)V
    .locals 3

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    .line 2339
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setPositionMaxCount(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    .line 2340
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setPositionCount(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    const/4 v0, 0x0

    .line 2341
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->skipDrawIfOneMarker(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    .line 2342
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2343
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2342
    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setMarker(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    .line 2344
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setMarkerPadding(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mPositionMarker:Lcom/prompt/kiosk/slauncher/PositionMarker;

    .line 2345
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getCurrentPage()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setMarkerOffset(F)V

    return-void
.end method

.method public setScrollingIndicator(Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 2332
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 2333
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setScrollingIndicatorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollingIndicatorEnabled:Z

    return-void
.end method

.method public setWrapMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mIsWrapMode:Z

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected showScrollingIndicator(Z)V
    .locals 3

    .line 2370
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2371
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2376
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2377
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPositionVertical()V

    goto :goto_0

    .line 2379
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->updateScrollingIndicatorPosition()V

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 2381
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2382
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->cancelScrollingIndicatorAnimations()V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 2384
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    new-array v1, v1, [F

    aput v0, v1, v2

    const-string v0, "alpha"

    .line 2386
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 2387
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2388
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1930
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(I)V
    .locals 1

    const/16 v0, 0x226

    .line 2056
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 4

    .line 2060
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPageVertical(II)V

    return-void

    .line 2065
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2068
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez p1, :cond_1

    .line 2071
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_1

    :cond_1
    if-le p1, v0, :cond_2

    .line 2074
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2075
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    move v0, p1

    move p1, v1

    goto :goto_1

    .line 2077
    :cond_2
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    goto :goto_0

    .line 2080
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2081
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v0, v1

    .line 2086
    invoke-virtual {p0, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 2117
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    .line 2118
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 2119
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTmpDeltaForNextPage:I

    .line 2123
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->pageBeginMoving()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mTmpDeltaForNextPage:I

    .line 2125
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/PagedView;->awakenScrollBars(I)Z

    if-nez p3, :cond_1

    .line 2127
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_1
    move v5, p3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 2130
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2131
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollY:I

    const/4 v3, 0x0

    move v4, p2

    .line 2132
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    .line 2134
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferScrollUpdate:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mNextPage:I

    .line 2140
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->loadAssociatedPages(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 2144
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->notifyPageSwitchListener()V

    .line 2145
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidate()V

    return-void
.end method

.method protected snapToPageVertical(II)V
    .locals 4

    .line 2090
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2093
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez p1, :cond_0

    .line 2096
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_1

    :cond_0
    if-le p1, v0, :cond_1

    .line 2099
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2100
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    move v0, p1

    move p1, v1

    goto :goto_1

    .line 2102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    goto :goto_0

    .line 2105
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2106
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollY:I

    sub-int/2addr v0, v1

    .line 2111
    invoke-virtual {p0, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6

    .line 1953
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPageWithVelocityVertical(II)V

    return-void

    .line 1958
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1

    const/16 p2, 0x226

    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(II)V

    return-void

    .line 1965
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1968
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez p1, :cond_2

    .line 1971
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    move v5, v0

    move v0, p1

    move p1, v5

    goto :goto_1

    :cond_2
    if-le p1, v0, :cond_3

    .line 1974
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1975
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    move v0, p1

    move p1, v1

    goto :goto_1

    .line 1977
    :cond_3
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    goto :goto_0

    .line 1980
    :cond_4
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1981
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 1984
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v0, v2

    .line 1992
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 1993
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 1995
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v2, 0x898

    .line 1996
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 2001
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 2003
    invoke-virtual {p0, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithVelocityVertical(II)V
    .locals 6

    .line 2007
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    const/16 p2, 0x226

    .line 2010
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(II)V

    return-void

    .line 2014
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2017
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez p1, :cond_1

    .line 2020
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    move v5, v0

    move v0, p1

    move p1, v5

    goto :goto_1

    :cond_1
    if-le p1, v0, :cond_2

    .line 2023
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2024
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    move v0, p1

    move p1, v1

    goto :goto_1

    .line 2026
    :cond_2
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    goto :goto_0

    .line 2029
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2030
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 2033
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mUnboundedScrollY:I

    sub-int/2addr v0, v2

    .line 2041
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 2042
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 2044
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v2, 0x898

    .line 2045
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 2050
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 2052
    invoke-virtual {p0, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->snapToPage(III)V

    return-void
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->isVerticalOrientation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 301
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffsetVertical(I)I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffsetVertical(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 302
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 303
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    .line 305
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildOffset(I)I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedView;->scrollTo(II)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    :goto_0
    return-void
.end method
