.class public Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;
.super Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;
.source "PagedViewCellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 54
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;

    .line 57
    iget v5, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->mCellWidth:I

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->mCellHeight:I

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->mWidthGap:I

    iget v8, p0, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 58
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->getPaddingLeft()I

    move-result v9

    .line 59
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->getPaddingTop()I

    move-result v10

    move-object v4, v2

    .line 57
    invoke-virtual/range {v4 .. v10}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->setup(IIIIII)V

    .line 61
    iget v4, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 63
    iget v2, v2, Lcom/prompt/kiosk/slauncher/PagedViewCellLayout$LayoutParams;->height:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 66
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/prompt/kiosk/slauncher/PagedViewCellLayoutChildren;->setMeasuredDimension(II)V

    return-void

    .line 48
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->onMeasure(II)V

    return-void
.end method
