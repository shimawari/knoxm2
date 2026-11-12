.class public Lcom/prompt/kiosk/slauncher/Workspace;
.super Lcom/prompt/kiosk/slauncher/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/DropTarget;
.implements Lcom/prompt/kiosk/slauncher/DragSource;
.implements Lcom/prompt/kiosk/slauncher/DragScroller;
.implements Lcom/prompt/kiosk/slauncher/LauncherTransitionable;
.implements Lcom/prompt/kiosk/slauncher/DragController$DragListener;
.implements Lcom/prompt/kiosk/slauncher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;,
        Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;
    }
.end annotation


# static fields
.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mDefaultPage:I

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/prompt/kiosk/slauncher/DragController;

.field private mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

.field private mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

.field private mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

.field private mDragViewMultiplyColor:I

.field private mDragViewVisualCenter:[F

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private final mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

.field private mFolderRingAnimator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field private mInHotseatScrollArea:Z

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mLastDragOverView:Landroid/view/View;

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mNoInterceptTouchEvent:Z

.field private mOrgPageSpacing:I

.field private mOutlineColor:I

.field private final mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

.field private mOverscrollTransformsSet:Z

.field private final mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

.field private mSavedRotationY:F

.field private mSavedScaleX:F

.field private mSavedScaleY:F

.field private mSavedScrollX:I

.field private mSavedTranslationX:F

.field private mScrollDirection:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTransitionEffectHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private mWallpaperMode:I

.field mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperScrolling:Z

.field private mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mWrapWallpaper:I

.field private mXDown:F

.field private mYDown:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrollRatio:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempCell:[I

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 98
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAnimatingViewIntoPlace:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIsDragOccuring:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mChildrenLayersEnabled:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    .line 112
    new-instance v4, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    invoke-direct {v4}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 114
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempXY:[I

    .line 120
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 129
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 133
    new-instance v4, Lcom/prompt/kiosk/slauncher/Alarm;

    invoke-direct {v4}, Lcom/prompt/kiosk/slauncher/Alarm;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 134
    new-instance v4, Lcom/prompt/kiosk/slauncher/Alarm;

    invoke-direct {v4}, Lcom/prompt/kiosk/slauncher/Alarm;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderRingAnimator:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastDragOverView:Landroid/view/View;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    iput v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrolling:Z

    iput v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderX:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderY:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverX:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverY:I

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    .line 210
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mContentIsRefreshable:Z

    .line 213
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->setDataIsReady()V

    .line 215
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f050003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFadeInAdjacentScreens:Z

    .line 220
    sget-object v1, Lcom/prompt/kiosk/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 249
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 252
    invoke-static {p3, v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const v5, 0x7f070038

    .line 256
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    move v6, v3

    :goto_1
    add-int/lit8 v7, v6, 0x1

    .line 258
    invoke-static {p3, v7}, Lcom/prompt/kiosk/slauncher/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v1, v5

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    move v6, v7

    goto :goto_1

    .line 262
    :cond_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v4, 0x7f060019

    .line 267
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewMultiplyColor:I

    if-nez v1, :cond_2

    .line 271
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 272
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move v10, v1

    move v1, p3

    move p3, v10

    goto :goto_2

    :cond_2
    move p3, v1

    .line 274
    :goto_2
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 275
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    invoke-static {v1, p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 280
    check-cast p1, Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 281
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->initWorkspace()V

    .line 284
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setMotionEventSplittingEnabled(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 286
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineColor:I

    .line 288
    new-instance p1, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-direct {p1, p2, p0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/PagedView;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTransitionEffectHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/prompt/kiosk/slauncher/Workspace;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/prompt/kiosk/slauncher/Workspace;)Landroid/graphics/Bitmap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/Launcher;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderRingAnimator:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/prompt/kiosk/slauncher/Workspace;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    return p1
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    return-object p0
.end method

.method static synthetic access$502(Lcom/prompt/kiosk/slauncher/Workspace;[I)[I
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    return-object p0
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/Workspace;IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$902(Lcom/prompt/kiosk/slauncher/Workspace;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderX:I

    return p1
.end method

.method private cancelFolderCreation()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v1, :cond_0

    .line 2182
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToNaturalState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 2186
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    return-void
.end method

.method private cleanupAddToFolder()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2191
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    return-void
.end method

.method private cleanupFolderCreation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v1, :cond_0

    .line 2169
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToNaturalState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2172
    instance-of v1, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 2174
    check-cast v0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 2177
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 1783
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderX:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderY:I

    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 4

    .line 754
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getPage(II)I

    move-result p1

    .line 758
    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    .line 759
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 760
    iput v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    .line 761
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 762
    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    if-lez v1, :cond_1

    mul-float/2addr p1, v2

    int-to-float v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrollRatio:F

    :goto_0
    return-void
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineColor:I

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1173
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    .line 1174
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 1175
    invoke-virtual {p1, v1, p2, v0, v0}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 p1, 0x0

    .line 1176
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private createOrAddFolder(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/View;J)Z
    .locals 9

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    .line 1594
    iget-object v8, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prompt/kiosk/slauncher/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/prompt/kiosk/slauncher/CellLayout;[IZLcom/prompt/kiosk/slauncher/DragView;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v4, p1

    .line 1597
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout;[ILcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)Z

    move-result p1

    return p1
.end method

.method private doDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 1

    .line 1719
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupFolderCreation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    .line 1722
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->onResetScrollArea()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1725
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setIsDragOverlapping(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1726
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDragExit()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1727
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->revertTempState()V

    :cond_0
    const/4 p1, 0x1

    .line 1731
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupReorder(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastDragOverView:Landroid/view/View;

    return-void
.end method

.method private dragAnimation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;ILandroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    .line 1601
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragView;->hasDrawn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    :goto_0
    move v5, v0

    .line 1603
    invoke-virtual {p0, p2, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalScrollForPageChange(IZ)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1604
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v2

    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/4 v7, 0x0

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 1606
    invoke-virtual {p0, p2, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->resetFinalScrollForPageChange(IZ)V

    goto :goto_1

    .line 1608
    :cond_1
    iput-boolean v1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1609
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1149
    invoke-static {p1, p2, p3, p4, v0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZLandroid/graphics/Rect;)V

    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempVisiblePagesRange:[I

    invoke-static {p0, v0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->enableHwLayersOnVisiblePages(Lcom/prompt/kiosk/slauncher/Workspace;[I)V

    :cond_0
    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/prompt/kiosk/slauncher/DragView;FFZ)Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 11

    .line 1866
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p1

    .line 1869
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_4

    .line 1872
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput p2, v6, v3

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 1877
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 1878
    invoke-virtual {p0, v5, v6, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    aget v8, v6, v3

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-ltz v10, :cond_0

    .line 1880
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    aget v8, v6, v7

    cmpl-float v10, v8, v9

    if-ltz v10, :cond_0

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    return-object v5

    :cond_0
    if-eqz v0, :cond_2

    if-nez v4, :cond_1

    aget v8, v6, v3

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    sub-int/2addr p1, v7

    .line 1886
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p3

    sub-int/2addr p2, p3

    .line 1887
    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result p3

    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    .line 1888
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    neg-int p2, p2

    .line 1889
    invoke-direct {p0, p1, p2, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->isMatchingExtraPage(Lcom/prompt/kiosk/slauncher/CellLayout;I[F)Z

    return-object p1

    :cond_1
    add-int/lit8 v8, p1, -0x1

    if-ne v4, v8, :cond_2

    aget v9, v6, v3

    .line 1891
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 1892
    invoke-virtual {p0, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 1893
    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result p2

    invoke-virtual {p0, v7}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 1894
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1895
    invoke-direct {p0, p2, p1, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->isMatchingExtraPage(Lcom/prompt/kiosk/slauncher/CellLayout;I[F)Z

    return-object p2

    :cond_2
    if-nez p4, :cond_3

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 1903
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v8, v3

    .line 1904
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v7

    .line 1905
    invoke-virtual {p0, v5, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    aput p2, v6, v3

    aput p3, v6, v7

    .line 1912
    invoke-static {v6, v8}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->squaredDistance([F[F)F

    move-result v6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_3

    move-object v1, v5

    move v2, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method private findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I
    .locals 6

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 2514
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    return-object p1
.end method

.method private findNearestVacantArea(IIIILandroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout;[I)[I
    .locals 7

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 2505
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object p1

    return-object p1
.end method

.method static declared-synchronized getCellLayoutMetrics(Lcom/prompt/kiosk/slauncher/Launcher;I)Landroid/graphics/Rect;
    .locals 8

    const-class v0, Lcom/prompt/kiosk/slauncher/Workspace;

    monitor-enter v0

    .line 1741
    :try_start_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1742
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1743
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1744
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1745
    invoke-virtual {p0, v1, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    const p0, 0x7f07004f

    const v4, 0x7f070066

    const v5, 0x7f070064

    const v6, 0x7f07005d

    if-nez p1, :cond_1

    sget-object v7, Lcom/prompt/kiosk/slauncher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 1748
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1749
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1750
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1751
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1752
    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 1753
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    sub-int v4, v1, p0

    .line 1754
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/prompt/kiosk/slauncher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 1756
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result v5

    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v6

    move v7, p1

    .line 1755
    invoke-static/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    :cond_0
    sget-object p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    :try_start_1
    sget-object v7, Lcom/prompt/kiosk/slauncher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 1761
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1762
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1763
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1764
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1765
    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v6

    sub-int v5, v1, v5

    .line 1766
    iget v1, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    sub-int v4, v1, p0

    .line 1767
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/prompt/kiosk/slauncher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 1769
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result p0

    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v6

    move v3, v5

    move v5, p0

    move v7, p1

    .line 1768
    invoke-static/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    :cond_2
    sget-object p0, Lcom/prompt/kiosk/slauncher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1771
    monitor-exit v0

    return-object p0

    .line 1773
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getScrollRange()I
    .locals 2

    .line 611
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTargetCellDistance()F
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    .line 2076
    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2077
    aget v2, v1, v2

    aget v1, v1, v4

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getDistanceFromFolder(FF[I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2080
    aget v2, v1, v2

    aget v1, v1, v4

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v0

    :goto_0
    return v0
.end method

.method private isMatchingExtraPage(Lcom/prompt/kiosk/slauncher/CellLayout;I[F)Z
    .locals 1

    .line 1923
    new-instance p3, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;-><init>(Landroid/content/Context;)V

    .line 1924
    invoke-static {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getTmpCell(Lcom/prompt/kiosk/slauncher/CellLayout;ILcom/prompt/kiosk/slauncher/CellLayout;)V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 p1, 0x0

    return p1
.end method

.method private isTouchedScrollableFolderIcon(II)Z
    .locals 7

    .line 437
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 442
    :cond_0
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getPageChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 444
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr p1, v4

    .line 445
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTop()I

    move-result v4

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr p2, v4

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 448
    invoke-virtual {v0, v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 449
    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    instance-of v6, v5, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v6, :cond_1

    .line 452
    check-cast v5, Lcom/prompt/kiosk/slauncher/FolderIcon;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/FolderIcon;->isItemScrollable()Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;ZLcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v9, p3

    move-object/from16 v8, p5

    .line 2289
    move-object/from16 v7, p2

    check-cast v7, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 2290
    iget v0, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 2291
    iget v1, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 2293
    iget v0, v2, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2294
    iget v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    :cond_0
    move v3, v0

    move v4, v1

    .line 2298
    invoke-virtual {v10, v9}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v15

    .line 2300
    instance-of v0, v7, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    .line 2301
    move-object/from16 v12, p2

    check-cast v12, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;

    .line 2304
    iget v0, v12, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;->itemType:I

    if-ne v0, v13, :cond_2

    .line 2305
    aget v1, p1, v14

    aget v2, p1, v13

    iget-object v6, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2306
    aget v2, v1, v14

    aget v1, v1, v13

    invoke-virtual {v9, v2, v1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 2307
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v3, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->willCreateUserFolder(Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 2308
    invoke-virtual {v10, v0, v1, v2, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v13

    :goto_0
    if-eqz v8, :cond_10

    .line 2314
    iget-object v1, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eqz v0, :cond_4

    .line 2316
    iget v0, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 2317
    iget v2, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 2318
    iget v3, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanX:I

    if-lez v3, :cond_3

    iget v3, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanY:I

    if-lez v3, :cond_3

    .line 2319
    iget v0, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanX:I

    .line 2320
    iget v2, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanY:I

    :cond_3
    new-array v3, v11, [I

    iget-object v4, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2323
    aget v5, v4, v14

    float-to-int v5, v5

    aget v4, v4, v13

    float-to-int v4, v4

    iget v6, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v7, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    const/16 v18, 0x0

    iget-object v11, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/16 v21, 0x2

    move-object/from16 v19, v11

    move-object/from16 v11, p3

    move-object v8, v12

    move v12, v5

    move v5, v13

    move v13, v4

    move v4, v14

    move v14, v0

    move v0, v15

    move v15, v2

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v20, v3

    invoke-virtual/range {v11 .. v21}, Lcom/prompt/kiosk/slauncher/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    iput-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aget v2, v3, v4

    .line 2326
    iput v2, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    aget v2, v3, v5

    .line 2327
    iput v2, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    goto :goto_1

    :cond_4
    move-object v8, v12

    move v5, v13

    move v4, v14

    move v0, v15

    .line 2330
    :goto_1
    new-instance v6, Lcom/prompt/kiosk/slauncher/Workspace$2;

    invoke-direct {v6, v10, v8, v9}, Lcom/prompt/kiosk/slauncher/Workspace$2;-><init>(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2347
    iget v7, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 2348
    iget v11, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    move-object v1, v8

    move-object/from16 v8, p5

    if-eqz v8, :cond_5

    .line 2351
    iget v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    if-eq v0, v2, :cond_5

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2352
    invoke-static {v10, v0, v0, v2}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getSnapScreen(Lcom/prompt/kiosk/slauncher/Workspace;IILcom/prompt/kiosk/slauncher/CellLayout;)I

    move-result v15

    goto :goto_2

    :cond_5
    move v15, v0

    :goto_2
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 2357
    aget v2, v0, v4

    aget v3, v0, v5

    move-object/from16 v0, p3

    move v14, v4

    move v4, v7

    move v13, v5

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->estimateItemPosition(Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v0

    .line 2359
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 2360
    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 2362
    invoke-virtual {v10, v15, v14}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalScrollForPageChange(IZ)V

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2363
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v2

    .line 2365
    invoke-virtual {v10, v15, v14}, Lcom/prompt/kiosk/slauncher/Workspace;->resetFinalScrollForPageChange(IZ)V

    .line 2367
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2370
    aget v4, v1, v14

    int-to-float v4, v4

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v2

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v1, v14

    .line 2371
    aget v4, v1, v13

    int-to-float v4, v4

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/DragView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v2

    sub-float/2addr v5, v0

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v0, v4

    aput v0, v1, v13

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2373
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v11

    iget-object v12, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v16, v3, v2

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object v13, v1

    move/from16 v15, v16

    move-object/from16 v18, v6

    invoke-virtual/range {v11 .. v19}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;[IFFFILjava/lang/Runnable;I)V

    goto/16 :goto_8

    :cond_6
    move v0, v15

    .line 2380
    iget v1, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    const-wide/16 v5, -0x64

    if-eqz v1, :cond_9

    if-eq v1, v13, :cond_9

    if-eq v1, v11, :cond_8

    const/16 v2, 0x64

    if-ne v1, v2, :cond_7

    goto :goto_4

    .line 2396
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2392
    move-object v2, v7

    check-cast v2, Lcom/prompt/kiosk/slauncher/FolderInfo;

    iget-object v11, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const v12, 0x7f0b0007

    invoke-static {v12, v1, v9, v2, v11}, Lcom/prompt/kiosk/slauncher/FolderIcon;->fromXml(ILcom/prompt/kiosk/slauncher/Launcher;Landroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/FolderInfo;Lcom/prompt/kiosk/slauncher/IconCache;)Lcom/prompt/kiosk/slauncher/FolderIcon;

    move-result-object v1

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2393
    invoke-virtual {v2, v5, v6, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->updateViewIfNeeded(JLandroid/view/View;)V

    :goto_3
    move-object v15, v1

    move-object v12, v7

    goto :goto_5

    .line 2384
    :cond_9
    :goto_4
    instance-of v1, v7, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    if-eqz v1, :cond_a

    .line 2386
    new-instance v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    check-cast v7, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;-><init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V

    move-object v7, v1

    :cond_a
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2388
    move-object v2, v7

    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 2389
    invoke-virtual {v1, v5, v6}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v5

    const v6, 0x7f0b0004

    .line 2388
    invoke-virtual {v1, v6, v9, v2, v5}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :goto_5
    if-eqz p1, :cond_c

    .line 2402
    aget v1, p1, v14

    aget v2, p1, v13

    iget-object v6, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move v11, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v5

    iput-object v5, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const-wide/16 v2, -0x64

    const/4 v6, 0x1

    .line 2403
    iget-object v7, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    move-object v1, v15

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/prompt/kiosk/slauncher/CellLayout;[IZLcom/prompt/kiosk/slauncher/DragView;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v3, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    .line 2406
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout;[ILcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_c
    move v11, v0

    :cond_d
    if-eqz v8, :cond_e

    .line 2412
    iget v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    if-eq v11, v0, :cond_e

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2413
    invoke-static {v10, v11, v11, v0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getSnapScreen(Lcom/prompt/kiosk/slauncher/Workspace;IILcom/prompt/kiosk/slauncher/CellLayout;)I

    move-result v0

    move v7, v0

    goto :goto_6

    :cond_e
    move v7, v11

    :goto_6
    if-eqz p1, :cond_f

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2417
    aget v1, v0, v14

    float-to-int v1, v1

    aget v0, v0, v13

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v4, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v22, v11

    move-object/from16 v11, p3

    move-object v6, v12

    move v12, v1

    move v1, v13

    move v13, v0

    move v5, v14

    move v14, v2

    move-object v2, v15

    move v15, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v11 .. v21}, Lcom/prompt/kiosk/slauncher/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    goto :goto_7

    :cond_f
    move/from16 v22, v11

    move-object v6, v12

    move v1, v13

    move v5, v14

    move-object v2, v15

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 2421
    invoke-virtual {v9, v0, v1, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->findCellForSpan([III)Z

    :goto_7
    const-wide/16 v3, -0x64

    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 2423
    aget v11, v0, v5

    aget v12, v0, v1

    iget v13, v6, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v14, v6, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v15, v2

    move-wide v2, v3

    move/from16 v4, v22

    move v5, v11

    move-object/from16 v16, v6

    move v6, v12

    move v12, v7

    move v7, v13

    move-object v13, v8

    move v8, v14

    move-object v11, v9

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2424
    invoke-virtual {v11, v15}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2425
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 2426
    invoke-virtual/range {p3 .. p3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    iget-object v11, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const-wide/16 v1, -0x64

    .line 2428
    iget v3, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    move v4, v12

    move-object/from16 v12, v16

    move-object v5, v13

    move-wide v13, v1

    move-object v1, v15

    move/from16 v15, v22

    move/from16 v16, v3

    move/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    if-eqz v5, :cond_10

    .line 2429
    iget-object v0, v5, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 2434
    invoke-virtual {v10, v4, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalScrollForPageChange(IZ)V

    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2435
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v2

    iget-object v3, v5, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2436
    invoke-virtual {v10, v4, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->resetFinalScrollForPageChange(IZ)V

    :cond_10
    :goto_8
    return-void
.end method

.method private onResetScrollArea()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2686
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setIsDragOverlapping(Z)V

    .line 2690
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->invalidate()V

    :cond_0
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    return-void
.end method

.method private screenScrolledStandardUI(I)V
    .locals 7

    .line 829
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 833
    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverScrollX:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverScrollX:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxScrollX:I

    if-le v1, v4, :cond_6

    .line 834
    :cond_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverScrollX:I

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 835
    :goto_0
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 836
    invoke-virtual {p0, p1, v4, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result p1

    .line 837
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverScrollX:I

    if-gez v6, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v5, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setOverScrollAmount(FZ)V

    const/high16 v2, -0x3e400000    # -24.0f

    mul-float/2addr v2, p1

    .line 839
    invoke-virtual {v4, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    .line 840
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setFadeForOverScroll(F)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverscrollTransformsSet:Z

    if-nez p1, :cond_8

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverscrollTransformsSet:Z

    .line 843
    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDensity:F

    sget v2, Lcom/prompt/kiosk/slauncher/LauncherConstants$Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr p1, v2

    invoke-virtual {v4, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setCameraDistance(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    if-ne v0, v3, :cond_4

    .line 845
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v4, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setPivotX(F)V

    goto :goto_2

    .line 847
    :cond_4
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    if-nez v1, :cond_5

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_5
    const/high16 v1, 0x3e800000    # 0.25f

    :goto_1
    mul-float/2addr v0, v1

    invoke-virtual {v4, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setPivotX(F)V

    .line 849
    :goto_2
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v4, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setPivotY(F)V

    .line 850
    invoke-virtual {v4, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->setOverscrollTransformsDirty(Z)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverscrollTransformsSet:Z

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOverscrollTransformsSet:Z

    .line 855
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->resetOverscrollTransforms()V

    .line 856
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->resetOverscrollTransforms()V

    :cond_7
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTransitionEffectHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    .line 858
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->adjustEffect(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private setCurrentLayout(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 4

    .line 2088
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    iget v2, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    int-to-float v2, v2

    iget p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->findMatchingPageForDragOver(Lcom/prompt/kiosk/slauncher/DragView;FFZ)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_0

    move-object v1, p1

    :cond_0
    if-nez v1, :cond_1

    .line 2093
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v1

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eq v1, p1, :cond_2

    .line 2096
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2097
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDragOverlappingLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    :cond_2
    return-void
.end method

.method private setDrag(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Landroid/view/View;Z)V
    .locals 1

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-nez p3, :cond_1

    .line 2060
    move-object p3, p2

    check-cast p3, Lcom/prompt/kiosk/slauncher/FolderIcon;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 2061
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz p3, :cond_0

    .line 2063
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/CellLayout;->clearDragOutlines()V

    :cond_0
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverFolderIcon:Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 2066
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 2067
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    :cond_1
    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLastDragOverView:Landroid/view/View;

    return-void
.end method

.method private setNearestDrop(Lcom/prompt/kiosk/slauncher/ItemInfo;Landroid/view/View;ZLcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 2014
    iget v3, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 2015
    iget v4, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget-object v10, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-eqz v10, :cond_0

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2024
    aget v6, v5, v2

    float-to-int v11, v6

    aget v5, v5, v8

    float-to-int v12, v5

    iget v13, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v14, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v15, p2

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/prompt/kiosk/slauncher/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v5

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    if-eqz v10, :cond_3

    iget v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-eqz v5, :cond_1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    :cond_1
    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 2029
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/Alarm;->alarmPending()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderX:I

    iget-object v6, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aget v7, v6, v2

    if-ne v5, v7, :cond_2

    iget v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLastReorderY:I

    aget v6, v6, v8

    if-eq v5, v6, :cond_3

    .line 2032
    :cond_2
    new-instance v11, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    iget v5, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget-object v7, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    move-object v0, v11

    move-object/from16 v1, p0

    move v12, v8

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;-><init>(Lcom/prompt/kiosk/slauncher/Workspace;[FIIIILcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 2034
    invoke-virtual {v0, v11}, Lcom/prompt/kiosk/slauncher/Alarm;->setOnAlarmListener(Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    const-wide/16 v1, 0xfa

    .line 2035
    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/Alarm;->setAlarm(J)V

    goto :goto_1

    :cond_3
    move v12, v8

    if-nez v10, :cond_4

    iget-boolean v3, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v3, :cond_4

    if-nez p3, :cond_4

    iget-object v13, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v15, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object v3, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 2044
    aget v4, v3, v2

    float-to-int v4, v4

    aget v3, v3, v12

    float-to-int v3, v3

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aget v18, v5, v2

    aget v19, v5, v12

    iget v2, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    const/16 v22, 0x0

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    .line 2047
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v23

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v14, p2

    move/from16 v16, v4

    move/from16 v17, v3

    move/from16 v20, v2

    move/from16 v21, v0

    .line 2044
    invoke-virtual/range {v13 .. v24}, Lcom/prompt/kiosk/slauncher/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_4
    :goto_1
    iget v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-eq v0, v12, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-nez v10, :cond_6

    :cond_5
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_6

    .line 2053
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->revertTempState()V

    :cond_6
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .line 693
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    .line 696
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->setFinalX(F)V

    goto :goto_0

    .line 698
    :cond_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxScrollX:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWallpaperXFloat(IILandroid/widget/Scroller;)F

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 699
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->wallpaperOffsetForCurrentScroll(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->setFinalX(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1007
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAnimatingViewIntoPlace:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIsDragOccuring:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 1012
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPageMoving()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mChildrenLayersEnabled:Z

    if-eq v2, p1, :cond_5

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v2, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_4

    .line 1019
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPageCount()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 1020
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1021
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->disableHardwareLayers()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    .line 715
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->jumpToFinal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 718
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->computeScrollOffset(Landroid/graphics/Point;)Z

    move-result v0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    .line 723
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->getCurrX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaperOffsetX(F)V

    :cond_1
    if-eqz v0, :cond_2

    .line 729
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->invalidate()V

    :cond_2
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->wallpaperOffsetForCurrentScroll(I)F

    move-result v0

    return v0
.end method

.method private wallpaperOffsetForCurrentScroll(I)F
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrolling:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 672
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 680
    iput v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    .line 681
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollRange()I

    move-result v2

    .line 684
    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr p1, v3

    .line 686
    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLayoutScale:F

    int-to-float v1, v2

    div-float/2addr p1, v1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method


# virtual methods
.method public acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1274
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragSource:Lcom/prompt/kiosk/slauncher/DragSource;

    const/4 v9, 0x1

    if-eq v0, v7, :cond_5

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return v10

    .line 1280
    :cond_0
    iget v1, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v2, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    iget v3, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget v4, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    iget-object v6, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getDragViewVisualCenter(Landroid/view/View;IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v11, 0x0

    .line 1283
    invoke-virtual {v7, v1, v0, v11}, Lcom/prompt/kiosk/slauncher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 1290
    iget v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    .line 1291
    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    .line 1292
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v12, v0

    move v15, v1

    move v14, v2

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1295
    iget v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 1296
    iget v2, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    move v15, v1

    move v14, v2

    move-object v12, v11

    :goto_0
    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1299
    aget v1, v0, v10

    float-to-int v1, v1

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v5, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v6, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v3, v15

    move v4, v14

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1303
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getTargetCellDistance()F

    move-result v6

    .line 1304
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v2, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v3, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->willCreateUserFolder(Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v9

    .line 1307
    :cond_2
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v2, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v1, v2, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v9

    :cond_3
    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1311
    invoke-virtual {v0, v11, v15, v14, v12}, Lcom/prompt/kiosk/slauncher/CellLayout;->findCellForSpanIgnoring([IIILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v13, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1325
    aget v2, v1, v10

    float-to-int v2, v2

    aget v1, v1, v9

    float-to-int v1, v1

    const/16 v20, 0x0

    iget-object v3, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/16 v23, 0x3

    move v4, v14

    move v14, v2

    move v2, v15

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v2

    move/from16 v19, v4

    move-object/from16 v21, v3

    move-object/from16 v22, v0

    invoke-virtual/range {v13 .. v23}, Lcom/prompt/kiosk/slauncher/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1327
    aget v1, v0, v10

    if-ltz v1, :cond_4

    aget v0, v0, v9

    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1332
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->showOutOfSpaceMessage()V

    return v10

    :cond_5
    :goto_1
    return v9
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

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 998
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_0
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 366
    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 4

    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    const-string v1, "Launcher.Workspace"

    if-nez v0, :cond_1

    if-ltz p4, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p4, v0, :cond_1

    .line 384
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The screen must be >= 0 and < "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "); skipping child"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 392
    :cond_1
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_2

    .line 393
    move-object v0, p1

    check-cast v0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setTextVisible(Z)V

    .line 396
    :cond_2
    invoke-virtual {p0, p4}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 397
    new-instance v2, Lcom/prompt/kiosk/slauncher/FocusHelper$IconKeyEventListener;

    invoke-direct {v2}, Lcom/prompt/kiosk/slauncher/FocusHelper$IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v0, :cond_3

    return-void

    .line 401
    :cond_3
    invoke-static {p1, p5, p6, p7, p8}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getLayoutParams(Landroid/view/View;IIII)Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    move-result-object v2

    .line 404
    invoke-static/range {p2 .. p8}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result p5

    .line 405
    instance-of p8, p1, Lcom/prompt/kiosk/slauncher/Folder;

    xor-int/lit8 p7, p8, 0x1

    const/4 v3, 0x0

    if-eqz p9, :cond_4

    move p4, v3

    goto :goto_0

    :cond_4
    const/4 p2, -0x1

    move p4, p2

    :goto_0
    move-object p2, v0

    move-object p3, p1

    move-object p6, v2

    .line 406
    invoke-virtual/range {p2 .. p7}, Lcom/prompt/kiosk/slauncher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Z)Z

    move-result p2

    if-nez p2, :cond_5

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to add to item at ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") to CellLayout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez p8, :cond_6

    .line 414
    invoke-virtual {p1, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 415
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 417
    :cond_6
    instance-of p2, p1, Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 418
    check-cast p1, Lcom/prompt/kiosk/slauncher/DropTarget;

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/DragController;->addDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    :cond_7
    return-void
.end method

.method public addPage()Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 2

    .line 2914
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2916
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2917
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2918
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->generatePageId(ILcom/prompt/kiosk/slauncher/Workspace;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 2919
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2921
    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    return-object v0
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout;[ILcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)Z
    .locals 2

    const/4 p1, 0x0

    .line 1439
    aget v0, p3, p1

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-virtual {p2, v0, p3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p3, :cond_0

    return p1

    :cond_0
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1444
    invoke-static {p4, p5, p2, p1, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;ZLandroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;Lcom/prompt/kiosk/slauncher/Workspace;)Z

    move-result p1

    return p1
.end method

.method public beginDragShared(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DragSource;Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1222
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1225
    sget v3, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1228
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, v1, v4, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1229
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1231
    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v6

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempXY:[I

    invoke-virtual {v6, v1, v7}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v14

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempXY:[I

    const/4 v7, 0x0

    .line 1232
    aget v6, v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempXY:[I

    const/4 v9, 0x1

    .line 1233
    aget v6, v6, v9

    div-int/lit8 v10, v3, 0x2

    sub-int/2addr v6, v10

    .line 1237
    instance-of v11, v1, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-nez v11, :cond_2

    instance-of v12, v1, Lcom/prompt/kiosk/slauncher/PagedViewIcon;

    if-eqz v12, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    instance-of v2, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1255
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    move-object v9, v1

    check-cast v9, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundHeight()I

    move-result v9

    invoke-direct {v2, v7, v7, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v2

    move-object v12, v3

    goto :goto_1

    :cond_1
    move-object v12, v3

    move-object v13, v12

    goto :goto_1

    :cond_2
    :goto_0
    const v7, 0x7f070001

    .line 1238
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v11, :cond_3

    .line 1240
    move-object v12, v1

    check-cast v12, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {v12}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aget-object v9, v12, v9

    if-eqz v9, :cond_3

    .line 1241
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    :cond_3
    const/high16 v9, 0x7f070000

    .line 1243
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v7

    .line 1245
    div-int/lit8 v5, v5, 0x2

    add-int v12, v5, v7

    add-int/2addr v7, v9

    add-int/2addr v6, v9

    .line 1251
    new-instance v13, Landroid/graphics/Point;

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v10

    invoke-direct {v13, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1252
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v9, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v13

    move-object v13, v2

    :goto_1
    move v2, v6

    if-eqz v11, :cond_4

    .line 1260
    move-object v3, v1

    check-cast v3, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 1261
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 1264
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget v11, Lcom/prompt/kiosk/slauncher/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v5, p3

    move-object v6, v4

    move v7, v8

    move v8, v2

    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v14}, Lcom/prompt/kiosk/slauncher/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 1266
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    const/4 v0, 0x1

    .line 293
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 297
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 298
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->buildChildrenLayer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method clearDropTargets()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 2716
    invoke-static {v0, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->clearDropTargets(Lcom/prompt/kiosk/slauncher/DragController;Lcom/prompt/kiosk/slauncher/Workspace;)V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    .line 772
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->computeScroll()V

    .line 773
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->syncWallpaperOffsetWithScroll()V

    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineColor:I

    .line 1158
    invoke-static {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    .line 1159
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 1160
    invoke-virtual {p1, v1, p2, v0}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewMultiplyColor:I

    .line 1161
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x0

    .line 1162
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/prompt/kiosk/slauncher/CellLayout;[IZLcom/prompt/kiosk/slauncher/DragView;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p5, :cond_0

    .line 1385
    aget v1, p5, v9

    aget v3, p5, v8

    invoke-virtual {v2, v1, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v12, v1

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    .line 1389
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1390
    iget v3, v3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    aget v4, p5, v9

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    aget v4, p5, v8

    if-ne v3, v4, :cond_1

    if-ne v1, v2, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    if-eqz v12, :cond_9

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iput-boolean v9, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p5, :cond_3

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1395
    iget v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->screen:I

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_2
    move v5, v1

    .line 1397
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1398
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    .line 1400
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1401
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-nez p6, :cond_4

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1404
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1407
    :cond_4
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v1, :cond_5

    .line 1409
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    :cond_5
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1411
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v12, v15}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v1, :cond_6

    .line 1413
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->resetTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 1415
    :cond_6
    invoke-virtual {v2, v12}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1417
    aget v6, p5, v9

    aget v7, p5, v8

    move-object/from16 v2, p4

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/Launcher;->addFolder(Lcom/prompt/kiosk/slauncher/CellLayout;JIII)Lcom/prompt/kiosk/slauncher/FolderIcon;

    move-result-object v10

    if-nez v10, :cond_7

    return v9

    :cond_7
    const/4 v1, -0x1

    .line 1420
    iput v1, v11, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I

    .line 1421
    iput v1, v11, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I

    .line 1422
    iput v1, v13, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I

    .line 1423
    iput v1, v13, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I

    if-eqz p7, :cond_8

    move-object/from16 v14, p7

    .line 1428
    invoke-virtual/range {v10 .. v16}, Lcom/prompt/kiosk/slauncher/FolderIcon;->performCreateAnimation(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;F)V

    goto :goto_3

    .line 1430
    :cond_8
    invoke-virtual {v10, v11}, Lcom/prompt/kiosk/slauncher/FolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    .line 1431
    invoke-virtual {v10, v13}, Lcom/prompt/kiosk/slauncher/FolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :goto_3
    return v8

    :cond_9
    :goto_4
    return v9
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 4

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    .line 519
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    div-float v2, v1, v0

    float-to-double v2, v2

    .line 522
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 524
    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cancelCurrentPageLongPress()V

    :cond_2
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    return-void

    :cond_3
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 539
    invoke-super {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    if-eqz v0, :cond_6

    return-void

    .line 543
    :cond_6
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 948
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 951
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getWidth()I

    move-result v0

    .line 952
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 953
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    .line 955
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 956
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    .line 957
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    .line 959
    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .line 960
    iget v7, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    add-int/2addr v7, v6

    .line 961
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 962
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v8

    if-gez v3, :cond_0

    add-int/lit8 v3, v8, -0x1

    :cond_0
    sub-int/2addr v8, v6

    if-le v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v2, v7

    .line 971
    :goto_0
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 972
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v3, :cond_2

    .line 974
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mScrollDirection:I

    if-nez v3, :cond_2

    .line 975
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    const v2, 0x7f08006e

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 976
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v1, v5

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 977
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 978
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getIsDragOverlapping()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mScrollDirection:I

    if-ne v2, v6, :cond_3

    .line 979
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 980
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v6

    add-int/2addr v6, v0

    sub-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 2

    .line 2485
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 3

    .line 2833
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    .line 2834
    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/prompt/kiosk/slauncher/Folder;
    .locals 0

    .line 2708
    invoke-static {p1, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getFolderForTag(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2276
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2838
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    return-void
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 0

    .line 2700
    invoke-static {p1, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getParentCellLayoutForView(Landroid/view/View;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 2712
    invoke-static {p1, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getViewForTag(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/Workspace;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getWorkspaceAndHotSeatCellLayouts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/CellLayout;",
            ">;"
        }
    .end annotation

    .line 2704
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWorkspaceAndHotSeatCellLayouts(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected hitsNextPage(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initWorkspace()V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 323
    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    .line 324
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->setScreen(I)V

    .line 325
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 326
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setWillNotDraw(Z)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    const/16 v0, 0x258

    .line 331
    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSnapVelocity:I

    .line 332
    new-instance v0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 333
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 335
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxDistanceForFolderCreation:F

    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .line 351
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 4

    .line 1849
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v0, 0x0

    .line 1850
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 1851
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    sub-float/2addr v1, p1

    aput v1, p2, v0

    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 3

    if-nez p3, :cond_0

    .line 1824
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    :cond_0
    const/4 v0, 0x0

    .line 1827
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 1828
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    aput v1, p2, v0

    .line 1829
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 2816
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 2818
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 2820
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentPage(I)V

    :goto_0
    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 2822
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .line 577
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->notifyPageSwitchListener()V

    .line 578
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->setScreen(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 879
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onAttachedToWindow()V

    .line 880
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 881
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->computeScroll()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 882
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DragController;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 886
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIsDragOccuring:Z

    .line 313
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 314
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->unlockScreenOrientation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    return-void
.end method

.method public onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 0

    .line 1711
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p1

    .line 1712
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 1713
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDragOverlappingLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    return-void
.end method

.method public onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 0

    .line 1777
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->doDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-boolean v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_b

    iget-boolean v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1933
    :cond_0
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1936
    iget v0, v9, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    if-ltz v0, :cond_a

    iget v0, v9, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-ltz v0, :cond_a

    .line 1937
    iget v1, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v2, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    iget v3, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget v4, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v5, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    iget-object v6, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getDragViewVisualCenter(Landroid/view/View;IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x0

    iput-object v10, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1942
    invoke-direct/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentLayout(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-nez v0, :cond_1

    move-object v11, v10

    goto :goto_0

    .line 1946
    :cond_1
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v11, v0

    :goto_0
    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    :goto_1
    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1949
    invoke-virtual {v7, v0, v1, v10}, Lcom/prompt/kiosk/slauncher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 1952
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    const/4 v13, 0x0

    .line 1958
    aget v1, v0, v13

    float-to-int v1, v1

    const/4 v14, 0x1

    aget v0, v0, v14

    float-to-int v2, v0

    iget v3, v9, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v4, v9, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget-object v5, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v6, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1961
    aget v1, v0, v13

    aget v0, v0, v14

    invoke-virtual {v7, v1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropOverCell(II)V

    .line 1963
    invoke-direct/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getTargetCellDistance()F

    move-result v6

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1965
    aget v2, v1, v13

    aget v1, v1, v14

    invoke-virtual {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v15

    iget-object v2, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v3, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v4, v6

    .line 1966
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->willCreateUserFolder(Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;[IFZ)Z

    move-result v0

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v2, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1967
    invoke-virtual {v7, v12, v1, v2, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;[IF)Z

    move-result v6

    .line 1968
    instance-of v1, v15, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v1, :cond_3

    .line 1971
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-ne v2, v12, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    move v12, v1

    :goto_2
    iget v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-ne v1, v14, :cond_4

    if-nez v0, :cond_4

    .line 1986
    invoke-virtual {v7, v13}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    iput-boolean v13, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    :cond_4
    iget v1, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-nez v6, :cond_5

    .line 1991
    invoke-virtual {v7, v13}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    iput-boolean v13, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    :cond_5
    if-eqz v0, :cond_8

    iget v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 1997
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v15, :cond_6

    .line 1998
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    :cond_6
    iget-object v5, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 2000
    new-instance v4, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;

    iget-object v2, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aget v3, v0, v13

    aget v13, v0, v14

    if-eqz v10, :cond_7

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    move-object/from16 v16, v15

    .line 2002
    iget-wide v14, v10, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    invoke-virtual {v0, v14, v15}, Lcom/prompt/kiosk/slauncher/Launcher;->getScaleForContainer(J)F

    move-result v0

    goto :goto_3

    :cond_7
    move-object/from16 v16, v15

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    move v10, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v14, v4

    move v4, v13

    move-object v13, v5

    const/4 v5, 0x0

    move v15, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;-><init>(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/CellLayout;IIZF)V

    .line 2000
    invoke-virtual {v13, v14}, Lcom/prompt/kiosk/slauncher/Alarm;->setOnAlarmListener(Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;)V

    iget-object v0, v7, Lcom/prompt/kiosk/slauncher/Workspace;->mFolderCreationAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    const-wide/16 v1, 0x0

    .line 2003
    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/Alarm;->setAlarm(J)V

    goto :goto_4

    :cond_8
    move-object/from16 v16, v15

    move v15, v6

    :goto_4
    move-object/from16 v0, v16

    .line 2008
    invoke-direct {v7, v8, v0, v15}, Lcom/prompt/kiosk/slauncher/Workspace;->setDrag(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Landroid/view/View;Z)V

    .line 2009
    invoke-direct {v7, v9, v11, v12, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->setNearestDrop(Lcom/prompt/kiosk/slauncher/ItemInfo;Landroid/view/View;ZLcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_9
    return-void

    .line 1936
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    return-void
.end method

.method public onDragStart(Lcom/prompt/kiosk/slauncher/DragSource;Ljava/lang/Object;I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIsDragOccuring:Z

    .line 306
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 307
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->lockScreenOrientation()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2

    .line 1090
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1093
    sget v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1096
    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 901
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateWallpaperOffsets()V

    .line 902
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 27

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1448
    iget v1, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v2, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    iget v3, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget v4, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v5, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    iget-object v6, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getDragViewVisualCenter(Landroid/view/View;IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    iget-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v1, :cond_1

    iget-object v2, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 1452
    invoke-virtual {v9, v1, v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    :cond_1
    iget-object v8, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1459
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragSource:Lcom/prompt/kiosk/slauncher/DragSource;

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eq v0, v9, :cond_2

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1460
    aget v1, v0, v15

    float-to-int v1, v1

    aget v0, v0, v14

    float-to-int v0, v0

    filled-new-array {v1, v0}, [I

    move-result-object v1

    .line 1462
    iget-object v2, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v3, v8

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;ZLcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    goto/16 :goto_b

    :cond_2
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_14

    .line 1464
    iget-object v13, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1466
    invoke-virtual {v9, v13}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Launcher.Workspace"

    const-string v1, "ignoring onDrop(). getParentCellLayoutForView(cell) == null"

    .line 1469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/16 v22, -0x2

    if-eqz v8, :cond_12

    .line 1475
    invoke-virtual {v9, v13}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v0

    if-eq v0, v8, :cond_4

    move/from16 v23, v14

    goto :goto_0

    :cond_4
    move/from16 v23, v15

    :goto_0
    const-wide/16 v11, -0x64

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1477
    aget v0, v0, v15

    if-gez v0, :cond_5

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->screen:I

    goto :goto_1

    :cond_5
    invoke-virtual {v9, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_1
    move v7, v0

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    .line 1479
    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    move/from16 v16, v0

    goto :goto_2

    :cond_6
    move/from16 v16, v14

    :goto_2
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    .line 1480
    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    move/from16 v17, v0

    goto :goto_3

    :cond_7
    move/from16 v17, v14

    :goto_3
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1484
    aget v1, v0, v15

    float-to-int v1, v1

    aget v0, v0, v14

    float-to-int v2, v0

    iget-object v6, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestArea(IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    iget-boolean v6, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    iget-boolean v4, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mAddToExistingFolderOnDrop:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v13

    move/from16 v18, v4

    move-wide v4, v11

    .line 1491
    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Workspace;->createOrAddFolder(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1500
    :cond_8
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1501
    iget v0, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 1502
    iget v1, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-nez v6, :cond_a

    if-eqz v18, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v24, v15

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 v24, v14

    :goto_5
    const/4 v2, 0x2

    new-array v6, v2, [I

    if-eqz v24, :cond_b

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1513
    aget v1, v0, v15

    float-to-int v1, v1

    aget v0, v0, v14

    float-to-int v2, v0

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v3, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v4, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v5

    move-object v5, v13

    move-object v15, v6

    move-object v6, v8

    move/from16 v26, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aput v14, v15, v14

    const/4 v2, 0x0

    aput v14, v15, v2

    move-wide v6, v11

    move-object v4, v13

    move v3, v14

    move-object v0, v15

    goto :goto_6

    :cond_b
    move-object/from16 v25, v5

    move/from16 v26, v7

    move v2, v15

    move-object v15, v6

    iget-object v3, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragViewVisualCenter:[F

    .line 1517
    aget v4, v3, v2

    float-to-int v4, v4

    aget v3, v3, v14

    float-to-int v3, v3

    iget-object v5, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    const/16 v21, 0x1

    move-wide v6, v11

    move-object v11, v8

    move v12, v4

    move-object v4, v13

    move v13, v3

    move v3, v14

    move v14, v0

    move-object v0, v15

    move v15, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v0

    invoke-virtual/range {v11 .. v21}, Lcom/prompt/kiosk/slauncher/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    :goto_6
    iget-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1521
    aget v5, v1, v2

    if-ltz v5, :cond_c

    aget v1, v1, v3

    if-ltz v1, :cond_c

    move v15, v3

    goto :goto_7

    :cond_c
    move v15, v2

    :goto_7
    iget-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    move-object/from16 v11, v25

    .line 1522
    invoke-static {v1, v4, v11, v0, v15}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->updateWidgetSize(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/view/View;Lcom/prompt/kiosk/slauncher/ItemInfo;[IZ)V

    .line 1524
    iget v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    move/from16 v12, v26

    if-eq v0, v12, :cond_d

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1525
    invoke-static {v9, v12, v0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->setSnapScreen(Lcom/prompt/kiosk/slauncher/Workspace;ILcom/prompt/kiosk/slauncher/CellLayout;)I

    move-result v22

    :cond_d
    if-eqz v15, :cond_11

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1529
    aget v1, v0, v2

    if-ltz v1, :cond_10

    aget v0, v0, v3

    if-ltz v0, :cond_10

    if-eqz v23, :cond_e

    .line 1532
    invoke-virtual {v9, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1533
    aget v5, v0, v2

    aget v14, v0, v3

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v15, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object v1, v4

    move v13, v2

    move-wide v2, v6

    move-object/from16 v18, v4

    move v4, v12

    move-wide/from16 v19, v6

    move v6, v14

    move v7, v15

    move-object v14, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    goto :goto_8

    :cond_e
    move v13, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-object v14, v8

    .line 1537
    :goto_8
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1538
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    if-eqz v24, :cond_f

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1542
    aget v1, v0, v13

    const/4 v15, 0x1

    aget v0, v0, v15

    move-object/from16 v6, v18

    invoke-virtual {v14, v6, v1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->onMove(Landroid/view/View;II)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const v1, 0x7f0c0006

    .line 1543
    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_f
    move-object/from16 v6, v18

    const/4 v15, 0x1

    :goto_9
    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1546
    aget v0, v0, v13

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->tmpCellX:I

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1547
    aget v0, v0, v15

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->tmpCellY:I

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    .line 1548
    iget v0, v11, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1549
    iget v0, v11, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput v0, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1550
    iput-boolean v15, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1552
    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->screen:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    aget v3, v0, v13

    aget v4, v0, v15

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v5, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v11, v0, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->spanY:I

    move-wide/from16 v0, v19

    move-object v14, v6

    move v6, v11

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1555
    iget v5, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, v8, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    move-object v1, v7

    move-wide/from16 v2, v19

    move v4, v12

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    .line 1557
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-static {v14}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getScaleForView(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DragView;->setSourceIconScale(F)V

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    move-wide/from16 v1, v19

    .line 1559
    invoke-virtual {v0, v1, v2, v14}, Lcom/prompt/kiosk/slauncher/Launcher;->updateViewIfNeeded(JLandroid/view/View;)V

    goto :goto_a

    :cond_10
    move v15, v3

    move-object v14, v4

    goto :goto_a

    :cond_11
    move v13, v2

    move v15, v3

    move-object v14, v4

    .line 1563
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    iget-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1564
    iget v2, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v13

    iget-object v1, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mTargetCell:[I

    .line 1565
    iget v0, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    aput v0, v1, v15

    .line 1566
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1567
    invoke-virtual {v0, v14}, Lcom/prompt/kiosk/slauncher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    if-eqz v24, :cond_13

    iget-object v0, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const v1, 0x7f0c0006

    .line 1570
    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_12
    move v15, v14

    move-object v14, v13

    :cond_13
    :goto_a
    move/from16 v0, v22

    .line 1575
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1579
    new-instance v2, Lcom/prompt/kiosk/slauncher/Workspace$1;

    invoke-direct {v2, v9}, Lcom/prompt/kiosk/slauncher/Workspace$1;-><init>(Lcom/prompt/kiosk/slauncher/Workspace;)V

    iput-boolean v15, v9, Lcom/prompt/kiosk/slauncher/Workspace;->mAnimatingViewIntoPlace:Z

    .line 1587
    invoke-direct {v9, v10, v0, v14, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->dragAnimation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;ILandroid/view/View;Ljava/lang/Runnable;)V

    .line 1588
    invoke-virtual {v1, v14}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_14
    :goto_b
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eq p1, p0, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    .line 2534
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2536
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2537
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2538
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/prompt/kiosk/slauncher/DropTarget;

    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/DragController;->removeDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    .line 2546
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->doDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2547
    iget p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2550
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2553
    :cond_2
    :goto_0
    iget-boolean p1, p2, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->cancelled:Z

    if-nez p1, :cond_3

    if-nez p3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz p1, :cond_4

    .line 2554
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 2555
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    iput p3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mScrollDirection:I

    .line 2617
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    if-nez p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    add-int/2addr v0, p3

    .line 2619
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2620
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p3

    if-gez v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    :goto_1
    move p3, p2

    goto :goto_2

    :cond_1
    sub-int/2addr p3, p2

    if-le v0, p3, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    move p3, p1

    :goto_2
    const/4 v1, 0x0

    .line 2630
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2632
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2633
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cancelFolderCreation()V

    if-eqz v0, :cond_4

    .line 2636
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDragOverlappingLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2640
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->invalidate()V

    if-eqz p3, :cond_3

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    :cond_3
    move p1, p2

    :cond_4
    return p1
.end method

.method public onExitScrollArea()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_2

    .line 2661
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v0

    .line 2662
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2663
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDragOverlappingLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2667
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragController()Lcom/prompt/kiosk/slauncher/DragController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2668
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragController()Lcom/prompt/kiosk/slauncher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragController;->getLastDropTarget()Lcom/prompt/kiosk/slauncher/DropTarget;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/Folder;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2669
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 2674
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInScrollArea:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    move v1, v0

    :cond_3
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    .line 466
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 473
    :cond_1
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    .line 470
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return v2

    .line 479
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 497
    :cond_4
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTouchState:I

    if-nez v0, :cond_6

    .line 498
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 499
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_6

    .line 500
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 481
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mXDown:F

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mYDown:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    if-eqz v0, :cond_6

    .line 484
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspaceOpacity()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mXDown:F

    float-to-int v0, v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mYDown:F

    float-to-int v3, v3

    .line 485
    invoke-direct {p0, v0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->isTouchedScrollableFolderIcon(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    .line 488
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 505
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherTransitionEnd(Lcom/prompt/kiosk/slauncher/Launcher;ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperOffset:Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;

    const/4 p2, 0x0

    .line 1132
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1133
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/prompt/kiosk/slauncher/Launcher;ZZ)V
    .locals 0

    .line 1121
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cancelScrollingIndicatorAnimations()V

    return-void
.end method

.method public onLauncherTransitionStart(Lcom/prompt/kiosk/slauncher/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStep(Lcom/prompt/kiosk/slauncher/Launcher;F)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 892
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 894
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->computeWallpaperScrollRatio(I)V

    .line 896
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .line 548
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onPageBeginMoving()V

    .line 550
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 555
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    invoke-static {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->enableChildrenCache(Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 559
    :cond_1
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->enableChildrenCache(Landroid/view/ViewGroup;II)V

    :goto_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .line 565
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onPageEndMoving()V

    .line 567
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->clearChildrenCache(Lcom/prompt/kiosk/slauncher/Workspace;)V

    :goto_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 988
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 992
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 2581
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2582
    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->setScreen(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNoInterceptTouchEvent:Z

    .line 511
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 340
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 341
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_0

    .line 344
    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 346
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspaceOpacity()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setAlpha(F)V

    .line 347
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->createHardwareLayer()V

    return-void

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A Workspace can only have CellLayout children."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTempCell:[I

    .line 1035
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getLocationOnScreen([I)V

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 1038
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 1039
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v3, p1

    aput v3, v0, v2

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 433
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 874
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->acceleratedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 4

    .line 2852
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->pageBeginMoving()V

    .line 2856
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2857
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    .line 2858
    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTmpDeltaForNextPage:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    if-eq v0, v2, :cond_0

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    goto :goto_0

    .line 2860
    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTmpDeltaForNextPage:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mNextPage:I

    if-eq v0, v2, :cond_1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .line 2870
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->pageEndMoving()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWrapWallpaper:I

    return-void
.end method

.method public resetFinalScrollForPageChange(IZ)V
    .locals 2

    .line 1659
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1661
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    .line 1662
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 1663
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    .line 1664
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleX:F

    .line 1666
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleY:F

    .line 1667
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    goto :goto_1

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_4

    :cond_1
    if-ne p1, v1, :cond_2

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 1676
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    .line 1677
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 1678
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    .line 1679
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleX:F

    .line 1681
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleY:F

    .line 1682
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public resetTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 1

    .line 2467
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_1

    .line 2468
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2469
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2473
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    .line 2474
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 2475
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    .line 2476
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    :cond_1
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0

    .line 864
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->screenScrolled(I)V

    .line 865
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->screenScrolledStandardUI(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    if-nez v0, :cond_0

    .line 2588
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->scrollLeft()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2590
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2592
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInHotseatScrollArea:Z

    if-nez v0, :cond_0

    .line 2599
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->scrollRight()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2601
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2603
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .line 906
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->scrollTo(II)V

    return-void
.end method

.method public setCellCount(II)V
    .locals 0

    .line 2896
    invoke-static {p1, p2, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->setCellCount(IILcom/prompt/kiosk/slauncher/Workspace;)V

    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2116
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setIsDragOverlapping(Z)V

    :cond_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2120
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setIsDragOverlapping(Z)V

    .line 2122
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->invalidate()V

    return-void
.end method

.method setCurrentDropLayout(Lcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->revertTempState()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2104
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz p1, :cond_1

    .line 2108
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDragEnter()V

    :cond_1
    const/4 p1, 0x1

    .line 2110
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupReorder(Z)V

    const/4 p1, -0x1

    .line 2111
    invoke-virtual {p0, p1, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentDropOverCell(II)V

    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverY:I

    if-eq p2, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverY:I

    .line 2130
    invoke-virtual {v1, v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2131
    invoke-virtual {v1, p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOverY:I

    if-nez v0, :cond_2

    .line 2141
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    :cond_2
    return-void
.end method

.method public setDefaultScreen(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDefaultPage:I

    .line 2930
    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    .line 2931
    iget p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->setScreen(I)V

    return-void
.end method

.method setDragMode(I)V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2148
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupAddToFolder()V

    const/4 v1, 0x0

    .line 2151
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupReorder(Z)V

    .line 2152
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupFolderCreation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 2154
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupReorder(Z)V

    .line 2155
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupFolderCreation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 2157
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupAddToFolder()V

    .line 2158
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 2160
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupAddToFolder()V

    .line 2161
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->cleanupFolderCreation(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_3
    :goto_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragMode:I

    :cond_4
    return-void
.end method

.method setFadeForOverScroll(F)V
    .locals 2

    .line 2842
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2844
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollingIndicator()Landroid/widget/ImageView;

    move-result-object v0

    .line 2846
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->cancelScrollingIndicatorAnimations()V

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 2847
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setFinalScrollForPageChange(IZ)V
    .locals 5

    .line 1614
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    .line 1617
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1618
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTranslationX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 1619
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getRotationY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    if-eqz p2, :cond_0

    .line 1621
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleX:F

    .line 1622
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleY:F

    .line 1624
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v3, p1

    .line 1625
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    .line 1626
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    .line 1627
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    if-eqz p2, :cond_6

    .line 1629
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    .line 1630
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    goto :goto_1

    .line 1632
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-ne p1, v0, :cond_6

    .line 1633
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v4

    iput v4, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    if-ne p1, v3, :cond_3

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1640
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1641
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTranslationX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 1642
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getRotationY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    if-eqz p2, :cond_5

    .line 1644
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleX:F

    .line 1645
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScaleY:F

    .line 1647
    :cond_5
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v3, p1

    .line 1648
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    .line 1649
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    .line 1650
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    if-eqz p2, :cond_6

    .line 1652
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    .line 1653
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 3

    .line 2443
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragTargetLayoutForWrap:Lcom/prompt/kiosk/slauncher/CellLayout;

    if-eqz v0, :cond_1

    .line 2444
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2445
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2448
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2449
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    neg-int v0, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 2451
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2452
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2456
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedScrollX:I

    .line 2457
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2458
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedTranslationX:F

    .line 2459
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mSavedRotationY:F

    .line 2461
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollX(I)V

    const/4 v0, 0x0

    .line 2462
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    .line 2463
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    nop

    :cond_1
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 3035
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayoutScale(F)V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOrgPageSpacing:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2908
    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mPageSpacing:I

    .line 2910
    :cond_0
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->setLayoutScale(F)V

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mOrgPageSpacing:I

    .line 2902
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->setPageSpacing(I)V

    return-void
.end method

.method public setTransitionEffect(I)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mTransitionEffectHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    .line 2998
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->setEffect(I)V

    const/4 p1, 0x0

    .line 3001
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3002
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDensity:F

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->resetView(Landroid/view/View;FLcom/prompt/kiosk/slauncher/Launcher;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .line 615
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 616
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 617
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 618
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 627
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperMode:I

    if-ne v2, v4, :cond_0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperHeight:I

    goto :goto_1

    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 632
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperHeight:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperMode:I

    if-ne v2, v4, :cond_2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 639
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperWidth:I

    :goto_0
    iput v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperHeight:I

    :goto_1
    return-void
.end method

.method public setWallpaperMode(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperMode:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperScrolling:Z

    .line 2989
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method public setWallpaperView(Lcom/prompt/kiosk/slauncher/WallpaperView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    return-void
.end method

.method setup(Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 2522
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 0

    .line 746
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->snapToPage(I)V

    .line 747
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->computeWallpaperScrollRatio(I)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 0

    .line 741
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->snapToPageWithVelocity(II)V

    return-void
.end method

.method startDrag(Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;)V
    .locals 2

    .line 1194
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1197
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    const/16 p1, 0x8

    .line 1202
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 1204
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 1206
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1207
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1209
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 1212
    sget v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1215
    invoke-direct {p0, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 1216
    invoke-virtual {p0, v0, p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->beginDragShared(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DragSource;Lcom/prompt/kiosk/slauncher/DragController;)V

    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0

    return-void
.end method

.method public syncPages()V
    .locals 0

    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .line 735
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/SmoothPagedView;->updateCurrentPageScroll()V

    .line 736
    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->computeWallpaperScrollRatio(I)V

    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)V
    .locals 4

    .line 2563
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildren()Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2564
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/16 v2, -0x64

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2572
    invoke-static {v3, p1, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->updateItemLocations(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractCellLayout;III)V

    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;[IF)Z
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxDistanceForFolderCreation:F

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const-wide/16 v2, -0x64

    .line 1370
    invoke-virtual {v1, v2, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->getScaleForContainer(J)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1373
    :cond_0
    aget p4, p3, v0

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-virtual {p2, p4, p3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    .line 1374
    instance-of p3, p2, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz p3, :cond_1

    .line 1375
    check-cast p2, Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 1376
    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method willCreateUserFolder(Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;[IFZ)Z
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mMaxDistanceForFolderCreation:F

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const-wide/16 v2, -0x64

    .line 1341
    invoke-virtual {v1, v2, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->getScaleForContainer(J)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1344
    :cond_0
    aget p4, p3, v0

    const/4 v1, 0x1

    aget v2, p3, v1

    invoke-virtual {p2, p4, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 1346
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 1347
    iget-boolean v3, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->tmpCellX:I

    iget v4, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    if-eq v3, v2, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_3

    .line 1354
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    .line 1355
    iget v3, v3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    aget v4, p3, v0

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mDragInfo:Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    aget p3, p3, v1

    if-ne v3, p3, :cond_3

    if-ne v2, p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    if-eqz p4, :cond_5

    if-nez p2, :cond_5

    if-eqz p5, :cond_4

    iget-boolean p2, p0, Lcom/prompt/kiosk/slauncher/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p2, :cond_4

    goto :goto_1

    .line 1362
    :cond_4
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1363
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->isWillBecomeShortcut(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result p3

    .line 1364
    invoke-static {p1, p4, p2, p0}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->isSameAsOverView(Lcom/prompt/kiosk/slauncher/ItemInfo;Landroid/view/View;ZLcom/prompt/kiosk/slauncher/Workspace;)Z

    move-result p1

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    :goto_1
    return v0
.end method
