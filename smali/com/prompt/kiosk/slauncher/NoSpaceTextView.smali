.class public Lcom/prompt/kiosk/slauncher/NoSpaceTextView;
.super Landroid/widget/TextView;
.source "NoSpaceTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getMaxLineWidth(Landroid/text/Layout;)F
    .locals 4

    .line 37
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/NoSpaceTextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/NoSpaceTextView;->getMaxLineWidth(Landroid/text/Layout;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 29
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/NoSpaceTextView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 30
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/NoSpaceTextView;->getMeasuredHeight()I

    move-result p2

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/NoSpaceTextView;->setMeasuredDimension(II)V

    return-void
.end method
