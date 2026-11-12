.class public Lcom/prompt/kiosk/slauncher/FloatingImageView;
.super Landroid/widget/ImageView;
.source "FloatingImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;
    }
.end annotation


# static fields
.field private static final FLOAT_RANGE:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "FloatingImageView"

.field private static sRand:Ljava/util/Random;


# instance fields
.field private mFloater:Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;

.field private mFloating:Z

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mInitialized:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloating:Z

    sget-object p1, Lcom/prompt/kiosk/slauncher/FloatingImageView;->sRand:Ljava/util/Random;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    sput-object p1, Lcom/prompt/kiosk/slauncher/FloatingImageView;->sRand:Ljava/util/Random;

    .line 33
    :cond_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    new-instance p1, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;-><init>(Lcom/prompt/kiosk/slauncher/FloatingImageView;Lcom/prompt/kiosk/slauncher/FloatingImageView$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloater:Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->sRand:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public isFloating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloating:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 55
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mInitialized:Z

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 59
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 62
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 63
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float v6, v3, v5

    div-float v7, v6, v2

    mul-float/2addr v5, v4

    div-float v8, v5, v0

    .line 66
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    neg-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    neg-float v0, v0

    div-float/2addr v0, v8

    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v3, v8

    div-float/2addr v4, v8

    .line 69
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 70
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloater:Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;

    .line 71
    invoke-virtual {v0, v6, v5}, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->setup(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mInitialized:Z

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloating:Z

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->postInvalidate()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloater:Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;

    .line 79
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->advance()V

    :cond_1
    return-void
.end method

.method public setFloating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView;->mFloating:Z

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-object p1, Lcom/prompt/kiosk/slauncher/FloatingImageView;->TAG:Ljava/lang/String;

    const-string v0, "Scale type NOT supported for this view!"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
