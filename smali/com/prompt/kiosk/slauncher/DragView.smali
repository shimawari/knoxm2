.class public Lcom/prompt/kiosk/slauncher/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static sDragAlpha:F = 1.0f


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mHasDrawn:Z

.field private mInitialScale:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field mRemoveDelayTime:I

.field private mSourceIconScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mHasDrawn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mInitialScale:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mSourceIconScale:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRemoveDelayTime:I

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v4, p9

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/prompt/kiosk/slauncher/DragView;->mHasDrawn:Z

    const/4 v0, 0x0

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mInitialScale:F

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mSourceIconScale:F

    iput v9, v6, Lcom/prompt/kiosk/slauncher/DragView;->mRemoveDelayTime:I

    .line 73
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    iput v4, v6, Lcom/prompt/kiosk/slauncher/DragView;->mInitialScale:F

    .line 76
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const v1, 0x7f070018

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    const v1, 0x7f070019

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v7

    add-float/2addr v0, v1

    div-float v5, v0, v1

    .line 83
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/DragView;->setScaleX(F)V

    .line 84
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/DragView;->setScaleY(F)V

    const/4 v10, 0x2

    new-array v0, v10, [F

    fill-array-data v0, :array_0

    .line 87
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x6e

    .line 88
    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 89
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x40200000    # 2.5f

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, v6, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 90
    new-instance v12, Lcom/prompt/kiosk/slauncher/DragView$1;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/DragView$1;-><init>(Lcom/prompt/kiosk/slauncher/DragView;FFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    .line 115
    invoke-static {p2, v1, v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    move/from16 v0, p3

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationX:I

    move/from16 v0, p4

    iput v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationY:I

    .line 123
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 124
    invoke-virtual {p0, v0, v0}, Lcom/prompt/kiosk/slauncher/DragView;->measure(II)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/DragView;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    return p0
.end method

.method static synthetic access$016(Lcom/prompt/kiosk/slauncher/DragView;F)F
    .locals 1

    .line 35
    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/DragView;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    return p0
.end method

.method static synthetic access$116(Lcom/prompt/kiosk/slauncher/DragView;F)F
    .locals 1

    .line 35
    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$200()F
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/DragView;->sDragAlpha:F

    return v0
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/DragView;)Lcom/prompt/kiosk/slauncher/DragLayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    return-object p0
.end method

.method static getDragViewVisualCenter(IIIILcom/prompt/kiosk/slauncher/DragView;[F)[F
    .locals 1

    const/4 v0, 0x2

    if-nez p5, :cond_0

    new-array p5, v0, [F

    :cond_0
    sub-int/2addr p0, p2

    sub-int/2addr p1, p3

    .line 290
    invoke-virtual {p4}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p0, p2

    int-to-float p0, p0

    const/4 p2, 0x0

    aput p0, p5, p2

    .line 291
    invoke-virtual {p4}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p1, p0

    int-to-float p0, p1

    const/4 p1, 0x1

    aput p0, p5, p1

    return-object p5
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 133
    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 137
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getInitialScale()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mInitialScale:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    return v0
.end method

.method public getSourceIconScale()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mSourceIconScale:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 252
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationX(F)V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationY:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    float-to-int p1, p1

    add-int/2addr p2, p1

    int-to-float p1, p2

    .line 253
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationY(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mHasDrawn:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    .line 180
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DragView;->setMeasuredDimension(II)V

    return-void
.end method

.method remove()V
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRemoveDelayTime:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRemoveDelayTime:I

    .line 263
    new-instance v1, Lcom/prompt/kiosk/slauncher/DragView$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/DragView$3;-><init>(Lcom/prompt/kiosk/slauncher/DragView;)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetY:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mOffsetX:F

    .line 242
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragView;->requestLayout()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 205
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    .line 188
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragView;->invalidate()V

    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-void
.end method

.method setRemoveDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRemoveDelayTime:I

    return-void
.end method

.method public setSourceIconScale(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mSourceIconScale:F

    return-void
.end method

.method public show(II)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 217
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->addView(Landroid/view/View;)V

    .line 218
    new-instance v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->width:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->height:I

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/DragLayer$LayoutParams;->customPosition:Z

    .line 222
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationX(F)V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragView;->mRegistrationY:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 224
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationY(F)V

    .line 227
    new-instance p1, Lcom/prompt/kiosk/slauncher/DragView$2;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/DragView$2;-><init>(Lcom/prompt/kiosk/slauncher/DragView;)V

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/DragView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateInitialScaleToCurrentScale()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DragView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DragView;->mInitialScale:F

    return-void
.end method
