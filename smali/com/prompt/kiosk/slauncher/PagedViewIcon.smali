.class public Lcom/prompt/kiosk/slauncher/PagedViewIcon;
.super Lcom/prompt/kiosk/slauncher/AbstractIconTextView;
.source "PagedViewIcon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"

.field private static final TEST_DRAW_OUTLINE:Z


# instance fields
.field private mAlpha:I

.field private mHolographicAlpha:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mOutlinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mAlpha:I

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->setAdjustTextOnLayoutEnabled(Z)V

    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/prompt/kiosk/slauncher/ApplicationInfo;ZLcom/prompt/kiosk/slauncher/HolographicOutlineHelper;)V
    .locals 0

    .line 61
    iget-object p2, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 62
    new-instance p2, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p3, p3}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p2, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x2

    .line 87
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 89
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 121
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 123
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 124
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isTextEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollX:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollY:I

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollX:I

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollY:I

    .line 128
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getCompoundPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 127
    invoke-virtual {p1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v3, v5

    .line 131
    :goto_1
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isShadowEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v5

    .line 134
    :goto_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v7, -0x23000000

    if-eqz v4, :cond_4

    move v8, v7

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v6, v9, v10, v11, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 136
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v3, :cond_6

    return-void

    .line 152
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 153
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollX:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollY:I

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    iget v6, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollX:I

    .line 154
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    iget v8, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mScrollY:I

    .line 155
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 153
    invoke-virtual {p1, v0, v3, v6, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 157
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 158
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v4, :cond_7

    move v1, v7

    :cond_7
    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v2, v10, v10, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 163
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->draw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mAlpha:I

    if-lez v0, :cond_0

    .line 196
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    .line 69
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v0

    .line 70
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mAlpha:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mHolographicAlpha:I

    if-eq v1, p1, :cond_1

    :cond_0
    iput v2, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mAlpha:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PagedViewIcon;->mHolographicAlpha:I

    .line 76
    invoke-super {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setAlpha(F)V

    :cond_1
    return-void
.end method
