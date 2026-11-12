.class Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field protected mAlpha:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mHeight:I

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mHeight:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mWidth:I

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method
