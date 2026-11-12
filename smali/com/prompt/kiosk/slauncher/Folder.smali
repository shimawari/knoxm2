.class public Lcom/prompt/kiosk/slauncher/Folder;
.super Lcom/prompt/kiosk/slauncher/AbstractFolder;
.source "Folder.java"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/Folder;
    .locals 2

    .line 56
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0b0021

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/Folder;

    return-object p0
.end method


# virtual methods
.method protected centerAboutIcon()V
    .locals 14

    .line 145
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    .line 147
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 148
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageContentHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderNameHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mPositionMarkerHeight:I

    add-int/2addr v2, v3

    .line 150
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 154
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleX()F

    move-result v4

    .line 155
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getScaleY()F

    move-result v5

    .line 156
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setScaleX(F)V

    .line 157
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v6, v7}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setScaleY(F)V

    .line 158
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v8}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 159
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v6, v4}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setScaleX(F)V

    .line 160
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v4, v5}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setScaleY(F)V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 164
    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v4, v6

    .line 165
    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v5, v8

    .line 168
    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v10

    const/4 v11, 0x1

    .line 176
    invoke-virtual {v9, v10, v11}, Lcom/prompt/kiosk/slauncher/Workspace;->setFinalScrollForPageChange(IZ)V

    .line 178
    invoke-virtual {v9, v10}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 179
    invoke-virtual {v9}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object v9

    .line 180
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {v3, v9, v12}, Lcom/prompt/kiosk/slauncher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 184
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f070039

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 185
    iget v9, v12, Landroid/graphics/Rect;->left:I

    if-ge v9, v3, :cond_1

    .line 186
    iget v9, v12, Landroid/graphics/Rect;->right:I

    iget v13, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v13

    iput v9, v12, Landroid/graphics/Rect;->right:I

    .line 187
    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 188
    iget v9, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    iput v9, v12, Landroid/graphics/Rect;->right:I

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/prompt/kiosk/slauncher/Workspace;->resetFinalScrollForPageChange(IZ)V

    .line 195
    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v12, Landroid/graphics/Rect;->left:I

    .line 196
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v1

    .line 195
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 197
    iget v9, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v12, Landroid/graphics/Rect;->top:I

    .line 198
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v2

    .line 197
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 200
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lt v1, v10, :cond_2

    .line 201
    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    .line 203
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 204
    iget v9, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    :cond_3
    sub-int/2addr v4, v3

    add-int/2addr v6, v4

    sub-int/2addr v5, v9

    add-int/2addr v8, v5

    int-to-float v4, v6

    .line 209
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/Folder;->setPivotX(F)V

    int-to-float v5, v8

    .line 210
    invoke-virtual {p0, v5}, Lcom/prompt/kiosk/slauncher/Folder;->setPivotY(F)V

    .line 211
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v7

    int-to-float v8, v1

    div-float/2addr v4, v8

    mul-float/2addr v6, v4

    float-to-int v4, v6

    .line 213
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v7

    int-to-float v7, v2

    div-float/2addr v5, v7

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 215
    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setPivotX(F)V

    .line 216
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setPivotY(F)V

    .line 218
    iput v1, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->width:I

    .line 219
    iput v2, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->height:I

    .line 220
    iput v3, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->x:I

    .line 221
    iput v9, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->y:I

    return-void
.end method

.method public onAdd(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onAdd(Ljava/util/ArrayList;)V

    .line 63
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 66
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v3, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    iget v5, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v6, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget v7, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    invoke-static/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
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

    .line 74
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 78
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v2, p2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    iget v4, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    iget v5, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellX:I

    iget v6, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    return-void
.end method

.method public onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
    .locals 12

    .line 96
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 97
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->makeShortcut()Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v0

    .line 103
    iput v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->spanX:I

    .line 104
    iput v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->spanY:I

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    if-ne v0, v2, :cond_5

    .line 112
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageForView(Landroid/view/View;)I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->isPageMoving()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->isValidTargetCell()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mEmptyCell:[I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mEmptyCell:[I

    invoke-virtual {p0, v3, v4}, Lcom/prompt/kiosk/slauncher/Folder;->forceReorder([I[I)V

    .line 115
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 119
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 120
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mEmptyCell:[I

    const/4 v11, 0x0

    aget v4, v4, v11

    iput v4, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I

    .line 121
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Folder;->mEmptyCell:[I

    aget v4, v4, v1

    iput v4, v9, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iput v4, v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I

    .line 122
    iput v2, v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->screen:I

    .line 123
    iput-boolean v1, v3, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->requiresDbUpdate:Z

    .line 125
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Folder;->mDragTargetLayout:Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v7, -0x1

    iget-wide v3, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->id:J

    long-to-int v8, v3

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Z)Z

    .line 126
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v0, v2, v11}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->setFinalScrollForPageChange(IZ)V

    .line 128
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, p1, v3}, Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;)V

    .line 129
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {p1, v2, v11}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->resetFinalScrollForPageChange(IZ)V

    goto :goto_1

    .line 131
    :cond_4
    iput-boolean v11, p1, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 132
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_1
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mItemsInvalidated:Z

    .line 135
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Folder;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Folder;->setupContentDimensions(I)V

    .line 136
    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mSuppressOnAdd:Z

    .line 138
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->itemsChanged()V

    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->add(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :goto_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceEditLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected replaceFolderWithFinalItem()V
    .locals 19

    move-object/from16 v0, p0

    .line 233
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->getFolderInfo(J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Folder;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 245
    :goto_0
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v3, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->container:J

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v5, v5, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->screen:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/prompt/kiosk/slauncher/Launcher;->getCellLayout(JI)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v9

    .line 246
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v9, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    instance-of v2, v2, Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    check-cast v3, Lcom/prompt/kiosk/slauncher/DropTarget;

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/DragController;->removeDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    .line 250
    :cond_2
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    check-cast v3, Lcom/prompt/kiosk/slauncher/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->removeFolder(Lcom/prompt/kiosk/slauncher/FolderInfo;)V

    if-eqz v1, :cond_3

    .line 253
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v4, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->container:J

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v6, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->screen:I

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v7, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->cellX:I

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v8, v3, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->cellY:I

    move-object v3, v1

    invoke-static/range {v2 .. v8}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    .line 256
    :cond_3
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    if-eqz v1, :cond_4

    .line 260
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v2

    .line 261
    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    const v4, 0x7f0b0004

    check-cast v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-virtual {v3, v4, v9, v1, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object v11

    .line 265
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v10

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-wide v12, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->container:J

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v14, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->screen:I

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v15, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->cellX:I

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Folder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->cellY:I

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v18}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    :cond_4
    return-void
.end method

.method updateButtons()V
    .locals 0

    return-void
.end method
