.class public Lcom/prompt/kiosk/slauncher/BubbleTextView;
.super Lcom/prompt/kiosk/slauncher/AbstractIconTextView;
.source "BubbleTextView.java"


# static fields
.field static final BUBBLE_PADDING_H:F = 5.0f

.field static final BUBBLE_PADDING_V:F = 1.0f

.field static final CORNER_RADIUS:F = 8.0f

.field static final PADDING_H:F = 8.0f

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static final SHADOW_LARGE_RADIUS:F = 4.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static final SHADOW_SMALL_RADIUS:F = 1.75f

.field static final SHADOW_Y_OFFSET:F = 2.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBubbleColorAlpha:F

.field private mBubbleEnabled:Z

.field private mCornerRadius:F

.field private mDidInvalidateForPressedState:Z

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private final mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mPrevAlpha:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance p1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 57
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 79
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance p1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 57
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 84
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance p1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 57
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 89
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->init()V

    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 210
    sget v0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 212
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 211
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mOutlineHelper:Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;

    .line 216
    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 p2, 0x0

    .line 217
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 201
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBubbleColorAlpha:F

    .line 100
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 101
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedGlowColor:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOutlineColor:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mFocusedGlowColor:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mFocusedOutlineColor:I

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x23000000

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setShadowLayer(FFFI)V

    .line 108
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mCornerRadius:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingH:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingV:F

    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/IconCache;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->applyFromShortcutInfo(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/IconCache;F)V

    return-void
.end method

.method public applyFromShortcutInfo(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/IconCache;F)V
    .locals 1

    .line 119
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 121
    new-instance v0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    invoke-direct {v0, p2, p3}, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0, p2, p2}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method clearPressedOrFocusedBackground()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v1

    .line 294
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v2

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v6, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    :cond_0
    or-int v3, v1, v2

    if-nez v3, :cond_1

    .line 302
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    .line 304
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isTextEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 316
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    .line 315
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v6

    .line 319
    :goto_1
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->isShadowEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v1

    .line 322
    :goto_3
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v8, -0x23000000

    if-eqz v7, :cond_7

    move v3, v8

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    const/high16 v4, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v4, v9, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 323
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_8

    return-void

    :cond_8
    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBubbleEnabled:Z

    if-eqz v1, :cond_9

    .line 326
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 328
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    int-to-float v2, v2

    .line 331
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    add-float/2addr v4, v2

    iget v5, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v4, v5

    .line 332
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v10, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v5, v10

    .line 333
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v2, v10

    iget v10, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingH:F

    add-float/2addr v2, v10

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 334
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaddingV:F

    add-float/2addr v0, v3

    .line 331
    invoke-virtual {v1, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mCornerRadius:F

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 335
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_9
    const/4 v0, 0x2

    .line 338
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 339
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 340
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 341
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v7, :cond_a

    move v6, v8

    :cond_a
    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v9, v9, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 342
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mDidInvalidateForPressedState:Z

    if-nez v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mStayPressed:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_3

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mFocusedGlowColor:I

    iget v5, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mFocusedOutlineColor:I

    .line 162
    invoke-direct {p0, v3, v4, v5}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    :goto_1
    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mStayPressed:Z

    .line 166
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    :cond_4
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 170
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 178
    :cond_7
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->drawableStateChanged()V

    return-void
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .line 286
    sget v0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 354
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPrevAlpha:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBubbleColorAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onSetAlpha(I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 226
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedGlowColor:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOutlineColor:I

    .line 234
    invoke-direct {p0, p1, v2, v3}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 241
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mDidInvalidateForPressedState:Z

    :cond_4
    :goto_0
    return v0
.end method

.method public setBubbleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBubbleEnabled:Z

    return-void
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 271
    :goto_0
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->setPressedOrFocusedIcon(Lcom/prompt/kiosk/slauncher/BubbleTextView;)V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 133
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method setStayPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mStayPressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 138
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
