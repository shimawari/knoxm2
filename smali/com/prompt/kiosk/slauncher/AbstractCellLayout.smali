.class public abstract Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.super Landroid/view/ViewGroup;
.source "AbstractCellLayout.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;,
        Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;,
        Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;,
        Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;,
        Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;
    }
.end annotation


# static fields
.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "AbstractCellLayout"

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBlockMultiSelDrawing:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Point;

.field protected mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private final mFolderDistanceRect:Landroid/graphics/Rect;

.field mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field protected mHeightGap:I

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDragOverlapping:Z

.field private mItemPlacementDirty:Z

.field mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field protected mMaxGap:I

.field private final mMultiSelPaint:Landroid/graphics/Paint;

.field private mMultiSelections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field protected mOriginalCellHeight:I

.field protected mOriginalCellWidth:I

.field protected mOriginalHeightGap:I

.field protected mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPageRect:Landroid/graphics/Rect;

.field mPreviousReorderDirection:[I

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I

.field protected mWidthGap:I

.field private mWorkspaceReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mScrollingTransformsDirty:Z

    .line 66
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpXY:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v2, v1

    .line 82
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAlphas:[F

    array-length v1, v1

    .line 83
    new-array v1, v1, [Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPageRect:Landroid/graphics/Rect;

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mMultiSelPaint:Landroid/graphics/Paint;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIsDragOverlapping:Z

    new-array v1, p3, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDirectionVector:[I

    new-array v1, p3, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPreviousReorderDirection:[I

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mItemPlacementDirty:Z

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 1142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    .line 2754
    new-instance p3, Ljava/util/WeakHashMap;

    invoke-direct {p3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mMultiSelections:Ljava/util/WeakHashMap;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mBlockMultiSelDrawing:Z

    .line 141
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setWillNotDraw(Z)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 144
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p3, 0x1

    const/4 v1, -0x1

    aput v1, v0, p3

    aput v1, v0, p2

    move p3, p2

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 148
    array-length v2, v0

    if-ge p3, v2, :cond_0

    .line 149
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0a0002

    .line 158
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAlphas:[F

    const/4 v2, 0x0

    .line 164
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    :goto_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 166
    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 167
    new-instance v1, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    int-to-long v3, v0

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 168
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;

    invoke-direct {v4, p0, v1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;

    invoke-direct {v4, p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 197
    aput-object v1, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 201
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p2

    const v0, 0x7f08006c

    .line 203
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f08006d

    .line 204
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f07005f

    .line 205
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mForegroundPadding:I

    .line 206
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mForegroundRect:Landroid/graphics/Rect;

    const p2, 0x7f070001

    .line 207
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3df5c28f    # 0.12f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderHintAnimationMagnitude:F

    .line 208
    check-cast p1, Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[F
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAlphas:[F

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[Landroid/graphics/Point;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderHintAnimationMagnitude:F

    return p0
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method private addViewInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[I[[ZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I[[Z",
            "Landroid/view/View;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 2504
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2505
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2506
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    .line 2510
    aget v7, p3, v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-gez v7, :cond_0

    .line 2511
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    move v7, v8

    :goto_0
    move v8, v9

    goto :goto_2

    :cond_0
    if-lez v7, :cond_1

    .line 2514
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v6

    invoke-virtual {v4, v7, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    move v7, v6

    goto :goto_0

    .line 2516
    :cond_1
    aget v7, p3, v9

    if-gez v7, :cond_2

    .line 2517
    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    move v7, v9

    goto :goto_2

    :cond_2
    if-lez v7, :cond_3

    .line 2520
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    move v8, v6

    goto :goto_1

    :cond_3
    move v7, v9

    move v8, v7

    :goto_2
    move v10, v9

    move v11, v10

    :goto_3
    if-ge v10, v3, :cond_b

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 2525
    invoke-virtual {v12, v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2526
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v13, p5

    if-ne v12, v13, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object/from16 v14, p6

    .line 2527
    iget-object v15, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2529
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 2530
    iget v9, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    move/from16 v17, v3

    iget v3, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v13, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v14, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v13, v14

    iget v14, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    move/from16 p3, v11

    iget v11, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v14, v11

    invoke-virtual {v5, v9, v3, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2531
    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2532
    iget-boolean v3, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_5

    const/4 v3, 0x0

    return v3

    :cond_5
    const/4 v3, 0x0

    .line 2536
    iget v6, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    move v9, v3

    :goto_4
    iget v11, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v13, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v11, v13

    if-ge v6, v11, :cond_8

    .line 2537
    iget v11, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    :goto_5
    iget v13, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v14, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v13, v14

    if-ge v11, v13, :cond_7

    sub-int v13, v6, v8

    if-ltz v13, :cond_6

    iget v14, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v13, v14, :cond_6

    sub-int v14, v11, v7

    if-ltz v14, :cond_6

    iget v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v14, v3, :cond_6

    .line 2540
    aget-object v3, p4, v13

    sub-int v13, v11, v7

    aget-boolean v3, v3, v13

    if-eqz v3, :cond_6

    const/4 v9, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    if-eqz v9, :cond_a

    .line 2546
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    iget v3, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v6, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v9, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v11, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v9, v11

    iget v11, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v12, v15, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v11, v12

    invoke-virtual {v2, v3, v6, v9, v11}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v11, 0x1

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v17, v3

    move/from16 p3, v11

    :cond_a
    move/from16 v11, p3

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v17

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_b
    move/from16 p3, v11

    return p3
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z
    .locals 10

    .line 2392
    iget-object p4, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2394
    iget v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v0, 0x1

    .line 2395
    invoke-direct {p0, p2, p4, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 2397
    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v5, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    const/4 p3, 0x0

    .line 2399
    aget p4, p2, p3

    if-ltz p4, :cond_0

    aget p2, p2, v0

    if-ltz p2, :cond_0

    .line 2400
    iput p4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    .line 2401
    aget p2, p2, v0

    iput p2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    goto :goto_0

    :cond_0
    move v0, p3

    .line 2405
    :goto_0
    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v5, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    return v0
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[IZ",
            "Landroid/view/View;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    .line 2411
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    .line 2416
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v12, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2417
    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    if-nez v12, :cond_1

    .line 2419
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v4, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v5, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v2

    goto :goto_0

    .line 2421
    :cond_1
    iget v2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v4, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v5, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v1

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 2426
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    :goto_1
    if-eqz p4, :cond_3

    iget-object v4, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 2429
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[I[[ZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2434
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2435
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2436
    iget v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 2439
    :cond_4
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Z

    .line 2440
    iget v8, v12, Landroid/graphics/Rect;->top:I

    .line 2441
    iget v14, v12, Landroid/graphics/Rect;->left:I

    .line 2444
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2445
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2446
    iget v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    sub-int/2addr v1, v14

    iget v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, v8

    iget v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    move-object/from16 v1, p2

    .line 2449
    invoke-direct {v9, v1, v0, v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    if-eqz p4, :cond_6

    .line 2452
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2453
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    iget-object v8, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 2452
    invoke-direct/range {v0 .. v8}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestAreaInDirection(IIII[I[[Z[[Z[I)[I

    goto :goto_4

    .line 2455
    :cond_6
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2456
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    iget-object v8, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 2455
    invoke-direct/range {v0 .. v8}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    :goto_4
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    .line 2460
    aget v2, v0, v1

    if-ltz v2, :cond_7

    aget v0, v0, v11

    if-ltz v0, :cond_7

    .line 2461
    iget v0, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    .line 2462
    aget v0, v0, v11

    iget v1, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 2463
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2464
    iget-object v4, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2465
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    .line 2466
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    goto :goto_5

    :cond_7
    move v11, v1

    .line 2472
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2473
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 2474
    iget v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_6

    :cond_9
    return v11
.end method

.method private animateItemsToSolution(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v2, v3, :cond_0

    .line 1753
    aget-object v3, v10, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1757
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v11

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_4

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1759
    invoke-virtual {v0, v12}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v13, p2

    if-ne v1, v13, :cond_2

    goto :goto_3

    .line 1761
    :cond_2
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    if-eqz v14, :cond_3

    .line 1763
    iget v2, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v3, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1764
    iget v1, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v2, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v3, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v4, v14, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 1768
    iget v1, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewX:I

    iget v2, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewY:I

    iget v3, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x0

    .line 2267
    aget v0, p3, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v8, 0x1

    aget v1, p3, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v8, :cond_4

    .line 2270
    aget v9, p3, v8

    .line 2271
    aput v7, p3, v8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2272
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v8

    .line 2275
    :cond_0
    aput v9, p3, v8

    .line 2276
    aget v9, p3, v7

    .line 2277
    aput v7, p3, v7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2278
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v8

    .line 2282
    :cond_1
    aput v9, p3, v7

    mul-int/lit8 v9, v9, -0x1

    .line 2285
    aput v9, p3, v7

    .line 2286
    aget v0, p3, v8

    mul-int/lit8 v9, v0, -0x1

    aput v9, p3, v8

    .line 2288
    aput v7, p3, v8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2289
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v8

    .line 2293
    :cond_2
    aput v9, p3, v8

    .line 2294
    aget v9, p3, v7

    .line 2295
    aput v7, p3, v7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2296
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v8

    .line 2300
    :cond_3
    aput v9, p3, v7

    mul-int/lit8 v9, v9, -0x1

    .line 2301
    aput v9, p3, v7

    .line 2302
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2307
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v8

    .line 2312
    :cond_5
    aget v0, p3, v7

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v7

    .line 2313
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2314
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v8

    .line 2318
    :cond_6
    aget v0, p3, v7

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v7

    .line 2319
    aget v1, p3, v8

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v8

    .line 2326
    aput v0, p3, v8

    .line 2327
    aput v1, p3, v7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2328
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v8

    .line 2333
    :cond_7
    aget v0, p3, v7

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v7

    .line 2334
    aget v0, p3, v8

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2335
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v8

    .line 2339
    :cond_8
    aget v0, p3, v7

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v7

    .line 2340
    aget v1, p3, v8

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v8

    .line 2344
    aput v0, p3, v8

    .line 2345
    aput v1, p3, v7

    :goto_0
    return v7
.end method

.method private beginOrAdjustHintAnimations(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 12

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1775
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1777
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p2, :cond_0

    goto :goto_1

    .line 1779
    :cond_0
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 1780
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 1782
    new-instance v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    iget v5, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v6, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v7, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v8, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v9, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v10, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    move-object v2, v11

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Landroid/view/View;IIIIII)V

    .line 1783
    invoke-virtual {v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->animate()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 857
    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commitTempPlacement()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 1680
    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1683
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1685
    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1686
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1687
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eqz v3, :cond_6

    .line 1691
    iget v5, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_3

    iget v5, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    if-eq v5, v6, :cond_2

    goto :goto_3

    :cond_2
    move v5, v0

    goto :goto_4

    :cond_3
    :goto_3
    move v5, v7

    :goto_4
    if-nez v5, :cond_4

    .line 1692
    iget v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v8, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v8, :cond_4

    iget v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget v8, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v8, :cond_5

    .line 1693
    :cond_4
    iput-boolean v7, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->requiresDbUpdate:Z

    .line 1695
    :cond_5
    iget v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    iput v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iput v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 1696
    iget v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    iput v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iput v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 1697
    iget v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 1698
    iget v6, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    iput v6, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-eqz v5, :cond_6

    .line 1700
    iget v5, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput v5, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    .line 1701
    iget v4, v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1705
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateItemLocationsInDatabase(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)V

    return-void
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 1671
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 1672
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->access$400(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 1674
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    div-float v0, p2, p1

    float-to-double v0, v0

    .line 1848
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 1850
    aput v2, p3, v2

    const/4 v3, 0x1

    .line 1851
    aput v2, p3, v3

    .line 1852
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 1853
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v2

    .line 1855
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, v6

    if-lez p1, :cond_1

    .line 1856
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v3

    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Z)V
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1709
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1711
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1712
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 1715
    new-instance v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    iget v5, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    iget v7, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;-><init>(IIII)V

    goto :goto_1

    .line 1717
    :cond_0
    new-instance v4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    iget v5, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;-><init>(IIII)V

    .line 1719
    :goto_1
    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v2, v3, :cond_0

    .line 1863
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    .line 1726
    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1730
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1732
    invoke-virtual {v2, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_2

    goto :goto_3

    .line 1734
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1735
    iget-object v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    if-eqz v2, :cond_3

    .line 1737
    iget v4, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    .line 1738
    iget v4, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    .line 1739
    iget v4, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    .line 1740
    iget v4, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    .line 1741
    iget v6, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v8, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iget v9, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1744
    :cond_4
    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewX:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewY:I

    iget v5, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v6, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    :goto_0
    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iget v5, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v5, v11

    const/4 v12, 0x1

    if-ge v9, v11, :cond_7

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v4, v13

    if-ge v11, v13, :cond_6

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_3

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_2

    add-int v15, v11, v13

    .line 2000
    aget-object v15, p6, v15

    add-int v16, v9, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_1

    if-eqz p7, :cond_5

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_1

    goto :goto_5

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    sub-int v13, v11, p1

    mul-int v14, v13, v13

    sub-int v15, v9, p2

    mul-int v16, v15, v15

    add-int v14, v14, v16

    int-to-double v6, v14

    .line 2006
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    int-to-float v13, v13

    int-to-float v14, v15

    .line 2008
    invoke-direct {v0, v13, v14, v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->computeDirectionVector(FF[I)V

    const/4 v13, 0x0

    .line 2011
    aget v14, p5, v13

    aget v15, v7, v13

    mul-int v13, v14, v15

    aget v0, p5, v12

    aget v7, v7, v12

    mul-int v17, v0, v7

    add-int v13, v13, v17

    .line 2015
    invoke-static {v6, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-static {v6, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5

    if-le v13, v8, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 2019
    aput v11, v3, v0

    .line 2020
    aput v9, v3, v12

    move v10, v6

    move v8, v13

    :cond_5
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v10, v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2027
    aput v0, v3, v1

    .line 2028
    aput v0, v3, v12

    :cond_8
    return-object v3
.end method

.method private findNearestAreaInDirection(IIII[I[[Z[[Z[I)[I
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 2354
    aput v5, v3, v4

    const/4 v6, 0x1

    .line 2355
    aput v5, v3, v6

    .line 2359
    aget v5, p5, v4

    if-eqz v5, :cond_1

    aget v7, p5, v6

    if-nez v7, :cond_2

    :cond_1
    if-nez v5, :cond_3

    aget v7, p5, v6

    if-nez v7, :cond_3

    :cond_2
    return-object v3

    :cond_3
    add-int/2addr v5, p1

    .line 2365
    aget v7, p5, v6

    add-int v7, p2, v7

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    if-ltz v5, :cond_9

    add-int v9, v5, v1

    iget v10, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-gt v9, v10, :cond_9

    if-ltz v7, :cond_9

    add-int v9, v7, v2

    iget v10, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-gt v9, v10, :cond_9

    move v9, v4

    move v10, v9

    :goto_2
    if-ge v9, v1, :cond_7

    move v11, v4

    :goto_3
    if-ge v11, v2, :cond_6

    add-int v12, v5, v9

    .line 2371
    aget-object v12, p6, v12

    add-int v13, v7, v11

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_5

    if-eqz p7, :cond_4

    aget-object v12, p7, v9

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_5

    :cond_4
    move v10, v6

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-nez v10, :cond_8

    sub-int v9, v5, p1

    mul-int/2addr v9, v9

    sub-int v10, v7, p2

    mul-int/2addr v10, v10

    add-int/2addr v9, v10

    int-to-double v9, v9

    .line 2377
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 2378
    invoke-static {v9, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_8

    .line 2380
    aput v5, v3, v4

    .line 2381
    aput v7, v3, v6

    move v8, v9

    .line 2384
    :cond_8
    aget v9, p5, v4

    add-int/2addr v5, v9

    .line 2385
    aget v9, p5, v6

    add-int/2addr v7, v9

    goto :goto_1

    :cond_9
    return-object v3
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 1571
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I)[I

    .line 1572
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    aget v1, v6, v12

    const/4 v13, 0x1

    aget v2, v6, v13

    move-object v5, v7

    .line 1573
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 1574
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1576
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aget v1, v6, v12

    aget v2, v6, v13

    iget-object v7, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v14

    .line 1577
    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 1580
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1581
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1583
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 1585
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    .line 1586
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    iget v2, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-eq v6, v2, :cond_0

    iget v3, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ne v9, v3, :cond_1

    :cond_0
    move v0, v12

    :cond_1
    if-eq v7, v2, :cond_2

    iget v2, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ne v10, v2, :cond_3

    :cond_2
    move v1, v12

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 1597
    aput v13, v11, v12

    .line 1598
    aput v12, v11, v13

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    int-to-float v1, v1

    .line 1600
    invoke-direct {p0, v0, v1, v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->computeDirectionVector(FF[I)V

    :goto_0
    return-void
.end method

.method static getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V
    .locals 12

    move-object v0, p1

    add-int/lit8 v1, p4, -0x1

    add-int/lit8 v2, p5, -0x1

    const v3, 0x7f07005e

    .line 2581
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez p6, :cond_0

    const v4, 0x7f070054

    .line 2583
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070051

    .line 2584
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070068

    .line 2585
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070059

    .line 2586
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07000c

    .line 2587
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f07000e

    .line 2588
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f070010

    .line 2589
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f07000a

    .line 2590
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v4, 0x7f070055

    .line 2593
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070052

    .line 2594
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070069

    .line 2595
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f07005a

    .line 2596
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07000d

    .line 2597
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f07000f

    .line 2598
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f070011

    .line 2599
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f07000b

    .line 2600
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    if-ltz v6, :cond_2

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, p0

    goto :goto_4

    :cond_2
    :goto_2
    sub-int v6, p2, v8

    sub-int/2addr v6, v9

    sub-int v7, p3, v10

    sub-int/2addr v7, v0

    mul-int v0, p4, v4

    sub-int/2addr v6, v0

    mul-int v0, p5, v5

    sub-int/2addr v7, v0

    const/4 v0, 0x0

    if-lez v1, :cond_3

    .line 2608
    div-int/2addr v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v2, :cond_4

    .line 2609
    div-int v0, v7, v2

    :cond_4
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 2611
    :goto_4
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    add-int v0, p1, p3

    add-int v1, p2, p4

    .line 1823
    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1825
    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    .line 1826
    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1827
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1828
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1830
    invoke-virtual {p4, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p4, p5, :cond_1

    goto :goto_1

    .line 1832
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1833
    iget v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1834
    invoke-static {p7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 1835
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    .line 1837
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 124
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 126
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    .line 812
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v0, v1, :cond_1

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 818
    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    if-ge v0, v1, :cond_2

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-ge v1, v2, :cond_1

    .line 2173
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private multiSelInvalidateHelper()V
    .locals 0

    .line 2839
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    return-void
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z
    .locals 8

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    if-gez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 1873
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 1874
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_1

    .line 1878
    iget-object v1, p7, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    if-eqz v1, :cond_1

    .line 1880
    iput p1, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    .line 1881
    iput p2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    .line 1884
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1885
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1886
    iget-object p2, p7, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-ne p3, p6, :cond_3

    goto :goto_0

    .line 1888
    :cond_3
    iget-object p4, p7, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;

    .line 1889
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1890
    iget v3, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v4, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget v5, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iget v6, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iget p4, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, p4

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1891
    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1892
    iget-boolean p4, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    if-nez p4, :cond_4

    return v0

    :cond_4
    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 1895
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 1902
    invoke-direct/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    return p2

    :cond_6
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p5

    move-object v6, p6

    move-object v7, p7

    .line 1907
    invoke-direct/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[IZLandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p2

    :cond_7
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 1912
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 1913
    invoke-direct {p0, p3, p4, p5, p7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result p3

    if-nez p3, :cond_8

    return v0

    :cond_9
    return p2

    :cond_a
    :goto_1
    return v0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 132
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 133
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Z)Z
    .locals 3

    .line 879
    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_3

    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_3

    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    .line 882
    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iput v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    .line 883
    :cond_0
    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    iput v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    .line 885
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 887
    invoke-virtual {p3, p1, p2, p4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_2

    .line 889
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 379
    array-length v2, v1

    const/4 v3, 0x0

    if-ge p2, v2, :cond_2

    aget-object v1, v1, p2

    array-length v1, v1

    if-ge p3, v1, :cond_2

    .line 386
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    aget-object v1, v1, p2

    aget-boolean v1, v1, p3

    if-nez v1, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 390
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 391
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 392
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    iget v2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 396
    iget v4, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 397
    iget v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    aget-object v5, v5, v6

    iget v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    aput-boolean v3, v5, v6

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    .line 398
    aget-object v5, v5, p2

    const/4 v6, 0x1

    aput-boolean v6, v5, p3

    .line 400
    iput-boolean v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 401
    iput p2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    .line 402
    iput p3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    .line 403
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setupLp(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;)V

    .line 404
    iput-boolean v3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 405
    iget p2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 406
    iget p3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    .line 408
    iput v2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 409
    iput v4, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    if-nez p4, :cond_1

    .line 412
    iput-boolean v6, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    return v6

    :cond_1
    const-string v0, "x"

    filled-new-array {v2, p2}, [I

    move-result-object p2

    .line 416
    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const-string v0, "y"

    filled-new-array {v4, p3}, [I

    move-result-object p3

    .line 417
    invoke-static {v0, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v0, v3

    aput-object p3, v0, v6

    .line 418
    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    int-to-long p3, p4

    .line 419
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 420
    invoke-virtual {p3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance p3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;

    invoke-direct {p3, p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 426
    new-instance p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$4;

    invoke-direct {p1, p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$4;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long p3, p5

    .line 443
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 444
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    return v6

    :cond_2
    return v3
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    .line 2180
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildren()Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    move-result-object v2

    iget-object v3, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    if-nez p6, :cond_0

    iget-object v3, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    .line 2186
    :cond_0
    invoke-virtual {v2, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    .line 2187
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 2188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    .line 2191
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    .line 2192
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    .line 2193
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    :cond_1
    iget v5, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 2197
    iget v7, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    const/4 v11, 0x1

    if-eqz p7, :cond_2

    .line 2199
    iget v12, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    aget-object v12, v3, v12

    iget v13, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    aput-boolean v6, v12, v13

    .line 2200
    aget-object v3, v3, v0

    aput-boolean v11, v3, v1

    .line 2202
    :cond_2
    iput-boolean v11, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p6, :cond_3

    .line 2204
    iput v0, v4, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iput v0, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    .line 2205
    iput v1, v4, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iput v1, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    goto :goto_0

    .line 2207
    :cond_3
    iput v0, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    .line 2208
    iput v1, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    .line 2210
    :goto_0
    invoke-virtual {v2, v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setupLp(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;)V

    .line 2211
    iput-boolean v6, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2212
    iget v4, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 2213
    iget v6, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    .line 2215
    iput v5, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 2216
    iput v7, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    if-ne v5, v4, :cond_4

    if-ne v7, v6, :cond_4

    .line 2220
    iput-boolean v11, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    return v11

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 2224
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 v0, p4

    int-to-long v0, v0

    .line 2225
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWorkspaceReorderAnimators:Ljava/util/HashMap;

    .line 2226
    invoke-virtual {v0, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    new-instance v13, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$5;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move v3, v5

    move v5, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$5;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2237
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;

    invoke-direct {v0, p0, v10, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    .line 2255
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2256
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    return v11

    :cond_5
    return v6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method buildChildrenLayer()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 965
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->buildLayer()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .line 304
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 307
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 309
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 4

    .line 507
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v0

    .line 508
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int/2addr v3, v2

    mul-int/2addr p1, v3

    add-int/2addr v0, p1

    .line 510
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 p1, 0x0

    aput v0, p3, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int/2addr v0, p1

    mul-int/2addr p2, v0

    add-int/2addr v1, p2

    .line 511
    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    const/4 p1, 0x1

    aput v1, p3, p1

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4

    .line 491
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v0

    .line 492
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    const/4 p1, 0x0

    .line 494
    aput v0, p3, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int/2addr p1, v0

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    const/4 p1, 0x1

    .line 495
    aput v1, p3, p1

    return-void
.end method

.method public clearDragOutlines()V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 1375
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateOut()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1376
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1377
    aput v2, v0, v1

    return-void
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 1475
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    const/4 v15, 0x2

    if-nez p9, :cond_0

    new-array v0, v15, [I

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p9

    :goto_0
    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eq v13, v9, :cond_1

    if-eq v13, v15, :cond_1

    const/4 v0, 0x3

    if-ne v13, v0, :cond_3

    :cond_1
    iget-object v0, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPreviousReorderDirection:[I

    .line 1484
    aget v1, v0, v10

    const/16 v2, -0x64

    if-eq v1, v2, :cond_3

    iget-object v3, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDirectionVector:[I

    .line 1486
    aput v1, v3, v10

    .line 1487
    aget v1, v0, v9

    aput v1, v3, v9

    if-eq v13, v9, :cond_2

    if-ne v13, v15, :cond_4

    .line 1490
    :cond_2
    aput v2, v0, v10

    .line 1491
    aput v2, v0, v9

    goto :goto_1

    :cond_3
    iget-object v6, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    .line 1494
    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    iget-object v0, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDirectionVector:[I

    .line 1495
    aget v2, v1, v10

    aput v2, v0, v10

    .line 1496
    aget v1, v1, v9

    aput v1, v0, v9

    :cond_4
    :goto_1
    iget-object v7, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDirectionVector:[I

    const/16 v17, 0x1

    .line 1499
    new-instance v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;

    const/4 v6, 0x0

    invoke-direct {v8, v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v15, v6

    move/from16 v6, p6

    move-object/from16 v18, v8

    move-object/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;

    move-result-object v9

    .line 1503
    new-instance v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;

    invoke-direct {v8, v15}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;)V

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;

    move-result-object v6

    .line 1507
    iget-boolean v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->area()I

    move-result v0

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->area()I

    move-result v1

    if-lt v0, v1, :cond_5

    move-object v6, v9

    goto :goto_2

    .line 1509
    :cond_5
    iget-boolean v0, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, v15

    :goto_2
    const/4 v0, 0x1

    .line 1515
    invoke-virtual {v11, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setUseTempCoords(Z)V

    if-eqz v6, :cond_c

    .line 1519
    iget v1, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewX:I

    const/4 v2, 0x0

    aput v1, v14, v2

    .line 1520
    iget v1, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewY:I

    aput v1, v14, v0

    .line 1521
    iget v1, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v1, v16, v2

    .line 1522
    iget v1, v6, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v1, v16, v0

    if-eqz v13, :cond_7

    if-eq v13, v0, :cond_7

    const/4 v1, 0x2

    if-ne v13, v1, :cond_b

    .line 1529
    :cond_7
    invoke-direct {v11, v6, v12}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->copySolutionToTempState(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 1531
    invoke-virtual {v11, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setItemPlacementDirty(Z)V

    if-ne v13, v0, :cond_8

    move v10, v0

    goto :goto_3

    :cond_8
    move v10, v2

    .line 1532
    :goto_3
    invoke-direct {v11, v6, v12, v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->animateItemsToSolution(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v13, v0, :cond_a

    const/4 v1, 0x2

    if-ne v13, v1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v1, 0x96

    .line 1539
    invoke-direct {v11, v6, v12, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->beginOrAdjustHintAnimations(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_5

    .line 1535
    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->commitTempPlacement()V

    .line 1536
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->completeAndClearReorderHintAnimations()V

    .line 1537
    invoke-virtual {v11, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setItemPlacementDirty(Z)V

    :cond_b
    :goto_5
    move v10, v0

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1544
    aput v1, v16, v0

    aput v1, v16, v2

    aput v1, v14, v0

    aput v1, v14, v2

    move v10, v2

    :goto_6
    if-eq v13, v0, :cond_d

    if-nez v10, :cond_e

    .line 1548
    :cond_d
    invoke-virtual {v11, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setUseTempCoords(Z)V

    :cond_e
    iget-object v0, v11, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1551
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->requestLayout()V

    return-object v14
.end method

.method public createHardwareLayer()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 285
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->createHardwareLayer()V

    return-void
.end method

.method public destroyHardwareLayer()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 289
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->destroyHardwareLayer()V

    return-void
.end method

.method public disableHardwareLayers()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    const/4 v1, 0x0

    sget-object v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->sPaint:Landroid/graphics/Paint;

    .line 956
    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1223
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTopOffsetForOverScroll()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPageRect:Landroid/graphics/Rect;

    .line 1231
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPageRect:Landroid/graphics/Rect;

    .line 1232
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 1235
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1236
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 1237
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1238
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    .line 1239
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-lez v1, :cond_1

    .line 1241
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method drawMultiSelections(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mBlockMultiSelDrawing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mMultiSelections:Ljava/util/WeakHashMap;

    .line 2771
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2773
    :cond_1
    iget-object v2, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->marker:Landroid/graphics/Bitmap;

    iget v3, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->left:I

    int-to-float v3, v3

    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->top:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mMultiSelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    const/4 v1, 0x2

    sget-object v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->sPaint:Landroid/graphics/Paint;

    .line 952
    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method findCellForSpan([III)Z
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 696
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 710
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 726
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    .line 735
    invoke-virtual {v0, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    const/4 v4, 0x0

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v4

    :goto_0
    if-ltz v5, :cond_0

    add-int/lit8 v8, v1, -0x1

    sub-int v8, v5, v8

    .line 741
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    iget v9, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v9, v10

    const/4 v11, 0x1

    if-ltz v5, :cond_2

    add-int/2addr v10, v5

    if-ne v1, v11, :cond_1

    move v12, v11

    goto :goto_2

    :cond_1
    move v12, v4

    :goto_2
    add-int/2addr v10, v12

    .line 745
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_2
    if-ltz v6, :cond_3

    add-int/lit8 v10, v2, -0x1

    sub-int v10, v6, v10

    .line 749
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_3

    :cond_3
    move v10, v4

    :goto_3
    iget v12, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    add-int/lit8 v13, v2, -0x1

    sub-int/2addr v12, v13

    if-ltz v6, :cond_5

    add-int/2addr v13, v6

    if-ne v2, v11, :cond_4

    move v14, v11

    goto :goto_4

    :cond_4
    move v14, v4

    :goto_4
    add-int/2addr v13, v14

    .line 753
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_5
    :goto_5
    if-ge v10, v12, :cond_b

    if-nez v7, :cond_b

    move v13, v8

    :goto_6
    if-ge v13, v9, :cond_a

    move v14, v4

    :goto_7
    if-ge v14, v1, :cond_8

    move v15, v4

    :goto_8
    if-ge v15, v2, :cond_7

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    add-int v16, v13, v14

    .line 761
    aget-object v11, v11, v16

    add-int v17, v10, v15

    aget-boolean v11, v11, v17

    if-eqz v11, :cond_6

    add-int/lit8 v13, v16, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_9

    .line 770
    aput v13, p1, v4

    const/4 v11, 0x1

    .line 771
    aput v10, p1, v11

    goto :goto_9

    :cond_9
    const/4 v11, 0x1

    :goto_9
    move v7, v11

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v8, -0x1

    if-ne v5, v8, :cond_c

    if-ne v6, v8, :cond_c

    .line 789
    invoke-virtual {v0, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    return v7

    :cond_c
    move v5, v8

    move v6, v5

    goto :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;
    .locals 13

    move-object/from16 v0, p8

    const/4 v1, 0x2

    new-array v12, v1, [I

    new-array v1, v1, [I

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v10, v12

    move-object v11, v1

    .line 1656
    invoke-virtual/range {v2 .. v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    const/4 v2, 0x0

    aget v3, v12, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v12, v3

    if-ltz v4, :cond_0

    move-object v4, p0

    .line 1658
    invoke-direct {p0, v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->copyCurrentStateToSolution(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Z)V

    aget v5, v12, v2

    .line 1659
    iput v5, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewX:I

    aget v5, v12, v3

    .line 1660
    iput v5, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewY:I

    aget v2, v1, v2

    .line 1661
    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    aget v1, v1, v3

    .line 1662
    iput v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 1663
    iput-boolean v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    :cond_0
    move-object v4, p0

    .line 1665
    iput-boolean v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    :goto_0
    return-object v0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p11

    .line 2051
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->lazyInitTempRectStack()V

    .line 2053
    invoke-virtual {v0, v5, v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    move/from16 v7, p1

    int-to-float v7, v7

    iget v8, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v9, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int/2addr v8, v9

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move/from16 v8, p2

    int-to-float v8, v8

    iget v10, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v11, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int/2addr v10, v11

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v8, v10

    float-to-int v8, v8

    if-eqz p9, :cond_0

    move-object/from16 v9, p9

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 2064
    :goto_0
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2065
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    iget v13, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iget v14, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-lez v1, :cond_1d

    if-lez v2, :cond_1d

    if-lez v3, :cond_1d

    if-lez v4, :cond_1d

    if-lt v3, v1, :cond_1d

    if-ge v4, v2, :cond_1

    goto/16 :goto_13

    :cond_1
    const/16 v17, 0x0

    move/from16 v11, v17

    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    add-int/lit8 v20, v2, -0x1

    sub-int v15, v14, v20

    const/16 v16, 0x1

    if-ge v11, v15, :cond_1b

    move/from16 v15, v17

    :goto_2
    add-int/lit8 v20, v1, -0x1

    sub-int v5, v13, v20

    if-ge v15, v5, :cond_1a

    if-eqz p8, :cond_13

    move/from16 v5, v17

    :goto_3
    if-ge v5, v1, :cond_4

    move-object/from16 p2, v9

    move/from16 v9, v17

    :goto_4
    if-ge v9, v2, :cond_3

    add-int v20, v15, v5

    .line 2083
    aget-object v20, v6, v20

    add-int v21, v11, v9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2

    move/from16 v22, v7

    move/from16 v21, v8

    move-object v5, v10

    move/from16 v20, v13

    move/from16 v23, v14

    goto/16 :goto_12

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    move-object/from16 p2, v9

    if-lt v1, v3, :cond_5

    move/from16 v5, v16

    goto :goto_5

    :cond_5
    move/from16 v5, v17

    :goto_5
    if-lt v2, v4, :cond_6

    move/from16 v9, v16

    goto :goto_6

    :cond_6
    move/from16 v9, v17

    :goto_6
    move/from16 v20, v16

    :goto_7
    if-eqz v5, :cond_8

    if-nez v9, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p9, v10

    goto/16 :goto_e

    :cond_8
    :goto_8
    if-eqz v20, :cond_c

    if-nez v5, :cond_c

    move-object/from16 p9, v10

    move/from16 v10, v17

    :goto_9
    if-ge v10, v2, :cond_b

    move/from16 v21, v8

    add-int v8, v15, v1

    move/from16 v22, v7

    add-int/lit8 v7, v13, -0x1

    if-gt v8, v7, :cond_9

    .line 2100
    aget-object v7, v6, v8

    add-int v8, v11, v10

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_a

    :cond_9
    move/from16 v5, v16

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v21

    move/from16 v7, v22

    goto :goto_9

    :cond_b
    move/from16 v22, v7

    move/from16 v21, v8

    if-nez v5, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p9, v10

    if-nez v9, :cond_10

    move/from16 v7, v17

    :goto_a
    if-ge v7, v1, :cond_f

    add-int v8, v11, v2

    add-int/lit8 v10, v14, -0x1

    if-gt v8, v10, :cond_d

    add-int v10, v15, v7

    .line 2110
    aget-object v10, v6, v10

    aget-boolean v8, v10, v8

    if-eqz v8, :cond_e

    :cond_d
    move/from16 v9, v16

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    if-nez v9, :cond_10

    add-int/lit8 v2, v2, 0x1

    :cond_10
    :goto_b
    if-lt v1, v3, :cond_11

    move/from16 v7, v16

    goto :goto_c

    :cond_11
    move/from16 v7, v17

    :goto_c
    or-int/2addr v5, v7

    if-lt v2, v4, :cond_12

    move/from16 v7, v16

    goto :goto_d

    :cond_12
    move/from16 v7, v17

    :goto_d
    or-int/2addr v9, v7

    xor-int/lit8 v20, v20, 0x1

    move-object/from16 v10, p9

    move/from16 v8, v21

    move/from16 v7, v22

    goto :goto_7

    :cond_13
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p2, v9

    move-object/from16 p9, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_e
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpXY:[I

    .line 2128
    invoke-virtual {v0, v15, v11, v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToCenterPoint(II[I)V

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 2133
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    add-int v8, v15, v1

    add-int v9, v11, v2

    .line 2134
    invoke-virtual {v7, v15, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2136
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 2137
    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_14

    move/from16 v8, v16

    goto :goto_f

    :cond_15
    move/from16 v8, v17

    .line 2142
    :goto_f
    invoke-virtual {v12, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    aget v9, v5, v17

    sub-int v9, v9, v22

    int-to-double v9, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    aget v5, v5, v16

    sub-int v5, v5, v21

    move/from16 v20, v13

    move/from16 v23, v14

    int-to-double v13, v5

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v5, v3, v18

    if-gtz v5, :cond_17

    if-eqz v8, :cond_16

    goto :goto_10

    :cond_16
    move-object/from16 v5, p9

    goto :goto_11

    :cond_17
    :goto_10
    move-object/from16 v5, p9

    .line 2145
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2147
    :goto_11
    aput v15, p2, v17

    .line 2148
    aput v11, p2, v16

    if-eqz p10, :cond_18

    .line 2150
    aput v1, p10, v17

    .line 2151
    aput v2, p10, v16

    .line 2153
    :cond_18
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v18, v3

    :cond_19
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v10, v5

    move/from16 v13, v20

    move/from16 v8, v21

    move/from16 v7, v22

    move/from16 v14, v23

    move-object/from16 v5, p7

    goto/16 :goto_2

    :cond_1a
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p2, v9

    move-object v5, v10

    move/from16 v20, v13

    move/from16 v23, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    goto/16 :goto_1

    :cond_1b
    move-object v1, v5

    move-object/from16 p2, v9

    .line 2158
    invoke-virtual {v0, v1, v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v18, v1

    if-nez v1, :cond_1c

    const/4 v1, -0x1

    .line 2162
    aput v1, p2, v17

    .line 2163
    aput v1, p2, v16

    .line 2165
    :cond_1c
    invoke-direct {v0, v12}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->recycleTempRects(Ljava/util/Stack;)V

    return-object p2

    :cond_1d
    :goto_13
    move-object/from16 p2, v9

    return-object p2
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 13

    const/4 v10, 0x0

    move-object v12, p0

    iget-object v11, v12, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 639
    invoke-virtual/range {v0 .. v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 674
    invoke-virtual/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p1

    return-object p1
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 13

    const/4 v8, 0x1

    move-object v12, p0

    iget-object v11, v12, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1959
    invoke-virtual/range {v0 .. v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 657
    invoke-virtual/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    return v0
.end method

.method getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 342
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 316
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2493
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5

    const/4 v0, 0x0

    .line 212
    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, p3, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToCenterPoint(II[I)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 213
    aget p3, p3, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getDistanceFromFolder(FF[I)F
    .locals 5

    const/4 v0, 0x0

    .line 217
    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    invoke-virtual {p0, v1, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/prompt/kiosk/slauncher/FolderIcon;

    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prompt/kiosk/slauncher/FolderInfo;

    .line 219
    iget v1, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellX:I

    iget v3, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellY:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v3, v4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToCenterPoint(II[I)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 220
    aget v3, v3, v0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 221
    aget v3, v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 223
    iget v1, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellX:I

    iget v3, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->spanX:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    iget v3, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellY:I

    iget p3, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->spanY:I

    add-int/2addr v3, p3

    sub-int/2addr v3, v2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v3, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToCenterPoint(II[I)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 224
    aget v1, v1, v0

    iput v1, p3, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 225
    aget v1, v1, v2

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 227
    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    cmpg-float p3, p1, p3

    if-gez p3, :cond_0

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 228
    iget v1, v1, Landroid/graphics/Rect;->left:I

    aput v1, p3, v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 229
    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 230
    iget v1, v1, Landroid/graphics/Rect;->right:I

    aput v1, p3, v0

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    float-to-int v1, p1

    .line 232
    aput v1, p3, v0

    :goto_0
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 235
    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 236
    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, p3, v2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 237
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderDistanceRect:Landroid/graphics/Rect;

    .line 238
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    aput v1, p3, v2

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    float-to-int v1, p2

    .line 240
    aput v1, p3, v2

    :goto_1
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 243
    aget p3, p3, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method getHeightGap()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method protected getPaddingTopOffsetForOverScroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 326
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 1152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 1153
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 321
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method isItemPlacementDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1450
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 1451
    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 1452
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method isSameDragCell(II)Z
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v1, 0x0

    .line 2564
    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 802
    iget v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 2480
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2481
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 2482
    iget v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 808
    iget v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 2486
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2487
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 2488
    iget v1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method multiSelectClearAll()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mMultiSelections:Ljava/util/WeakHashMap;

    .line 2822
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 2823
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->multiSelInvalidateHelper()V

    return-void
.end method

.method onDragEnter()V
    .locals 0

    return-void
.end method

.method onDragExit()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1407
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1408
    aput v2, v0, v1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1409
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 1410
    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1160
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v2

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempLocation:[I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 1167
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    if-ge v6, v7, :cond_2

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 1168
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 1170
    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->getInnerRingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1171
    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->getInnerRingWidth()F

    move-result v10

    float-to-int v10, v10

    .line 1172
    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->getInnerRingHeight()F

    move-result v11

    float-to-int v11, v11

    .line 1175
    iget-object v12, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    .line 1176
    iget-object v8, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v8}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1177
    iget-object v12, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v12, v4}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundLocation([I)V

    .line 1179
    iget v12, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    add-int/2addr v12, v2

    aget v14, v4, v5

    add-int/2addr v12, v14

    iget-object v14, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v14}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    .line 1180
    iget v8, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    add-int/2addr v8, v3

    aget v13, v4, v13

    add-int/2addr v8, v13

    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v8, v7

    goto :goto_1

    .line 1182
    :cond_0
    iget v12, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellX:I

    iget v7, v7, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellY:I

    invoke-virtual {v0, v12, v7, v4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToPoint(II[I)V

    iget v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    if-gez v7, :cond_1

    .line 1186
    aget v12, v4, v13

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v12, v7

    aput v12, v4, v13

    :cond_1
    iget v7, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v12, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    .line 1190
    sget v14, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewSize:I

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v14, v12

    .line 1191
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Utilities;->getIconSize()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v14, v15

    .line 1192
    aget v16, v4, v13

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v15

    mul-float v14, v14, v17

    mul-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v16, v16, v8

    aput v16, v4, v13

    .line 1194
    aget v8, v4, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v8

    .line 1195
    div-int/lit8 v12, v12, 0x2

    add-int v8, v16, v12

    move v12, v7

    .line 1198
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1199
    div-int/lit8 v7, v10, 0x2

    sub-int/2addr v12, v7

    int-to-float v7, v12

    div-int/lit8 v12, v11, 0x2

    sub-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1200
    invoke-virtual {v9, v5, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1201
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    :goto_2
    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 1206
    array-length v3, v3

    if-ge v5, v3, :cond_4

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAlphas:[F

    .line 1207
    aget v3, v3, v5

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 1209
    aget-object v4, v4, v5

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 1210
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 1212
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1213
    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v6, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1218
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->drawMultiSelections(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 347
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 349
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 350
    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPaddingTop:I

    sub-int v4, p4, p2

    iget v5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPaddingRight:I

    sub-int/2addr v4, v5

    sub-int v5, p5, p3

    iget v6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 7

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 795
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 796
    iget v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsForView(IIIIZ)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mForegroundPadding:I

    mul-int/lit8 v0, p4, 0x2

    sub-int/2addr p1, v0

    mul-int/lit8 v0, p4, 0x2

    sub-int/2addr p2, v0

    .line 357
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 4

    .line 457
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v0

    .line 458
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int/2addr v0, v2

    .line 460
    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    .line 461
    div-int/2addr p2, v1

    const/4 v1, 0x1

    aput p2, p3, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    if-gez p1, :cond_0

    .line 466
    aput v0, p3, v0

    .line 467
    :cond_0
    aget p1, p3, v0

    if-lt p1, v2, :cond_1

    sub-int/2addr v2, v1

    aput v2, p3, v0

    :cond_1
    if-gez p2, :cond_2

    .line 468
    aput v0, p3, v1

    .line 469
    :cond_2
    aget p1, p3, v1

    if-lt p1, v3, :cond_3

    sub-int/2addr v3, v1

    aput v3, p3, v1

    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    .line 479
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->pointToCellExact(II[I)V

    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0

    .line 1556
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 5

    .line 1797
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v0

    .line 1798
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int/2addr p1, v4

    add-int/2addr v0, p1

    mul-int/2addr v2, p3

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    mul-int/2addr p3, v3

    add-int/2addr v2, p3

    .line 1799
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 p3, 0x0

    aput v0, p5, p3

    iget p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int v2, p3, v0

    mul-int/2addr p2, v2

    add-int/2addr v1, p2

    mul-int/2addr p3, p4

    sub-int/2addr p4, p1

    mul-int/2addr p4, v0

    add-int/2addr p3, p4

    .line 1800
    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, p1

    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    .line 1811
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingLeft()I

    move-result v0

    .line 1812
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int/2addr p1, v4

    add-int/2addr v0, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    add-int v5, p1, v4

    mul-int/2addr p2, v5

    add-int/2addr v1, p2

    mul-int/2addr v2, p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p3, v3

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    mul-int/2addr p1, p4

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, v4

    add-int/2addr p1, p4

    add-int/2addr p1, v1

    .line 1815
    invoke-virtual {p5, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->clearOccupiedCells()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 899
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 904
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->clearOccupiedCells()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 906
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 331
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeAllViews()V

    .line 332
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->clearOccupiedCells()V

    .line 333
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->destroyHardwareLayer()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 917
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 918
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 923
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 924
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 925
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 931
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 932
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 338
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeViewAt(I)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 938
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 940
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 946
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 948
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->removeViewsInLayout(II)V

    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1437
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setOverscrollTransformsDirty(Z)V

    const/4 v1, 0x0

    .line 1438
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setTranslationX(F)V

    .line 1439
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setRotationY(F)V

    .line 1442
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setOverScrollAmount(FZ)V

    .line 1443
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setPivotX(F)V

    .line 1444
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setPivotY(F)V

    .line 1445
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setOverScrollDrawableClear()V

    :cond_0
    return-void
.end method

.method revertTempState()V
    .locals 12

    .line 1456
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1457
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1459
    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1460
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1461
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    if-ne v4, v6, :cond_0

    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    if-eq v4, v6, :cond_1

    .line 1462
    :cond_0
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    .line 1463
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    .line 1464
    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->completeAndClearReorderHintAnimations()V

    .line 1469
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->setItemPlacementDirty(Z)V

    :cond_3
    return-void
.end method

.method public setBlockMultiSelDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mBlockMultiSelDrawing:Z

    .line 2844
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->multiSelInvalidateHelper()V

    return-void
.end method

.method public setCellCount(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 249
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOccupied:[[Z

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountX:I

    iget p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellCountY:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 250
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 251
    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->requestLayout()V

    return-void
.end method

.method public setCellDimensions(II)V
    .locals 1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOriginalCellWidth:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOriginalCellHeight:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 2862
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setCellDimensions(II)V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 294
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 299
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setGap(II)V
    .locals 1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOriginalWidthGap:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOriginalHeightGap:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 257
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setGap(II)V

    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mIsDragOverlapping:Z

    .line 1416
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mItemPlacementDirty:Z

    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq p2, v0, :cond_1

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    .line 368
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 370
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    return-void
.end method

.method setOverScrollDrawableClear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mScrollingTransformsDirty:Z

    return-void
.end method

.method public setUseTempCoords(Z)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1645
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 1647
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 1648
    iput-boolean p1, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showFolderAccept(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 1147
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;
    .locals 13

    move-object v8, p0

    move-object/from16 v9, p10

    const/4 v10, 0x0

    .line 1607
    invoke-direct {p0, v9, v10}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->copyCurrentStateToSolution(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;Z)V

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpOccupied:[[Z

    .line 1610
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->copyOccupiedArray([[Z)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 1615
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v11

    .line 1620
    aget v1, v11, v10

    const/4 v12, 0x1

    aget v2, v11, v12

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1633
    iput-boolean v10, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 1635
    :cond_0
    iput-boolean v12, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    .line 1636
    aget v0, v11, v10

    iput v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewX:I

    .line 1637
    aget v0, v11, v12

    iput v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewY:I

    move/from16 v0, p5

    .line 1638
    iput v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    move/from16 v0, p6

    .line 1639
    iput v0, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    :goto_0
    return-object v9
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 11

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v10, p0

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v1, 0x0

    .line 1306
    aget v2, v0, v1

    const/4 v5, 0x1

    .line 1307
    aget v6, v0, v5

    if-ne v3, v2, :cond_0

    if-eq v4, v6, :cond_1

    .line 1310
    :cond_0
    aput v3, v0, v1

    .line 1311
    aput v4, v0, v5

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    .line 1312
    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->visualizeOutlineLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;Z)V

    :cond_1
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 12

    move-object v10, p0

    iget-object v6, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    const/4 v7, 0x0

    .line 1290
    aget v8, v6, v7

    const/4 v9, 0x1

    .line 1291
    aget v11, v6, v9

    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p1

    .line 1292
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 1296
    aget v1, v0, v7

    if-ne v1, v8, :cond_1

    aget v2, v0, v9

    if-eq v2, v11, :cond_2

    :cond_1
    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragCell:[I

    .line 1297
    aput v1, v2, v7

    .line 1298
    aget v1, v0, v9

    aput v1, v2, v9

    .line 1299
    aget v3, v0, v7

    aget v4, v0, v9

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->visualizeOutlineLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method

.method visualizeOutlineLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mTmpPoint:[I

    .line 1321
    invoke-virtual {p0, p3, p4, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->cellToPoint(II[I)V

    const/4 p3, 0x0

    .line 1323
    aget p3, v0, p3

    const/4 p4, 0x1

    .line 1324
    aget v0, v0, p4

    if-eqz p1, :cond_0

    if-nez p7, :cond_0

    .line 1329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    check-cast p6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1330
    iget p7, p6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p7

    .line 1331
    iget p6, p6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p6

    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    sub-int/2addr p1, p6

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    mul-int/2addr p1, p5

    sub-int/2addr p5, p4

    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    mul-int/2addr p5, p6

    add-int/2addr p1, p5

    .line 1338
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    sub-int/2addr p1, p5

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    goto :goto_1

    :cond_0
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    .line 1343
    iget p1, p7, Landroid/graphics/Point;->x:I

    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    mul-int/2addr p6, p5

    sub-int/2addr p5, p4

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    mul-int/2addr p5, v1

    add-int/2addr p6, p5

    invoke-virtual {p8}, Landroid/graphics/Rect;->width()I

    move-result p5

    sub-int/2addr p6, p5

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p1, p6

    add-int/2addr p3, p1

    .line 1344
    iget p1, p7, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellWidth:I

    mul-int/2addr p1, p5

    sub-int/2addr p5, p4

    iget p7, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mWidthGap:I

    mul-int/2addr p5, p7

    add-int/2addr p1, p5

    .line 1347
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    sub-int/2addr p1, p5

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mCellHeight:I

    mul-int/2addr p1, p6

    sub-int/2addr p6, p4

    iget p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    mul-int/2addr p6, p5

    add-int/2addr p1, p6

    .line 1348
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    sub-int/2addr p1, p5

    div-int/lit8 p1, p1, 0x2

    :goto_0
    add-int/2addr v0, p1

    :goto_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mHeightGap:I

    if-gez p1, :cond_2

    .line 1353
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    :cond_2
    if-eqz p9, :cond_3

    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 1358
    aget-object p5, p5, p1

    invoke-virtual {p5}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateOut()V

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 1359
    array-length p5, p4

    rem-int/2addr p1, p5

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1361
    aget-object p1, p4, p1

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iget p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1362
    aget-object p1, p1, p3

    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iget p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1363
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iget p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1365
    aget-object p1, p1, p4

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->cancel()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlines:[Landroid/graphics/Point;

    iget p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1366
    aget-object p1, p1, p4

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAnims:[Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iget p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    .line 1367
    aget-object p1, p1, p4

    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineAlphas:[F

    iget p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->mDragOutlineCurrent:I

    const/high16 p5, 0x437f0000    # 255.0f

    .line 1368
    aput p5, p1, p4

    .line 1369
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate(IIII)V

    :goto_2
    return-void
.end method
