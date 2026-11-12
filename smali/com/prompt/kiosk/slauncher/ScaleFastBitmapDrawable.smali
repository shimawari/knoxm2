.class Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;
.super Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;
.source "ScaleFastBitmapDrawable.java"


# instance fields
.field private mScale:F

.field private mScaleHeight:I

.field private mScaleWidth:I

.field private mVolatileScale:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mVolatileScale:F

    iput p2, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    if-eqz p1, :cond_0

    .line 37
    iget p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleWidth:I

    .line 38
    iget p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mHeight:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mWidth:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleHeight:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleWidth:I

    .line 43
    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 52
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v1, :cond_1

    .line 56
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    return v0
.end method

.method public getVolatileScale()F
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mVolatileScale:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mVolatileScale:F

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 84
    iget p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleWidth:I

    .line 85
    iget p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mHeight:I

    int-to-float p1, p1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScale:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleHeight:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mScaleWidth:I

    :goto_0
    return-void
.end method

.method public setVolatileScale(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->mVolatileScale:F

    return-void
.end method
