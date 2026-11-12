.class public Lcom/prompt/kiosk/slauncher/FolderIcon;
.super Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;
.source "FolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget p1, Lcom/prompt/kiosk/slauncher/Launcher;->sFolderIconWorkspacePreviewStyle:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mPreviewStyle:I

    return-void
.end method

.method static fromXml(ILcom/prompt/kiosk/slauncher/Launcher;Landroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/FolderInfo;Lcom/prompt/kiosk/slauncher/IconCache;)Lcom/prompt/kiosk/slauncher/FolderIcon;
    .locals 1

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 50
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iget-object p4, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mFolderName:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setBubbleEnabled(Z)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 55
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const p2, 0x7f0c000b

    .line 56
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Folder;->fromXml(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/Folder;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragController()Lcom/prompt/kiosk/slauncher/DragController;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/prompt/kiosk/slauncher/Folder;->setDragController(Lcom/prompt/kiosk/slauncher/DragController;)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/Folder;->setFolderIcon(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    .line 61
    invoke-virtual {p2, p3}, Lcom/prompt/kiosk/slauncher/Folder;->bind(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;)V

    .line 62
    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 64
    new-instance p2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    invoke-direct {p2, p1, p0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mFolderRingAnimator:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 65
    invoke-virtual {p3, p0}, Lcom/prompt/kiosk/slauncher/FolderInfo;->addListener(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;)V

    .line 68
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f080031

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-wide p2, p3, Lcom/prompt/kiosk/slauncher/FolderInfo;->container:J

    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    .line 73
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setPreviewScale(F)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 7

    .line 158
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->makeShortcut()Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    :goto_0
    move-object v2, v0

    .line 164
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->notifyDrop()V

    .line 172
    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/FolderIcon;->onDrop(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;FI)V

    return-void
.end method

.method protected onDrop(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p5

    const/4 v4, -0x1

    .line 82
    iput v4, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    .line 83
    iput v4, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    if-eqz v3, :cond_6

    .line 89
    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v4

    .line 90
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 91
    invoke-virtual {v4, v3, v5}, Lcom/prompt/kiosk/slauncher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    .line 94
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 95
    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v7}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v7, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getScaleX()F

    move-result v8

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    .line 105
    invoke-virtual {v0, v10}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setScaleX(F)V

    .line 106
    invoke-virtual {v0, v10}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setScaleY(F)V

    .line 107
    invoke-virtual {v4, v0, v6}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    .line 109
    invoke-virtual {v0, v8}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setScaleX(F)V

    .line 110
    invoke-virtual {v0, v9}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setScaleY(F)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v7, v8}, Lcom/prompt/kiosk/slauncher/Workspace;->resetTransitionTransform(Lcom/prompt/kiosk/slauncher/CellLayout;)V

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    return-void

    :cond_2
    move-object/from16 v6, p3

    move/from16 v10, p4

    .line 114
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getCellCountX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getCellCountY()I

    move-result v8

    mul-int/2addr v7, v8

    const/4 v8, 0x2

    new-array v9, v8, [I

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v7, v13, :cond_4

    sub-int/2addr v7, v13

    if-ge v2, v7, :cond_3

    .line 121
    invoke-virtual {v0, v2, v9}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getLocalCenterForClickIndex(I[I)F

    move-result v2

    const/high16 v7, 0x3f000000    # 0.5f

    move v11, v7

    goto :goto_3

    :cond_3
    sub-int/2addr v2, v7

    .line 125
    invoke-virtual {v0, v2, v9}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v7

    .line 126
    iget v14, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge v2, v14, :cond_5

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v0, v2, v9}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v7

    .line 131
    iget v14, v0, Lcom/prompt/kiosk/slauncher/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge v2, v14, :cond_5

    goto :goto_2

    :cond_5
    move v11, v12

    :goto_2
    move v2, v7

    :goto_3
    const/4 v7, 0x0

    aget v12, v9, v7

    int-to-float v12, v12

    mul-float/2addr v12, v10

    .line 134
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v9, v7

    aget v12, v9, v13

    int-to-float v12, v12

    mul-float/2addr v12, v10

    .line 135
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v9, v13

    aget v7, v9, v7

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v8

    sub-int/2addr v7, v12

    aget v9, v9, v13

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v8

    sub-int/2addr v9, v12

    .line 137
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v10, v2

    const/16 v12, 0x190

    .line 140
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v13, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v14, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v6

    move v6, v11

    move v9, v10

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v2 .. v16}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 145
    new-instance v2, Lcom/prompt/kiosk/slauncher/FolderIcon$1;

    invoke-direct {v2, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderIcon$1;-><init>(Lcom/prompt/kiosk/slauncher/FolderIcon;Lcom/prompt/kiosk/slauncher/IconInfo;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Lcom/prompt/kiosk/slauncher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 151
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :goto_4
    return-void
.end method
