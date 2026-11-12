.class public Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "WallpaperOffsetInterpolator.java"


# instance fields
.field mFinalHorizontalWallpaperOffset:F

.field mFinalVerticalWallpaperOffset:F

.field mHorizontalCatchupConstant:F

.field mHorizontalWallpaperOffset:F

.field mIsMovingFast:Z

.field mLastWallpaperOffsetUpdateTime:J

.field mOverrideHorizontalCatchupConstant:Z

.field mVerticalCatchupConstant:F

.field mVerticalWallpaperOffset:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iput v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    return-void
.end method


# virtual methods
.method public computeScrollOffset(Landroid/graphics/Point;)Z
    .locals 9

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 33
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mIsMovingFast:Z

    return v1

    .line 37
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    if-le v0, p1, :cond_1

    move v1, v2

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x21

    .line 41
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    .line 42
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    sub-float/2addr p1, v0

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mIsMovingFast:Z

    if-nez v0, :cond_2

    float-to-double v5, p1

    const-wide v7, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double p1, v5, v7

    if-lez p1, :cond_2

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mIsMovingFast:Z

    :cond_2
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mIsMovingFast:Z

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    :cond_4
    move p1, v0

    goto :goto_0

    :cond_5
    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_4

    const p1, 0x3e8a3d71    # 0.27f

    :goto_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    const/high16 v1, 0x42040000    # 33.0f

    div-float/2addr p1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iget v5, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iget v6, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    sub-float/2addr v5, v6

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 67
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    iget p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iget p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    goto :goto_1

    :cond_7
    long-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v3, p1

    .line 75
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v3, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    mul-float/2addr p1, v1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iget p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 80
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    return v2
.end method

.method public getCurrX()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    return v0
.end method

.method public getFinalY()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return-void
.end method

.method public setFinalX(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    return-void
.end method

.method public setFinalY(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return-void
.end method

.method public setHorizontalCatchupConstant(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    return-void
.end method

.method public setOverrideHorizontalCatchupConstant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    return-void
.end method

.method public setVerticalCatchupConstant(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    return-void
.end method
