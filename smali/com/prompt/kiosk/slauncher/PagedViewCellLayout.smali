.class public Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;
.super Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070003

    .line 51
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalCellWidth:I

    const p3, 0x7f070002

    .line 53
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 54
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    .line 55
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result p3

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    .line 56
    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    filled-new-array {p3, v0}, [I

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Z

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOccupied:[[Z

    const/4 p3, -0x1

    .line 57
    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalHeightGap:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalWidthGap:I

    const p3, 0x7f070004

    .line 58
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mMaxGap:I

    .line 60
    new-instance p2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    invoke-direct {p2, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    .line 61
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setCellDimensions(II)V

    .line 62
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    iget p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setGap(II)V

    .line 64
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setClipChildren(Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public calculateCellCount(IIII)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    .line 250
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    .line 251
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->requestLayout()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 277
    instance-of p1, p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    return p1
.end method

.method public createHardwareLayer()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public destroyHardwareLayer()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 2

    .line 216
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 219
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public estimateCellHeight(I)I
    .locals 1

    .line 267
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr p1, v0

    return p1
.end method

.method public estimateCellPosition(II)[I
    .locals 2

    .line 242
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, p2

    add-int/2addr p1, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public estimateCellVSpan(I)I
    .locals 2

    .line 231
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 234
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public estimateCellWidth(I)I
    .locals 1

    .line 259
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr p1, v0

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 272
    new-instance v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 282
    new-instance v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 2

    .line 191
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p1, v0

    .line 194
    div-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 195
    div-int/2addr p2, v0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public getChildrenLayout()Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    check-cast v0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method getContentHeight()I
    .locals 4

    .line 153
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0

    :cond_0
    return v1
.end method

.method getContentWidth()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getPaddingTopOffsetForOverScroll()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 4

    .line 160
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 161
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0

    :cond_0
    return v1
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->isDragging:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 96
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 104
    :cond_0
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 p1, p1, -0x1

    .line 105
    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 p2, p2, -0x1

    .line 107
    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalWidthGap:I

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalHeightGap:I

    if-gez v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalWidthGap:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    .line 119
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalHeightGap:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    goto :goto_3

    .line 109
    :cond_2
    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    sub-int v2, v1, v2

    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v2, v5

    .line 110
    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingTop:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 111
    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalCellWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v2, v6

    .line 112
    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mOriginalCellHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 113
    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mMaxGap:I

    if-lez p1, :cond_3

    div-int/2addr v2, p1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    .line 114
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mMaxGap:I

    if-lez p2, :cond_4

    div-int/2addr v5, p2

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    .line 116
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {p1, p2, v2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->setGap(II)V

    :goto_3
    const/high16 p1, -0x80000000

    if-ne v0, p1, :cond_5

    .line 126
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr p2, v0

    add-int v1, p1, p2

    .line 128
    iget p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingTop:I

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr p2, v0

    add-int v3, p1, p2

    .line 130
    invoke-virtual {p0, v1, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildCount()I

    move-result p1

    :goto_4
    if-ge v4, p1, :cond_6

    .line 135
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 136
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingLeft:I

    sub-int v0, v1, v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 137
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 139
    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingTop:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 140
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 142
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 145
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->setMeasuredDimension(II)V

    return-void

    .line 100
    :cond_7
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 170
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getPageChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 174
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getPageChildCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getCellCountX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 177
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->getCellCountY()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 179
    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    :cond_0
    if-nez v0, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout;->mChildren:Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
