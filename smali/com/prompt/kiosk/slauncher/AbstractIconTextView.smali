.class public Lcom/prompt/kiosk/slauncher/AbstractIconTextView;
.super Landroid/widget/TextView;
.source "AbstractIconTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
    }
.end annotation


# instance fields
.field private mAdjustTextOnLayoutEnabled:Z

.field protected mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

.field private mLayoutSizeChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    .line 25
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    .line 29
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    .line 33
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getPaddingLeft()I

    move-result p3

    sub-int v3, p2, p3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 58
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getCompoundPaddingTop()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    if-le p1, p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string p4, " "

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setSingleLine(Z)V

    :cond_0
    iput-boolean p3, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mLayoutSizeChecked:Z

    .line 73
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAdjustTextOnLayoutEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mAdjustTextOnLayoutEnabled:Z

    return-void
.end method

.method public setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V
    .locals 1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextColor()I

    move-result v0

    .line 87
    :goto_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setTextColor(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getTextStyle()Landroid/graphics/Typeface;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
