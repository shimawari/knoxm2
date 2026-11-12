.class public Lcom/prompt/kiosk/slauncher/CellLayoutChildren;
.super Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;
.source "CellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 45
    invoke-super/range {p0 .. p5}, Lcom/prompt/kiosk/slauncher/AbstractCellLayoutChildren;->onLayout(ZIIII)V

    .line 48
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 50
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 51
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    .line 52
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 54
    iget-boolean p5, p4, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->dropped:Z

    if-eqz p5, :cond_0

    .line 55
    iput-boolean p2, p4, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->dropped:Z

    .line 57
    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->mTmpCellXY:[I

    .line 58
    invoke-virtual {p0, p4}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getLocationOnScreen([I)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 35
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->setMeasuredDimension(II)V

    return-void
.end method
