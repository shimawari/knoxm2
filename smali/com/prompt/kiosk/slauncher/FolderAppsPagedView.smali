.class public Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;
.super Lcom/prompt/kiosk/slauncher/PagedView;
.source "FolderAppsPagedView.java"


# static fields
.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field static final TAG:Ljava/lang/String; = "FolderAppsPagedView"


# instance fields
.field private mAnimateItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsClickListener:Landroid/view/View$OnClickListener;

.field private mAppsLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

.field private mCellInfoUpdated:Z

.field private mDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

.field private mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field private mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

.field protected mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumFolderAppsPages:I

.field private mPendingTrayAnimationFloatingView:Landroid/view/View;

.field private mPendingTrayAnimationInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field private mPendingTrayAnimationStartPos:Landroid/graphics/Rect;

.field private mSaveInstanceStateItemIndex:I

.field private mSavedRotationY:F

.field private mSavedScaleX:F

.field private mSavedScaleY:F

.field private mSavedScrollX:I

.field private mSavedTranslationX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 73
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationStartPos:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellInfoUpdated:Z

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mFadeInAdjacentScreens:Z

    return-void
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentPage()I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 128
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    mul-int/2addr v2, v3

    .line 130
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/2addr v0, v2

    .line 132
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupPage(Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;)V
    .locals 4

    .line 248
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setCellCount(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 249
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getWidthGap()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getHeightGap()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setGap(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 250
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getCellHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setCellDimensions(II)V

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setPadding(IIII)V

    const/16 v1, 0x8

    .line 257
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 258
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 259
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 260
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 261
    invoke-virtual {p1, v1, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->measure(II)V

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 264
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method private updatePageCounts()V
    .locals 2

    .line 162
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNumFolderAppsPages:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNumFolderAppsPages:I

    return-void
.end method


# virtual methods
.method public animatePageItems(I)V
    .locals 7

    .line 268
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAnimateItems:Ljava/util/HashMap;

    .line 271
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getPageChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 273
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 274
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-wide v3, v3, Lcom/prompt/kiosk/slauncher/IconInfo;->id:J

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v5, :cond_0

    .line 275
    iget-wide v5, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->id:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    .line 277
    new-instance v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    invoke-direct {v5, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 279
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 280
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 281
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 282
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->x:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->x:I

    .line 283
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->y:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->y:I

    .line 284
    iget-boolean v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 285
    iget-boolean v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->canReorder:Z

    iput-boolean v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->canReorder:Z

    .line 286
    iget-boolean v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->isDragging:Z

    iput-boolean v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 287
    iget-boolean v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->dropped:Z

    iput-boolean v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->dropped:Z

    .line 288
    iget-boolean v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->useTmpCoords:Z

    iput-boolean v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->useTmpCoords:Z

    .line 289
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->tmpCellX:I

    .line 290
    iget v6, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->tmpCellY:I

    .line 291
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAnimateItems:Ljava/util/HashMap;

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearDragOutlines()V
    .locals 3

    .line 449
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 451
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 452
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->clearDragOutlines()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCellCountX()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    return v0
.end method

.method public getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;
    .locals 2

    .line 437
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCurrentPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNextPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    return-object v0
.end method

.method public getIndexOf(Lcom/prompt/kiosk/slauncher/IconInfo;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPageContentHeight()I
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 201
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getContentHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageContentWidth()I
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 197
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getContentWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getPageForComponent(I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    .line 152
    div-int/2addr p1, v0

    return p1
.end method

.method public getPageOf(Lcom/prompt/kiosk/slauncher/IconInfo;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 564
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 565
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    if-ne v1, p1, :cond_0

    .line 567
    iget p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    mul-int/2addr p1, v1

    div-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method protected init()V
    .locals 4

    .line 96
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->init()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCenterPagesVertically:Z

    .line 99
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    invoke-direct {v2, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    const v0, 0x7f070020

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f07001c

    .line 104
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 103
    invoke-virtual {v2, v0, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setGap(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    const v2, 0x7f07001b

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07001a

    .line 106
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setCellDimensions(II)V

    return-void
.end method

.method public invalidateOnDataChange()V
    .locals 3

    .line 415
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->updatePageCounts()V

    .line 417
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->requestLayout()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNumFolderAppsPages:I

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 423
    :goto_1
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidatePageData(I)V

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNumFolderAppsPages:I

    if-le v0, v1, :cond_3

    .line 424
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->flashScrollingIndicator(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 0

    .line 298
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->invalidatePageData(IZ)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAnimateItems:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAnimateItems:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public multiSelectClearAll()V
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 459
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 460
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->multiSelectClearAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDataReady(II)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->updatePageCounts()V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 177
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForComponent(I)I

    move-result p1

    const/4 p2, 0x0

    .line 178
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidatePageData(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 184
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 185
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setDataIsReady()V

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setMeasuredDimension(II)V

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->onDataReady(II)V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedView;->onMeasure(II)V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .line 407
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/PagedView;->onPageEndMoving()V

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mForceDrawAllChildrenNextFrame:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    return-void
.end method

.method public reserveIconAnimationFromTray(Lcom/prompt/kiosk/slauncher/ItemInfo;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationStartPos:Landroid/graphics/Rect;

    .line 546
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationFloatingView:Landroid/view/View;

    return-void
.end method

.method public resetFinalScrollForPageChange(IZ)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScrollX:I

    .line 517
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setScrollX(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedTranslationX:F

    .line 518
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedRotationY:F

    .line 519
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setRotationY(F)V

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleX:F

    .line 521
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleX(F)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleY:F

    .line 522
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleY(F)V

    goto :goto_1

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isPossibleWrap()Z

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

    .line 531
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScrollX:I

    .line 532
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setScrollX(I)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedTranslationX:F

    .line 533
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedRotationY:F

    .line 534
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleX:F

    .line 536
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleY:F

    .line 537
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSaveInstanceStateItemIndex:I

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0

    .line 574
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedView;->screenScrolled(I)V

    return-void
.end method

.method setApps(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 217
    instance-of v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 218
    move-object v3, v2

    check-cast v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || appType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 220
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || isInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FolderAppsPagedView"

    .line 219
    invoke-static {v5, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EX"

    .line 222
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 231
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidateOnDataChange()V

    return-void
.end method

.method public setAppsOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setAppsOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setBlockMultiSelDrawing(Z)V
    .locals 3

    .line 441
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 443
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 444
    invoke-virtual {v2, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setBlockMultiSelDrawing(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellCount(II)V
    .locals 1

    .line 115
    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    .line 116
    iput p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsSpacingLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setCellCount(II)V

    return-void
.end method

.method public setCellInfoUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellInfoUpdated:Z

    return-void
.end method

.method public setDragInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    return-void
.end method

.method public setFinalScrollForPageChange(IZ)V
    .locals 5

    .line 469
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScrollX:I

    .line 472
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 473
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getTranslationX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedTranslationX:F

    .line 474
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getRotationY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedRotationY:F

    if-eqz p2, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getScaleX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleX:F

    .line 477
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getScaleY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleY:F

    .line 479
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v3, p1

    .line 480
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setScrollX(I)V

    .line 481
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setTranslationX(F)V

    .line 482
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setRotationY(F)V

    if-eqz p2, :cond_6

    .line 484
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleX(F)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleY(F)V

    goto :goto_1

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isPossibleWrap()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-ne p1, v0, :cond_6

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getScrollX()I

    move-result v4

    iput v4, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScrollX:I

    if-ne p1, v3, :cond_3

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 495
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 496
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getTranslationX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedTranslationX:F

    .line 497
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getRotationY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedRotationY:F

    if-eqz p2, :cond_5

    .line 499
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getScaleX()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleX:F

    .line 500
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getScaleY()F

    move-result v3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mSavedScaleY:F

    .line 502
    :cond_5
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v3, p1

    .line 503
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setScrollX(I)V

    .line 504
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setTranslationX(F)V

    .line 505
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setRotationY(F)V

    if-eqz p2, :cond_6

    .line 507
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleX(F)V

    .line 508
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setScaleY(F)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    goto :goto_0

    .line 582
    :cond_0
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;-><init>()V

    .line 583
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isShadowEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setShadowEnabled(Z)V

    .line 584
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextColor(I)V

    .line 585
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextStyle()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextStyle(Landroid/graphics/Typeface;)V

    .line 586
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isTextEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextEnabled(Z)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    :goto_0
    return-void
.end method

.method public setup(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 111
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 307
    iget v2, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    iget v3, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountY:I

    mul-int/2addr v2, v3

    mul-int v3, v1, v2

    add-int/2addr v2, v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 310
    invoke-virtual/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 312
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->removeAllViewsOnPage()V

    const/4 v11, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    move v13, v3

    move v12, v5

    move v14, v11

    :goto_0
    if-ge v13, v2, :cond_b

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-ne v5, v15, :cond_0

    move/from16 v19, v2

    goto/16 :goto_4

    :cond_0
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAnimateItems:Ljava/util/HashMap;

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    .line 321
    iget-wide v6, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    move-object v9, v5

    goto :goto_1

    :cond_1
    move-object v9, v10

    .line 325
    :goto_1
    instance-of v5, v15, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 326
    move-object v6, v15

    check-cast v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-virtual {v5, v6}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b0004

    .line 328
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 329
    new-instance v6, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 330
    invoke-virtual {v15, v7}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {v5, v10, v6, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v6, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 336
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsClickListener:Landroid/view/View$OnClickListener;

    .line 337
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mAppsLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 338
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 341
    :cond_3
    instance-of v5, v8, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v5, :cond_4

    .line 342
    move-object v5, v8

    check-cast v5, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v5, v6}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    :cond_4
    sub-int v5, v13, v3

    .line 346
    iget v6, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    rem-int v7, v5, v6

    .line 347
    iget v6, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellCountX:I

    div-int v6, v5, v6

    const/4 v5, 0x1

    if-eqz v9, :cond_6

    const/16 v16, -0x1

    const/16 v17, 0x0

    move v11, v5

    move-object v5, v4

    move/from16 v18, v6

    move-object v6, v8

    move/from16 v19, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move v8, v13

    move/from16 v10, v17

    .line 349
    invoke-virtual/range {v5 .. v10}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Z)Z

    const/16 v9, 0xe6

    move-object/from16 v6, v16

    move/from16 v7, v19

    move/from16 v8, v18

    move v10, v14

    .line 350
    invoke-virtual/range {v5 .. v10}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    int-to-float v5, v14

    add-float/2addr v5, v12

    float-to-int v14, v5

    float-to-double v5, v12

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v7

    double-to-float v12, v5

    :cond_5
    move/from16 v11, v18

    move/from16 v20, v19

    move/from16 v19, v2

    move/from16 v2, v20

    goto :goto_3

    :cond_6
    move v11, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v16, v8

    const/4 v7, -0x1

    .line 355
    new-instance v9, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    move/from16 v8, v18

    move/from16 v10, v19

    invoke-direct {v9, v10, v8, v11, v11}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    const/16 v17, 0x0

    move-object v5, v4

    move-object/from16 v6, v16

    move v11, v8

    move v8, v13

    move/from16 v19, v2

    move v2, v10

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Z)Z

    :goto_3
    iget-boolean v5, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mCellInfoUpdated:Z

    if-eqz v5, :cond_8

    .line 358
    iget v5, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    if-ne v5, v2, :cond_7

    iget v5, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-ne v5, v11, :cond_7

    iget v5, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    if-eq v5, v1, :cond_8

    :cond_7
    const/4 v5, 0x1

    .line 359
    iput-boolean v5, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    .line 360
    iput v2, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    .line 361
    iput v11, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    .line 362
    iput v1, v15, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    :cond_8
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eqz v2, :cond_a

    if-ne v2, v15, :cond_a

    move-object/from16 v5, v16

    if-eqz v5, :cond_a

    .line 368
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationStartPos:Landroid/graphics/Rect;

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationFloatingView:Landroid/view/View;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iput-object v7, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationFloatingView:Landroid/view/View;

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mPendingTrayAnimationStartPos:Landroid/graphics/Rect;

    .line 373
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 375
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v6, :cond_a

    .line 377
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/prompt/kiosk/slauncher/Utilities;->makeItemDropFromTrayAnimation(Landroid/view/View;Landroid/content/res/Resources;)Landroid/animation/Animator;

    move-result-object v2

    .line 378
    new-instance v6, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;

    invoke-direct {v6, v0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;-><init>(Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;Landroid/animation/Animator;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->syncAppsPageItems(IZ)V

    return-void
.end method

.method public syncPages()V
    .locals 3

    .line 390
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->removeAllViews()V

    .line 392
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->mNumFolderAppsPages:I

    if-ge v1, v2, :cond_0

    .line 394
    new-instance v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    invoke-direct {v2, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setupPage(Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;)V

    .line 396
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
