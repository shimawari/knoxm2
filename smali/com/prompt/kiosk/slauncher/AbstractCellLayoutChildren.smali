.class public Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "AbstractCellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AbstractCellLayoutChildren"


# instance fields
.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mHeightGap:I

.field protected final mTmpCellXY:[I

.field protected mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mTmpCellXY:[I

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 89
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method createHardwareLayer()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method destroyHardwareLayer()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    .line 43
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 48
    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iget v3, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellHeight:I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mWidthGap:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mHeightGap:I

    .line 35
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->setup(IIII)V

    .line 36
    iget v0, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 37
    iget v2, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 131
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 133
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    .line 135
    iget p5, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    .line 136
    iget v0, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    .line 137
    iget v1, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    add-int/2addr v1, p5

    iget p4, p4, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 100
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellHeight:I

    .line 73
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->requestLayout()V

    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellHeight:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mWidthGap:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mHeightGap:I

    .line 81
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->requestLayout()V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setGap(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mWidthGap:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mHeightGap:I

    .line 67
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->requestLayout()V

    return-void
.end method

.method public setupLp(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;)V
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mWidthGap:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->mHeightGap:I

    .line 27
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->setup(IIII)V

    return-void
.end method
