.class Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;
.super Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;
.source "TransitionEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Corner"
.end annotation


# static fields
.field private static final ROTATION:F = 12.5f


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mTempFloat2:[F


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    .line 229
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    .line 230
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mCamera:Landroid/graphics/Camera;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mTempFloat2:[F

    return-void
.end method

.method private getOffsetXForRotation(FII)F
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mCamera:Landroid/graphics/Camera;

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mCamera:Landroid/graphics/Camera;

    .line 266
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    .line 267
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mCamera:Landroid/graphics/Camera;

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    neg-int v3, p3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 270
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p2, p2

    mul-float v1, p2, v2

    int-to-float p3, p3

    mul-float/2addr v2, p3

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mTempFloat2:[F

    const/4 v1, 0x0

    .line 272
    aput p2, v0, v1

    const/4 v2, 0x1

    .line 273
    aput p3, v0, v2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mMatrix:Landroid/graphics/Matrix;

    .line 274
    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mTempFloat2:[F

    .line 275
    aget p3, p3, v1

    sub-float/2addr p2, p3

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public adjust(I)V
    .locals 9

    .line 239
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getPagedView()Lcom/prompt/kiosk/slauncher/PagedView;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 242
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v0, p1, v3, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    cmpl-float v6, v4, v7

    if-eqz v6, :cond_1

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v6, 0x41480000    # 12.5f

    mul-float/2addr v6, v4

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->getOffsetXForRotation(FII)F

    move-result v7

    .line 253
    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    invoke-virtual {v3, v6}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 247
    :cond_1
    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 248
    invoke-virtual {v3, v7}, Landroid/view/View;->setRotationY(F)V

    .line 256
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    .line 257
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getAlpha()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
