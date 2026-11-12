.class public Lcom/prompt/kiosk/slauncher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;,
        Lcom/prompt/kiosk/slauncher/DragController$DragListener;,
        Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x1

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final VIBRATE_DURATION:I = 0x23

.field private static final classSimpleName:Ljava/lang/String; = "DragController"


# instance fields
.field private final TOUCH_SLOP:I

.field private mArrDismissableByDrag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoordinatesTemp:[I

.field private mDissmissableByDragCalled:Z

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

.field private mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragScrollerWithVertical:Z

.field private mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollMarginLeft:I

.field private mScrollMarginRight:I

.field private mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mCoordinatesTemp:[I

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    .line 104
    new-instance v2, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;-><init>(Lcom/prompt/kiosk/slauncher/DragController;)V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginLeft:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginRight:I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastTouch:[I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mTmpPoint:[I

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 168
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    .line 169
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const-string v0, "vibrator"

    .line 170
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/DragController;)Lcom/prompt/kiosk/slauncher/DragScroller;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    return-object p0
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/DragController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/prompt/kiosk/slauncher/DragController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 722
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 724
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private closePopup(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDissmissableByDragCalled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    sub-int/2addr v0, p1

    int-to-double v0, v0

    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    .line 572
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-int p1, p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDissmissableByDragCalled:Z

    .line 575
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->dismissAllDismissableByDrag()V

    :cond_0
    return-void
.end method

.method private drop(FF)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mCoordinatesTemp:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 636
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/DragController;->findDropTarget(II[I)Lcom/prompt/kiosk/slauncher/DropTarget;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v1, 0x0

    .line 638
    aget v2, v0, v1

    iput v2, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v2, 0x1

    .line 639
    aget v0, v0, v2

    iput v0, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 642
    iput-boolean v2, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragComplete:Z

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 643
    invoke-interface {p1, p2}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 644
    invoke-interface {p1, p2}, Lcom/prompt/kiosk/slauncher/DropTarget;->acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 645
    invoke-interface {p1, p2}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    move v1, v2

    :cond_0
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 649
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragSource:Lcom/prompt/kiosk/slauncher/DragSource;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    invoke-interface {p2, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)V

    return-void
.end method

.method private endDrag()V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 356
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 357
    iget-boolean v0, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 359
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/DragView;->remove()V

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v2, 0x0

    .line 361
    iput-object v2, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/DragController$DragListener;

    .line 367
    invoke-interface {v1}, Lcom/prompt/kiosk/slauncher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragController;->releaseVelocityTracker()V

    return-void
.end method

.method private findDropTarget(II[I)Lcom/prompt/kiosk/slauncher/DropTarget;
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 656
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 658
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/DropTarget;

    .line 659
    invoke-interface {v4}, Lcom/prompt/kiosk/slauncher/DropTarget;->isDropEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    invoke-interface {v4, v0}, Lcom/prompt/kiosk/slauncher/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 665
    invoke-interface {v4, p3}, Lcom/prompt/kiosk/slauncher/DropTarget;->getLocationInDragLayer([I)V

    const/4 v5, 0x0

    .line 666
    aget v6, p3, v5

    invoke-interface {v4}, Lcom/prompt/kiosk/slauncher/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v3

    invoke-interface {v4}, Lcom/prompt/kiosk/slauncher/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 668
    iput p1, v6, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 669
    iput p2, v6, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    .line 670
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    aget v0, p3, v5

    sub-int/2addr p1, v0

    aput p1, p3, v5

    .line 672
    aget p1, p3, v3

    sub-int/2addr p2, p1

    aput p2, p3, v3

    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 392
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mTmpPoint:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 393
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mTmpPoint:[I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 394
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mTmpPoint:[I

    return-object p1
.end method

.method private handleMoveEvent(II)V
    .locals 11

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 482
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragView;->move(II)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragController;->closePopup(II)V

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragController;->setDropTarget(II)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastTouch:[I

    const/4 v3, 0x0

    .line 492
    aget v2, v2, v3

    sub-int/2addr v2, p1

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 493
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastTouch:[I

    const/4 v8, 0x1

    aget v2, v2, v8

    sub-int/2addr v2, p2

    int-to-double v9, v2

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastTouch:[I

    .line 494
    aput p1, v0, v3

    .line 495
    aput p2, v0, v8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 497
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginLeft:I

    add-int/2addr v0, v1

    const/4 v1, -0x1

    const-wide/16 v4, 0x258

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    if-le v0, v2, :cond_6

    iput v8, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mIsDragScrollerWithVertical:Z

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    .line 502
    invoke-interface {v0, p1, p2, v3}, Lcom/prompt/kiosk/slauncher/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 503
    invoke-virtual {p1, v3}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->setDirection(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 504
    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollView:Landroid/view/View;

    .line 507
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    sub-int/2addr v0, v2

    iget v6, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginRight:I

    sub-int/2addr v0, v6

    if-le p1, v0, :cond_3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    if-le v0, v2, :cond_6

    iput v8, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mIsDragScrollerWithVertical:Z

    if-eqz v0, :cond_2

    move p2, v1

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    .line 511
    invoke-interface {v0, p1, p2, v8}, Lcom/prompt/kiosk/slauncher/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 512
    invoke-virtual {p1, v8}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->setDirection(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 513
    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mIsDragScrollerWithVertical:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginLeft:I

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    if-le v0, v1, :cond_6

    iput v8, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    .line 522
    invoke-interface {v0, p1, p2, v3}, Lcom/prompt/kiosk/slauncher/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 523
    invoke-virtual {p1, v3}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->setDirection(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 524
    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollView:Landroid/view/View;

    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginRight:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDistanceSinceScroll:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->TOUCH_SLOP:I

    if-le v0, v1, :cond_6

    iput v8, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    .line 531
    invoke-interface {v0, p1, p2, v8}, Lcom/prompt/kiosk/slauncher/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 532
    invoke-virtual {p1, v8}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->setDirection(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 533
    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    if-ne p1, v8, :cond_6

    iput v3, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 541
    invoke-virtual {p1, v8}, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->setDirection(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 542
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    .line 543
    invoke-interface {p1}, Lcom/prompt/kiosk/slauncher/DragScroller;->onExitScrollArea()Z

    :cond_6
    :goto_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setDropTarget(II)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mCoordinatesTemp:[I

    .line 551
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/DragController;->findDropTarget(II[I)Lcom/prompt/kiosk/slauncher/DropTarget;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v1, 0x0

    .line 552
    aget v1, v0, v1

    iput v1, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v1, 0x1

    .line 553
    aget v0, v0, v1

    iput v0, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 557
    invoke-interface {p2, v0}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_0
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 559
    invoke-interface {p1, p2}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 561
    invoke-interface {p1, p2}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 564
    invoke-interface {p2, v0}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/prompt/kiosk/slauncher/DragController$DragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 696
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 710
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelDrag()V
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 321
    invoke-interface {v0, v1}, Lcom/prompt/kiosk/slauncher/DropTarget;->onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v1, 0x0

    .line 323
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    const/4 v2, 0x1

    .line 324
    iput-boolean v2, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->cancelled:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 325
    iput-boolean v2, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragComplete:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 326
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragSource:Lcom/prompt/kiosk/slauncher/DragSource;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    invoke-interface {v0, v2, v3, v1}, Lcom/prompt/kiosk/slauncher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)V

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragController;->endDrag()V

    return-void
.end method

.method public copy(Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 1

    .line 775
    iget v0, p1, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    .line 776
    iget p1, p1, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    return-void
.end method

.method public dismissAllDismissableByDrag()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 473
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 475
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 476
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 477
    invoke-interface {v3}, Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;->dismissByDrag()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    return v0
.end method

.method getDragView()Lcom/prompt/kiosk/slauncher/DragView;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 742
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    return-object v0
.end method

.method getLastDropTarget()Lcom/prompt/kiosk/slauncher/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    return-object v0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 274
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/prompt/kiosk/slauncher/DragController;->classSimpleName:Ljava/lang/String;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed getViewBitmap("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    .line 286
    :cond_1
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 292
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    return-object v3
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ApplicationInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    if-eqz p2, :cond_1

    .line 333
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 334
    instance-of v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 335
    check-cast p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 336
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    .line 337
    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 338
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->cancelDrag()V

    :cond_1
    return-void
.end method

.method onDeferredEndDrag(Landroid/view/View;)V
    .locals 1

    .line 379
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/DragView;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/DragView;->remove()V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/DragController$DragListener;

    .line 384
    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 408
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 413
    aget v1, p1, v1

    const/4 v2, 0x1

    .line 414
    aget p1, p1, v2

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->cancelDrag()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    int-to-float v0, v1

    int-to-float p1, p1

    .line 427
    invoke-direct {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->drop(FF)V

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragController;->endDrag()V

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mLastDropTarget:Lcom/prompt/kiosk/slauncher/DropTarget;

    :goto_0
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/prompt/kiosk/slauncher/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    .line 595
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 596
    aget p1, p1, v3

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->cancelDrag()V

    .line 627
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->unregisterAllDismissableByDrag()V

    goto :goto_0

    .line 612
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/prompt/kiosk/slauncher/DragController;->handleMoveEvent(II)V

    goto :goto_0

    .line 616
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/prompt/kiosk/slauncher/DragController;->handleMoveEvent(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    .line 618
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    if-eqz v0, :cond_4

    int-to-float v0, v2

    int-to-float p1, p1

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/DragController;->drop(FF)V

    .line 622
    :cond_4
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DragController;->endDrag()V

    .line 623
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragController;->unregisterAllDismissableByDrag()V

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollView:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    if-lt v2, v0, :cond_6

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollZone:I

    sub-int/2addr p1, v0

    if-le v2, p1, :cond_7

    :cond_6
    iput v3, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollRunnable:Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;

    const-wide/16 v1, 0x258

    .line 606
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollState:I

    :goto_0
    return v3
.end method

.method public registerDismissableByDrag(Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeDragListener(Lcom/prompt/kiosk/slauncher/DragController$DragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 703
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 717
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDragScoller(Lcom/prompt/kiosk/slauncher/DragScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mDragScroller:Lcom/prompt/kiosk/slauncher/DragScroller;

    return-void
.end method

.method public setDragScrollerWithVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mIsDragScrollerWithVertical:Z

    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollMargin(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginLeft:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollMarginRight:I

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const-string v6, "input_method"

    .line 217
    invoke-virtual {v5, v6}, Lcom/prompt/kiosk/slauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 219
    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/DragController$DragListener;

    move/from16 v8, p6

    .line 222
    invoke-interface {v6, v1, v2, v8}, Lcom/prompt/kiosk/slauncher/DragController$DragListener;->onDragStart(Lcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    sub-int v11, v5, p2

    iget v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    sub-int v12, v5, p3

    if-nez v4, :cond_2

    move v5, v7

    goto :goto_1

    .line 228
    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->left:I

    :goto_1
    if-nez v4, :cond_3

    move v6, v7

    goto :goto_2

    .line 229
    :cond_3
    iget v6, v4, Landroid/graphics/Rect;->top:I

    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragging:Z

    .line 233
    new-instance v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;-><init>()V

    iput-object v8, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 235
    iput-boolean v7, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragComplete:Z

    iget-object v8, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    iget v9, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    add-int v5, p2, v5

    sub-int/2addr v9, v5

    .line 236
    iput v9, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    iget v8, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    add-int v6, p3, v6

    sub-int/2addr v8, v6

    .line 237
    iput v8, v5, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 238
    iput-object v1, v5, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragSource:Lcom/prompt/kiosk/slauncher/DragSource;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 239
    iput-object v2, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v5, 0x23

    .line 241
    invoke-virtual {v1, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDragObject:Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;

    .line 243
    new-instance v2, Lcom/prompt/kiosk/slauncher/DragView;

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object v8, v2

    move-object/from16 v10, p1

    move/from16 v17, p9

    invoke-direct/range {v8 .. v17}, Lcom/prompt/kiosk/slauncher/DragView;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v2, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    if-eqz v3, :cond_4

    .line 247
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_5
    iput-boolean v7, v0, Lcom/prompt/kiosk/slauncher/DragController;->mDissmissableByDragCalled:Z

    iget v1, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    iget v3, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    .line 255
    invoke-virtual {v2, v1, v3}, Lcom/prompt/kiosk/slauncher/DragView;->show(II)V

    iget v1, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownX:I

    iget v2, v0, Lcom/prompt/kiosk/slauncher/DragController;->mMotionDownY:I

    .line 256
    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DragController;->handleMoveEvent(II)V

    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;F)V
    .locals 12

    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/DragController;->mCoordinatesTemp:[I

    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/DragController;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 180
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 v1, 0x0

    .line 181
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 182
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    .line 183
    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, v0, v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 186
    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    sget v0, Lcom/prompt/kiosk/slauncher/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v1, p5

    if-ne v1, v0, :cond_0

    const/16 v0, 0x8

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unregisterAllDismissableByDrag()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public unregisterDismissableByDrag(Lcom/prompt/kiosk/slauncher/DragController$DismissableByDrag;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mArrDismissableByDrag:Ljava/util/ArrayList;

    .line 463
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public vibrate()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    .line 784
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
