.class public abstract Lcom/prompt/kiosk/slauncher/AbstractFolder;
.super Landroid/widget/LinearLayout;
.source "AbstractFolder.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/prompt/kiosk/slauncher/DropTarget;
.implements Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;
    }
.end annotation


# static fields
.field private static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field static final SCROLL_LEFT:I = 0x1

.field static final SCROLL_NONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x2

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;


# instance fields
.field protected mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

.field protected mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

.field protected mCurrentDragView:Landroid/view/View;

.field private mDeleteFolderOnDropCompleted:Z

.field protected mDimTop2View:Landroid/view/View;

.field protected mDimTopView:Landroid/view/View;

.field protected mDimView:Landroid/view/View;

.field protected mDragController:Lcom/prompt/kiosk/slauncher/DragController;

.field protected mDragInProgress:Z

.field protected mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

.field protected mDraggingEverMoved:Z

.field protected mEmptyCell:[I

.field private mExpandDuration:I

.field private mFirstLayout:Z

.field private mFolderEtcLayout:Landroid/view/View;

.field protected mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

.field protected mFolderName:Landroid/widget/TextView;

.field protected mFolderNameHeight:I

.field private mFolderPosContainer:Landroid/view/View;

.field private final mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field protected mIconDrawable:Landroid/graphics/drawable/Drawable;

.field protected mInScrollArea:I

.field protected mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

.field protected mItemAddedBackToSelfViaIcon:Z

.field protected mItemCount:I

.field private mItemDrawablesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInAlphabeticalReadingOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInCustomReadingOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInReadingOrderOnFirstPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field protected mMaxCountX:I

.field protected mMaxCountY:I

.field protected mMaxFolderContentsInvalid:Z

.field private mMaxNumItems:I

.field private mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

.field mOnExitAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

.field private mOnFinishFolderOpenListener:Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;

.field protected mPositionMarker:Landroid/widget/ImageView;

.field protected mPositionMarkerHeight:I

.field private mPreviousTargetCell:[I

.field protected mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

.field mReorderAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

.field private mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

.field protected mScrollZone:I

.field protected mSortMode:Z

.field protected mState:I

.field private mSuppressFolderDeletion:Z

.field protected mSuppressIconReturnOnDropFail:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInReadingOrderOnFirstPage:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressOnAdd:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPreviousTargetCell:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    .line 96
    new-instance v0, Lcom/prompt/kiosk/slauncher/Alarm;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 97
    new-instance v0, Lcom/prompt/kiosk/slauncher/Alarm;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressFolderDeletion:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDraggingEverMoved:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressIconReturnOnDropFail:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnFinishFolderOpenListener:Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxFolderContentsInvalid:Z

    .line 123
    new-instance v2, Lcom/prompt/kiosk/slauncher/Alarm;

    invoke-direct {v2}, Lcom/prompt/kiosk/slauncher/Alarm;-><init>()V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSortMode:Z

    .line 488
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

    .line 706
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$4;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$4;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFirstLayout:Z

    .line 1288
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$10;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$10;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInCustomReadingOrderComparator:Ljava/util/Comparator;

    .line 1315
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$11;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$11;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInAlphabeticalReadingOrderComparator:Ljava/util/Comparator;

    .line 141
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 144
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0009

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountX:I

    const v0, 0x7f0a000a

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    const v0, 0x7f0a000b

    .line 147
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxNumItems:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountX:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountX:I

    .line 150
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountX:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxNumItems:I

    :cond_1
    const v0, 0x7f0a0006

    .line 154
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mExpandDuration:I

    sget-object v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f0c000a

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->sDefaultFolderName:Ljava/lang/String;

    .line 159
    :cond_2
    check-cast p1, Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 163
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setFocusableInTouchMode(Z)V

    const p1, 0x7f070037

    .line 165
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollZone:I

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AbstractFolder;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnFinishFolderOpenListener:Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/AbstractFolder;)[I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/AbstractFolder;[I[I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->reorder([I[I)V

    return-void
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->updateTextViewFocus()V

    return-void
.end method

.method private animateCloseDim()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 434
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v3

    .line 435
    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mExpandDuration:I

    int-to-long v1, v1

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 437
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateOpenDim()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    .line 367
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 368
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mExpandDuration:I

    int-to-long v1, v1

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 370
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private arrangeItems(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemCount:I

    iput v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemCount:I

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 919
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-boolean v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSortMode:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInAlphabeticalReadingOrderComparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInCustomReadingOrderComparator:Ljava/util/Comparator;

    :goto_0
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 922
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v4

    mul-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 924
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidateOnDataChange()V

    return-void

    .line 929
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move v4, v13

    move v14, v4

    :goto_1
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 930
    iget-object v5, v5, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_6

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 931
    iget-object v5, v5, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 933
    div-int v6, v14, v3

    .line 934
    rem-int v7, v14, v3

    iget-object v8, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 935
    invoke-virtual {v8}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v8

    rem-int v8, v7, v8

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 936
    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v9

    div-int/2addr v7, v9

    .line 938
    iget-wide v9, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->id:J

    const-wide/16 v15, -0x1

    cmp-long v9, v9, v15

    if-nez v9, :cond_2

    const/4 v4, 0x1

    :cond_2
    move/from16 v17, v4

    iget-boolean v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSortMode:Z

    if-eqz v4, :cond_3

    goto :goto_2

    .line 944
    :cond_3
    iget-wide v9, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->id:J

    cmp-long v4, v9, v15

    if-eqz v4, :cond_4

    iget v4, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    if-ne v4, v8, :cond_4

    iget v4, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-ne v4, v7, :cond_4

    iget v4, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    if-ne v4, v6, :cond_4

    iget-boolean v4, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    if-eqz v4, :cond_5

    .line 946
    :cond_4
    iput-boolean v13, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    .line 947
    iput v8, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    .line 948
    iput v7, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    .line 949
    iput v6, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 951
    iget-wide v6, v4, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    cmp-long v4, v6, v15

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 952
    iget-wide v6, v6, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    iget v8, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v9, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget v10, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    move-object v11, v12

    invoke-static/range {v4 .. v11}, Lcom/prompt/kiosk/slauncher/LauncherModel;->batchAddOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIILjava/util/ArrayList;)V

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    goto :goto_1

    .line 958
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/prompt/kiosk/slauncher/LauncherModel;->batchUpdateItemInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_7
    if-ne v2, v1, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 963
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidateOnDataChange()V

    :cond_9
    return-void
.end method

.method private positionAndSizeAsIcon()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 315
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setScaleX(F)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setScaleY(F)V

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setAlpha(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    return-void
.end method

.method private realTimeReorder([I[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 594
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v3, :cond_6

    .line 595
    aget v3, v1, v6

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v9

    sub-int/2addr v9, v7

    if-lt v3, v9, :cond_1

    .line 596
    aget v3, v1, v7

    add-int/2addr v3, v7

    goto :goto_0

    :cond_1
    aget v3, v1, v7

    :goto_0
    move v9, v6

    .line 597
    :goto_1
    aget v10, v2, v7

    if-gt v3, v10, :cond_c

    .line 598
    aget v11, v1, v7

    if-ne v3, v11, :cond_2

    aget v11, v1, v6

    add-int/2addr v11, v7

    goto :goto_2

    :cond_2
    move v11, v6

    :goto_2
    if-ge v3, v10, :cond_3

    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 599
    invoke-virtual {v10}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v10

    sub-int/2addr v10, v7

    goto :goto_3

    :cond_3
    aget v10, v2, v6

    :goto_3
    move v15, v11

    :goto_4
    if-gt v15, v10, :cond_5

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 601
    invoke-virtual {v11, v15, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 602
    aget v13, v1, v6

    aget v14, v1, v7

    const/16 v16, 0xe6

    move/from16 v17, v15

    move/from16 v15, v16

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 604
    aput v17, v1, v6

    .line 605
    aput v3, v1, v7

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    float-to-double v11, v8

    mul-double/2addr v11, v4

    double-to-float v8, v11

    :cond_4
    add-int/lit8 v15, v17, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 612
    :cond_6
    aget v3, v1, v6

    if-nez v3, :cond_7

    .line 613
    aget v3, v1, v7

    sub-int/2addr v3, v7

    goto :goto_5

    :cond_7
    aget v3, v1, v7

    :goto_5
    move v9, v6

    .line 614
    :goto_6
    aget v10, v2, v7

    if-lt v3, v10, :cond_c

    .line 615
    aget v10, v1, v7

    if-ne v3, v10, :cond_8

    aget v10, v1, v6

    goto :goto_7

    :cond_8
    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v10}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v10

    :goto_7
    sub-int/2addr v10, v7

    .line 616
    aget v11, v2, v7

    if-le v3, v11, :cond_9

    move v11, v6

    goto :goto_8

    :cond_9
    aget v11, v2, v6

    :goto_8
    if-lt v10, v11, :cond_b

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 618
    invoke-virtual {v12, v10, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 619
    aget v14, v1, v6

    aget v15, v1, v7

    const/16 v16, 0xe6

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 621
    aput v10, v1, v6

    .line 622
    aput v3, v1, v7

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    float-to-double v12, v8

    mul-double/2addr v12, v4

    double-to-float v8, v12

    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_c
    :goto_9
    return-void
.end method

.method private reorder([I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->reorder([I[IZ)V

    return-void
.end method

.method private reorder([I[IZ)V
    .locals 12

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 516
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 518
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int v2, v0, v1

    const/4 v3, 0x0

    .line 520
    aget v4, p2, v3

    add-int/2addr v4, v2

    const/4 v5, 0x1

    aget v6, p2, v5

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    move v6, v3

    :goto_0
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 523
    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 524
    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, -0x1

    :goto_1
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 530
    iget v7, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    if-ne v7, v0, :cond_4

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget v7, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    aget v8, p2, v3

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget v7, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    aget v8, p2, v5

    if-ne v7, v8, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 532
    iget-object v8, v8, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_5

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-object v8, v8, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v6, v8, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    if-nez p3, :cond_7

    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 537
    iget-object p3, p3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 538
    iget-object p3, p3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v4, p3, :cond_8

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 539
    iget-object p3, p3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p3, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 541
    iget-object p3, p3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 542
    iget-object p3, p3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v4, p3, -0x1

    :goto_4
    move p3, v3

    :goto_5
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 545
    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p3, v7, :cond_b

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 546
    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 547
    div-int v8, p3, v1

    .line 548
    rem-int v9, p3, v1

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 549
    invoke-virtual {v10}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v10

    rem-int v10, v9, v10

    iget-object v11, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 550
    invoke-virtual {v11}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v11

    div-int/2addr v9, v11

    .line 551
    iget v11, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    if-ne v11, v8, :cond_9

    iget v11, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    if-ne v11, v10, :cond_9

    iget v11, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-eq v11, v9, :cond_a

    .line 552
    :cond_9
    iput-boolean v5, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    .line 554
    :cond_a
    iput v10, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    .line 555
    iput v9, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    .line 556
    iput v8, v7, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 559
    :cond_b
    div-int p3, v4, v1

    div-int/2addr v6, v1

    if-ne p3, v6, :cond_c

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->realTimeReorder([I[I)V

    goto :goto_6

    :cond_c
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 564
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->animatePageItems(I)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 565
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidatePageData()V

    :goto_6
    sub-int/2addr v4, v2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 570
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result p2

    rem-int p2, v4, p2

    aput p2, p1, v3

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 571
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result p2

    div-int/2addr v4, p2

    aput v4, p1, v5

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    .line 572
    aget p2, p2, v3

    iput p2, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    .line 573
    aget p2, p2, v5

    iput p2, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 574
    iput v0, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    :cond_d
    :goto_7
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 377
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private setFocusOnFirstChild()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 383
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 386
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 10

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSortMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 788
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 789
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 790
    iget-wide v3, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->container:J

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v5, v5, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 791
    iget-wide v5, v4, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    iget v7, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v8, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget v9, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    move-object v4, v2

    invoke-static/range {v3 .. v9}, Lcom/prompt/kiosk/slauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    .line 793
    :cond_1
    iput-boolean v0, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTextViewFocus()V
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemAt(I)Landroid/view/View;

    .line 1017
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemAt(I)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)Z
    .locals 2

    .line 448
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast p1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 449
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->isFull()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public animateOpen()V
    .locals 6

    .line 322
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->positionAndSizeAsIcon()V

    .line 324
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/DragLayer;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->centerAboutIcon()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 327
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 328
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 329
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 330
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mExpandDuration:I

    int-to-long v1, v1

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 354
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 360
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->animateOpenDim()V

    return-void
.end method

.method bind(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 293
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 296
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setApps(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    .line 299
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->updateTextViewFocus()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 300
    invoke-virtual {p1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->addListener(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;)V

    sget-object p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->sDefaultFolderName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 303
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    const-string v0, ""

    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected abstract centerAboutIcon()V
.end method

.method protected checkScrollArea(II)I
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1470
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollZone:I

    if-ge p1, p2, :cond_0

    return v1

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollZone:I

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public closed(Z)V
    .locals 5

    .line 393
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array v1, p1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v2, "alpha"

    .line 396
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p1, [F

    const v3, 0x3f666666    # 0.9f

    aput v3, v2, v0

    const-string v4, "scaleX"

    .line 397
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v4, p1, [F

    aput v3, v4, v0

    const-string v3, "scaleY"

    .line 398
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v0

    aput-object v2, v4, p1

    const/4 p1, 0x2

    aput-object v3, v4, p1

    .line 399
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 401
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mExpandDuration:I

    int-to-long v0, v0

    .line 419
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 420
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 422
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->animateCloseDim()V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onCloseComplete()V

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    :goto_0
    return-void
.end method

.method public completeDragExit()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 715
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 718
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->remove(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressOnAdd:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1353
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1356
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1357
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingTop()I

    move-result v2

    .line 1358
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1359
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1357
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1360
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1362
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1363
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1364
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingTop()I

    move-result v2

    .line 1365
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 1366
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1364
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1367
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected forceReorder([I[I)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 499
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 501
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    .line 502
    invoke-direct {p0, p1, p2, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->reorder([I[IZ)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 503
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-eqz p1, :cond_1

    if-eq v0, p1, :cond_1

    .line 505
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getLeft()I

    move-result p2

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getTop()I

    move-result v1

    .line 506
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getRight()I

    move-result v2

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getBottom()I

    move-result v0

    .line 505
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDrawableForItem(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1229
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1232
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 968
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrderOnFirstPage()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInReadingOrderOnFirstPage:Ljava/util/ArrayList;

    .line 1192
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1194
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1196
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v2

    add-int/2addr v2, v0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1197
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1200
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1201
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInReadingOrderOnFirstPage:Ljava/util/ArrayList;

    .line 1202
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1203
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 1205
    new-instance v4, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-virtual {v3, v5}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1206
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInReadingOrderOnFirstPage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastItem()Lcom/prompt/kiosk/slauncher/IconInfo;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1215
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1217
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1218
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1220
    new-instance v1, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1221
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1334
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    return-void
.end method

.method protected getViewForInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1162
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1164
    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move v4, v1

    .line 1165
    :goto_1
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getCellCountY()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v5, v1

    .line 1166
    :goto_2
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getCellCountX()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1167
    invoke-virtual {v3, v5, v4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1168
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideScrollingIndicator(Z)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1510
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->hideScrollingIndicator(Z)V

    :cond_1
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFull()Z
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxFolderContentsInvalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxNumItems:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isValidTargetCell()Z
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    const/4 v1, 0x0

    .line 1499
    aget v2, v0, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-le v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method protected moveItemTo(Lcom/prompt/kiosk/slauncher/IconInfo;I)V
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1382
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1383
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1384
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1386
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1387
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1390
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result p2

    mul-int/2addr p1, p2

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1391
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 1392
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 1393
    div-int v3, v0, p1

    .line 1394
    rem-int v4, v0, p1

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1395
    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v5

    rem-int v5, v4, v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1396
    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v6

    div-int/2addr v4, v6

    .line 1397
    iget v6, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    if-ne v6, v3, :cond_1

    iget v6, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    if-ne v6, v5, :cond_1

    iget v6, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-eq v6, v4, :cond_2

    .line 1398
    :cond_1
    iput-boolean v2, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->requiresDbUpdate:Z

    .line 1400
    :cond_2
    iput v5, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    .line 1401
    iput v4, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    .line 1402
    iput v3, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemCount:I

    .line 1407
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentDimensions(I)V

    return-void
.end method

.method public notifyDrop()V
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemAddedBackToSelfViaIcon:Z

    :cond_0
    return-void
.end method

.method public onAdd(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    return-void

    .line 1036
    :cond_0
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;Ljava/util/ArrayList;)V

    .line 1045
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1046
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressOnAdd:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1085
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1087
    :goto_0
    new-instance p2, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;

    invoke-direct {p2, p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;Ljava/util/ArrayList;Z)V

    .line 1113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1114
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1116
    :cond_2
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 211
    instance-of v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 212
    check-cast v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-virtual {v1, v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->onClickShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCloseComplete()V
    .locals 4

    .line 979
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/DragLayer;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->removeView(Landroid/view/View;)V

    .line 983
    :cond_0
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 984
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/DragController;->removeDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    .line 985
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->clearFocus()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 986
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->requestFocus()Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    const/4 v1, 0x0

    .line 988
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setCurrentPage(I)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemCount:I

    .line 993
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 997
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->invalidateOnDataChange()V

    .line 999
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressFolderDeletion:Z

    if-nez v3, :cond_2

    .line 1001
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->replaceFolderWithFinalItem()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDeleteFolderOnDropCompleted:Z

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressFolderDeletion:Z

    :cond_4
    return-void
.end method

.method public onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressIconReturnOnDropFail:Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPreviousTargetCell:[I

    const/4 v2, -0x1

    .line 458
    aput v2, v1, v0

    const/4 v3, 0x1

    .line 459
    aput v2, v1, v3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 460
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 462
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 464
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 465
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v1

    .line 466
    iget v4, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v5, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    iget v6, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget v7, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v8, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/prompt/kiosk/slauncher/DragView;->getDragViewVisualCenter(IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F

    move-result-object p1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 467
    aget v2, p1, v0

    float-to-int v5, v2

    aget p1, p1, v3

    float-to-int v6, p1

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    invoke-virtual/range {v4 .. v9}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 469
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result p1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/2addr p1, v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    .line 471
    aget v4, v2, v0

    add-int/2addr p1, v4

    aget v2, v2, v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 473
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 474
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {v2, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 476
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 477
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 479
    iput v1, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 480
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v2

    rem-int v2, p1, v2

    iput v2, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 481
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v2

    div-int/2addr p1, v2

    iput p1, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    .line 482
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 483
    iget v1, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    aput v1, p1, v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 484
    iget v0, v0, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    aput v0, p1, v3

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 2

    .line 729
    iget-boolean p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

    .line 730
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/Alarm;->setOnAlarmListener(Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    const-wide/16 v0, 0x320

    .line 731
    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/Alarm;->setAlarm(J)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 733
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 735
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 10

    .line 670
    iget v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->checkScrollArea(II)I

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 673
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    .line 674
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->invalidate()V

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->scrollIfNeeded()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 678
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 679
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    return-void

    .line 683
    :cond_1
    iget v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->y:I

    iget v2, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->xOffset:I

    iget v3, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->yOffset:I

    iget-object v4, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/DragView;->getDragViewVisualCenter(IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 687
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 689
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 692
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    const/4 v8, 0x0

    .line 694
    aget v3, p1, v8

    float-to-int v3, v3

    const/4 v9, 0x1

    aget p1, p1, v9

    float-to-int v4, p1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    if-ne v0, v1, :cond_4

    .line 696
    aget v0, p1, v8

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPreviousTargetCell:[I

    aget v2, v1, v8

    if-ne v0, v2, :cond_4

    aget p1, p1, v9

    aget v0, v1, v9

    if-eq p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 697
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarmListener:Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;

    .line 698
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/Alarm;->setOnAlarmListener(Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mReorderAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    const-wide/16 v0, 0x96

    .line 699
    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/Alarm;->setAlarm(J)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPreviousTargetCell:[I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mTargetCell:[I

    .line 700
    aget v1, v0, v8

    aput v1, p1, v8

    .line 701
    aget v0, v0, v9

    aput v0, p1, v9

    iput-boolean v9, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDraggingEverMoved:Z

    :cond_5
    return-void
.end method

.method public abstract onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemAddedBackToSelfViaIcon:Z

    if-nez p2, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->replaceFolderWithFinalItem()V

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressIconReturnOnDropFail:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 750
    invoke-virtual {p3, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 755
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/Alarm;->alarmPending()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressFolderDeletion:Z

    :cond_2
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 759
    invoke-virtual {p2, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setBlockMultiSelDrawing(Z)V

    :cond_3
    :goto_0
    if-eq p1, p0, :cond_4

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 763
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mOnExitAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 764
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    .line 765
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->completeDragExit()V

    :cond_4
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mSuppressOnAdd:Z

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 777
    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setDragInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 778
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Alarm;->cancelAlarm()V

    .line 782
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->updateItemLocationsInDatabase()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 174
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09003d

    .line 175
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setCellCount(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 177
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setAppsOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 178
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setAppsOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 179
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setup(Lcom/prompt/kiosk/slauncher/Launcher;)V

    const v0, 0x7f090040

    .line 180
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderNameHeight:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderNameHeight:I

    :goto_0
    const v0, 0x7f09003e

    .line 194
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderEtcLayout:Landroid/view/View;

    const v0, 0x7f090042

    .line 196
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderPosContainer:Landroid/view/View;

    const v0, 0x7f090041

    .line 197
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    .line 201
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setScrollingIndicator(Landroid/widget/ImageView;)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderPosContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    :cond_2
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onItemsChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemDrawablesCache:Ljava/util/HashMap;

    .line 1179
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1180
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$9;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$9;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 907
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFirstLayout:Z

    if-eqz p1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setInitialStateToView()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lcom/prompt/kiosk/slauncher/IconInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 219
    check-cast v0, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 224
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 225
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    invoke-virtual {v1, p1, p0, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->beginDragShared(Landroid/view/View;Lcom/prompt/kiosk/slauncher/DragSource;Lcom/prompt/kiosk/slauncher/DragController;)V

    .line 226
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 227
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    .line 232
    iget v4, v0, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    aput v4, v1, v3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    .line 233
    iget v4, v0, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    aput v4, v1, v2

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragView:Landroid/view/View;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDraggingEverMoved:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 241
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setDragInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :cond_2
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 879
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 880
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderNameHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 883
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 885
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 887
    invoke-virtual {v3, v0, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->measure(II)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderEtcLayout:Landroid/view/View;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderNameHeight:I

    .line 890
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 889
    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderPosContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    .line 894
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 893
    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    .line 899
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarkerHeight:I

    .line 900
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 899
    invoke-virtual {v2, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 902
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOpenComplete()V
    .locals 0

    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    .line 1056
    new-instance p1, Lcom/prompt/kiosk/slauncher/AbstractFolder$6;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$6;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    .line 1070
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1071
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUpdate(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mItemsInvalidated:Z

    .line 1124
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getViewForInfo(Lcom/prompt/kiosk/slauncher/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 1125
    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1126
    check-cast v0, Landroid/widget/TextView;

    .line 1127
    new-instance v1, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 1128
    invoke-virtual {p1, v3}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1127
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1129
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragView:Landroid/view/View;

    .line 1131
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-ne p1, v1, :cond_1

    .line 1132
    check-cast v0, Landroid/widget/TextView;

    .line 1133
    new-instance v1, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 1134
    invoke-virtual {p1, v3}, Lcom/prompt/kiosk/slauncher/IconInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1133
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1135
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 4

    const/4 v0, 0x1

    .line 578
    aget v1, p1, v0

    aget v2, p2, v0

    if-gt v1, v2, :cond_1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget p1, p1, v3

    aget p2, p2, v3

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v0
.end method

.method public refreshFolder()V
    .locals 3

    .line 1141
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    .line 1154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1155
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected abstract replaceFolderWithFinalItem()V
.end method

.method protected scrollIfNeeded()V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 1455
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    .line 1456
    new-instance v1, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Alarm;->setOnAlarmListener(Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mScrollAlarm:Lcom/prompt/kiosk/slauncher/Alarm;

    const-wide/16 v1, 0x190

    .line 1465
    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/Alarm;->setAlarm(J)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    return-void
.end method

.method setFolderIcon(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    return-void
.end method

.method public setInitialStateToView()V
    .locals 1

    const/4 v0, 0x0

    .line 1411
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->showScrollingIndicator(Z)V

    return-void
.end method

.method protected setupContentDimensions(I)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 824
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 825
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v3, :cond_8

    mul-int v3, v0, v1

    if-ge v3, p1, :cond_3

    if-le v0, v1, :cond_0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    if-ne v1, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountX:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_1
    move v3, v1

    :goto_2
    if-nez v3, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v1, -0x1

    mul-int v4, v3, v0

    if-lt v4, p1, :cond_4

    if-lt v1, v0, :cond_4

    .line 848
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v0

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mMaxCountY:I

    if-gt v1, v3, :cond_5

    add-int/lit8 v3, v0, -0x1

    mul-int v4, v3, v1

    if-lt v4, p1, :cond_5

    .line 850
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v0

    :goto_3
    move v3, v1

    :cond_6
    :goto_4
    if-ne v4, v0, :cond_7

    if-ne v3, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    move v1, v3

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 856
    invoke-virtual {v2, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setCellCount(II)V

    .line 857
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->arrangeItems(I)V

    return-void
.end method

.method protected setupContentForNumItems(I)V
    .locals 1

    .line 867
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentDimensions(I)V

    .line 869
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    if-nez p1, :cond_0

    .line 871
    new-instance p1, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->customPosition:Z

    .line 873
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->centerAboutIcon()V

    return-void
.end method

.method public showScrollingIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mPositionMarker:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1503
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 1504
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->showScrollingIndicator(Z)V

    :cond_0
    return-void
.end method

.method abstract updateButtons()V
.end method
