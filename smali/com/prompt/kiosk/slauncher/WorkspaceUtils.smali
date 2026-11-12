.class public Lcom/prompt/kiosk/slauncher/WorkspaceUtils;
.super Ljava/lang/Object;
.source "WorkspaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;ZLandroid/view/View;Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;Lcom/prompt/kiosk/slauncher/Workspace;)Z
    .locals 1

    .line 278
    instance-of v0, p2, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_1

    .line 279
    check-cast p2, Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 280
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V

    if-nez p1, :cond_0

    .line 285
    iget-object p0, p3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-static {p0, p4}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getParentCellLayoutForView(Landroid/view/View;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 287
    iget-object p1, p3, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static clearChildrenCache(Lcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 180
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 181
    invoke-virtual {v3, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    invoke-virtual {v3, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static clearDropTargets(Lcom/prompt/kiosk/slauncher/DragController;Lcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 5

    .line 137
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWorkspaceAndHotSeatCellLayoutChildren(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    .line 139
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 142
    instance-of v4, v3, Lcom/prompt/kiosk/slauncher/DropTarget;

    if-eqz v4, :cond_1

    .line 143
    check-cast v3, Lcom/prompt/kiosk/slauncher/DropTarget;

    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/DragController;->removeDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZLandroid/graphics/Rect;)V
    .locals 4

    .line 190
    invoke-virtual {p0, p4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 196
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aget-object p0, p0, v1

    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p4, v2, v2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 198
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 201
    :cond_0
    instance-of p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz p3, :cond_1

    .line 204
    move-object p3, p0

    check-cast p3, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getTextVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p3, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setTextVisible(Z)V

    move v2, v1

    goto :goto_0

    .line 208
    :cond_1
    instance-of p3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz p3, :cond_2

    .line 209
    move-object p3, p0

    check-cast p3, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    .line 210
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 211
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 213
    move-object p3, p0

    check-cast p3, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    sub-int/2addr v0, v3

    .line 215
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    .line 217
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    neg-int p3, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 219
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_4

    .line 223
    check-cast p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->setTextVisible(Z)V

    .line 226
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static enableChildrenCache(Landroid/view/ViewGroup;II)V
    .locals 3

    if-le p1, p2, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 457
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 459
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 460
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 463
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 464
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 465
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static enableHwLayersOnVisiblePages(Lcom/prompt/kiosk/slauncher/Workspace;[I)V
    .locals 6

    .line 366
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    .line 367
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getVisiblePages([I)V

    const/4 v1, 0x0

    .line 368
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 369
    aget p1, p1, v3

    if-ne v2, p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_4

    .line 379
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-gt v2, v3, :cond_2

    if-gt v3, p1, :cond_2

    .line 380
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 381
    :cond_2
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->disableHardwareLayers()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v1, v0, :cond_6

    .line 385
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-gt v2, v1, :cond_5

    if-gt v1, p1, :cond_5

    .line 386
    invoke-virtual {p0, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 387
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->enableHardwareLayers()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static estimateItemPosition(Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/ItemInfo;IIII)Landroid/graphics/RectF;
    .locals 7

    .line 163
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 165
    instance-of p0, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;

    if-eqz p0, :cond_0

    .line 166
    check-cast p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;

    .line 168
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 p2, 0x0

    .line 167
    invoke-static {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Utilities;->AppWidgetHostView_getDefaultPaddingForWidget_compat(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 169
    iget p1, v6, Landroid/graphics/RectF;->top:F

    iget p2, p0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v6, Landroid/graphics/RectF;->top:F

    .line 170
    iget p1, v6, Landroid/graphics/RectF;->left:F

    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v6, Landroid/graphics/RectF;->left:F

    .line 171
    iget p1, v6, Landroid/graphics/RectF;->right:F

    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, v6, Landroid/graphics/RectF;->right:F

    .line 172
    iget p1, v6, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    iput p1, v6, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-object v6
.end method

.method public static generatePageId(ILcom/prompt/kiosk/slauncher/Workspace;)I
    .locals 3

    add-int/lit8 p0, p0, 0x1

    .line 159
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cell"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 232
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 234
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 235
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, p2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-static {v0, p0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 236
    :cond_0
    instance-of v0, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    check-cast p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getPreviewBackgroundHeight()I

    move-result p0

    add-int/2addr p0, p2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 237
    invoke-static {v0, p0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 241
    invoke-static {v0, p0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 245
    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static getDragViewVisualCenter(Landroid/view/View;IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F
    .locals 3

    const/4 v0, 0x2

    if-nez p6, :cond_0

    new-array p6, v0, [F

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p2, p0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    .line 417
    invoke-virtual {p5}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p1, p0

    int-to-float p0, p1

    const/4 p1, 0x0

    aput p0, p6, p1

    .line 418
    invoke-virtual {p5}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p2, p0

    int-to-float p0, p2

    const/4 p1, 0x1

    aput p0, p6, p1

    return-object p6
.end method

.method static getFolderForTag(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/Folder;
    .locals 5

    .line 106
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWorkspaceAndHotSeatCellLayoutChildren(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    .line 108
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 110
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 111
    instance-of v4, v3, Lcom/prompt/kiosk/slauncher/Folder;

    if-eqz v4, :cond_1

    .line 112
    check-cast v3, Lcom/prompt/kiosk/slauncher/Folder;

    .line 113
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/Folder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object v4

    if-ne v4, p0, :cond_1

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/Folder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFolderRingAnimator(Lcom/prompt/kiosk/slauncher/Launcher;Ljava/util/ArrayList;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/FolderRingAnimator;",
            ">;)",
            "Lcom/prompt/kiosk/slauncher/FolderRingAnimator;"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 339
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->isBusy()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 342
    :cond_1
    new-instance v0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    .line 343
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLayoutParams(Landroid/view/View;IIII)Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    if-nez p0, :cond_0

    .line 42
    new-instance p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0

    .line 44
    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    .line 45
    iput p2, p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    .line 46
    iput p3, p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 47
    iput p4, p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellVSpan:I

    :goto_0
    if-gez p3, :cond_1

    if-gez p4, :cond_1

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_1
    return-object p0
.end method

.method public static getPage(II)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit8 p0, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-le p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method static getParentCellLayoutForView(Landroid/view/View;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 3

    .line 69
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWorkspaceAndHotSeatCellLayouts(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 71
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSnapScreen(Lcom/prompt/kiosk/slauncher/Workspace;IILcom/prompt/kiosk/slauncher/CellLayout;)I
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    const/4 p2, -0x1

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    return p2
.end method

.method public static getTmpCell(Lcom/prompt/kiosk/slauncher/CellLayout;ILcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setLeft(I)V

    .line 327
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRight(I)V

    .line 328
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getTop()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setTop(I)V

    .line 329
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getBottom()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setBottom(I)V

    .line 330
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleX()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleX(F)V

    .line 331
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getScaleY()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setScaleY(F)V

    .line 332
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getRotationY()F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->setRotationY(F)V

    return-void
.end method

.method static getViewForTag(Ljava/lang/Object;Lcom/prompt/kiosk/slauncher/Workspace;)Landroid/view/View;
    .locals 5

    .line 123
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getWorkspaceAndHotSeatCellLayoutChildren(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    .line 125
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWallpaperXFloat(IILandroid/widget/Scroller;)F
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    move v2, v1

    move v1, p1

    move p1, v2

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p0

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    .line 35
    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p0, p2

    .line 34
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p2, p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, p0

    add-float/2addr p2, p1

    return p2
.end method

.method static getWorkspaceAndHotSeatCellLayoutChildren(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/Workspace;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getWorkspaceAndHotSeatCellLayouts(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/Workspace;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/CellLayout;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isSameAsOverView(Lcom/prompt/kiosk/slauncher/ItemInfo;Landroid/view/View;ZLcom/prompt/kiosk/slauncher/Workspace;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 259
    instance-of p2, p0, Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 261
    check-cast p0, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 262
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 263
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 266
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWillBecomeShortcut(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z
    .locals 3

    .line 250
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public static resetView(Landroid/view/View;FLcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 1

    .line 348
    sget v0, Lcom/prompt/kiosk/slauncher/LauncherConstants$Workspace;->CAMERA_DISTANCE_DEFAULT:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    const/4 p1, 0x0

    .line 353
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 354
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 355
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspaceOpacity()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 356
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 357
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 358
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 359
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 361
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static setCellCount(IILcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 3

    .line 150
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 152
    invoke-virtual {p2, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 153
    invoke-virtual {v2, p0, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setCellCount(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setSnapScreen(Lcom/prompt/kiosk/slauncher/Workspace;ILcom/prompt/kiosk/slauncher/CellLayout;)I
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->isPossibleWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, -0x1

    .line 317
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    :goto_1
    return p1
.end method

.method public static squaredDistance([F[F)F
    .locals 1

    const/4 v0, 0x0

    .line 470
    aget p0, p0, v0

    aget v0, p1, v0

    sub-float/2addr p0, v0

    const/4 v0, 0x1

    .line 471
    aget p1, p1, v0

    sub-float/2addr p1, p1

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static updateItemLocations(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractCellLayout;III)V
    .locals 15

    const/4 v0, 0x0

    move/from16 v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getChildren()Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 498
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eqz v5, :cond_0

    .line 500
    iget-boolean v3, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->requiresDbUpdate:Z

    if-eqz v3, :cond_0

    .line 501
    iput-boolean v0, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->requiresDbUpdate:Z

    move/from16 v3, p4

    int-to-long v6, v3

    .line 502
    iget v9, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v10, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iget v11, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v12, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iget v13, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    iget v14, v5, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    move-object v4, p0

    move/from16 v8, p3

    invoke-static/range {v4 .. v14}, Lcom/prompt/kiosk/slauncher/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIIIII)V

    goto :goto_1

    :cond_0
    move/from16 v3, p4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateWidgetSize(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/view/View;Lcom/prompt/kiosk/slauncher/ItemInfo;[IZ)V
    .locals 3

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    .line 476
    aget v0, p3, p4

    iget v1, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    aget v0, p3, v2

    iget v1, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-eq v0, v1, :cond_1

    .line 477
    :cond_0
    aget v0, p3, p4

    iput v0, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 478
    aget v0, p3, v2

    iput v0, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 479
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz p2, :cond_1

    .line 480
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    .line 481
    aget p2, p3, p4

    aget p3, p3, v2

    invoke-static {p1, p0, p2, p3}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/prompt/kiosk/slauncher/Launcher;II)V

    :cond_1
    return-void
.end method

.method public static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/prompt/kiosk/slauncher/Launcher;II)V
    .locals 12

    const/4 v0, 0x0

    .line 427
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCellLayoutMetrics(Lcom/prompt/kiosk/slauncher/Launcher;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    .line 428
    invoke-static {p1, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getCellLayoutMetrics(Lcom/prompt/kiosk/slauncher/Launcher;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 429
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 432
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 433
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 434
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 435
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v2, p2

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v10, v2

    mul-int/2addr v3, p3

    add-int/lit8 v2, p3, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, p1

    float-to-int v9, v0

    .line 440
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 441
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 442
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 443
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr p2, v0

    mul-int/2addr v5, v4

    add-int/2addr p2, v5

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int v8, p2

    mul-int/2addr p3, v3

    mul-int/2addr v2, v1

    add-int/2addr p3, v2

    int-to-float p2, p3

    div-float/2addr p2, p1

    float-to-int v11, p2

    const/4 v7, 0x0

    move-object v6, p0

    .line 447
    invoke-virtual/range {v6 .. v11}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method
