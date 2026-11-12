.class public Lcom/prompt/kiosk/slauncher/PositionMarker;
.super Landroid/view/View;
.source "PositionMarker.java"


# static fields
.field private static final ANIMATION_DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final ANIMATION_DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DEFAULT_MARKER_SIZE:I = 0x8

.field public static final MARKER_TYPE_DEFAULT:I = 0x0

.field public static final MARKER_TYPE_MAX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TFPositionMarker"

.field public static final VISIBLE_POSITION_COUNT_MAX:I = 0x9


# instance fields
.field private mAnimationDirection:I

.field private mAnimationEnable:Z

.field private mAnimationOffset:F

.field private mDefaultMarkerSize:I

.field private mEnableExceedPosition:Z

.field private mGravity:I

.field private mMarker:Landroid/graphics/drawable/Drawable;

.field private mMarkerBackground:Landroid/graphics/drawable/Drawable;

.field private mMarkerCount:I

.field private mMarkerMore:Landroid/graphics/drawable/Drawable;

.field private mMarkerOffset:F

.field private mMarkerType:I

.field private mPositionCount:I

.field private mPositionPadding:I

.field private mPrevAnimationOffset:F

.field private mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

.field private mSkipDrawIfOneMarker:Z

.field private mVisiblePositionMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x9

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    const/16 p1, 0x31

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mGravity:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationEnable:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mSkipDrawIfOneMarker:Z

    .line 126
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x9

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    const/16 p1, 0x31

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mGravity:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationEnable:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mSkipDrawIfOneMarker:Z

    .line 132
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->init()V

    return-void
.end method

.method private createDefaultMarker()V
    .locals 4

    .line 146
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 147
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mDefaultMarkerSize:I

    .line 148
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private createDefaultMarkerBackground()V
    .locals 4

    .line 153
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result v2

    const v3, -0x777778

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mDefaultMarkerSize:I

    .line 155
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private createDefaultMarkerMore()V
    .locals 4

    .line 160
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColor()I

    move-result v2

    const v3, -0xbbbbbc

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mDefaultMarkerSize:I

    .line 162
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawMarker(Landroid/graphics/Canvas;ZZ)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerType:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/PositionMarker;->drawMarkerDefault(Landroid/graphics/Canvas;ZZ)V

    :goto_0
    return-void
.end method

.method private drawMarkerBackground(Landroid/graphics/Canvas;IIIIIZIIIIFIFF)V
    .locals 12

    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p8

    move/from16 v4, p9

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_a

    add-int v6, p6, p10

    iget v7, v0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    add-int v7, p4, v7

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int v6, v6, p13

    add-int v7, p5, p11

    if-eqz p7, :cond_8

    iget v8, v0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v8, :cond_3

    if-eq v5, v3, :cond_1

    int-to-float v8, v5

    cmpl-float v8, v8, p12

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v1

    move v10, v2

    goto :goto_2

    :cond_1
    :goto_1
    int-to-float v8, v1

    mul-float v8, v8, p14

    float-to-int v8, v8

    int-to-float v10, v2

    mul-float v10, v10, p14

    float-to-int v10, v10

    :goto_2
    add-int/lit8 v11, v4, -0x1

    if-eq v5, v11, :cond_2

    int-to-float v11, v5

    sub-float v9, p12, v9

    cmpl-float v9, v11, v9

    if-nez v9, :cond_7

    :cond_2
    int-to-float v8, v8

    mul-float v8, v8, p15

    float-to-int v8, v8

    int-to-float v9, v10

    mul-float v9, v9, p15

    goto :goto_5

    :cond_3
    if-eq v5, v3, :cond_5

    int-to-float v8, v5

    add-float v9, p12, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    move v8, v1

    move v10, v2

    goto :goto_4

    :cond_5
    :goto_3
    int-to-float v8, v1

    mul-float v8, v8, p15

    float-to-int v8, v8

    int-to-float v9, v2

    mul-float v9, v9, p15

    float-to-int v9, v9

    move v10, v9

    :goto_4
    add-int/lit8 v9, v4, -0x1

    if-eq v5, v9, :cond_6

    int-to-float v9, v5

    cmpl-float v9, v9, p12

    if-nez v9, :cond_7

    :cond_6
    int-to-float v8, v8

    mul-float v8, v8, p14

    float-to-int v8, v8

    int-to-float v9, v10

    mul-float v9, v9, p14

    :goto_5
    float-to-int v10, v9

    :cond_7
    sub-int v9, v1, v8

    .line 323
    div-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    sub-int v9, v2, v10

    .line 324
    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    goto :goto_6

    :cond_8
    int-to-float v8, v5

    cmpl-float v8, v8, p12

    if-nez v8, :cond_9

    move-object v7, p1

    goto :goto_7

    :cond_9
    move v8, v1

    move v10, v2

    :goto_6
    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    add-int/2addr v8, v6

    add-int/2addr v10, v7

    .line 330
    invoke-virtual {v9, v6, v7, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    move-object v7, p1

    .line 331
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private drawMarkerDefault(Landroid/graphics/Canvas;ZZ)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 189
    iget v0, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPaddingTop:I

    .line 190
    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPaddingBottom:I

    .line 191
    iget v2, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPaddingLeft:I

    .line 192
    iget v3, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPaddingRight:I

    iget v4, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mGravity:I

    and-int/lit8 v5, v4, 0x70

    and-int/lit8 v4, v4, 0x7

    iget-object v6, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    goto :goto_0

    :cond_0
    iget-object v6, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_0
    iget-object v7, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    :goto_1
    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    goto :goto_2

    :cond_2
    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    :goto_2
    move v13, v8

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    goto :goto_3

    :cond_3
    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    :goto_3
    move v12, v8

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    goto :goto_4

    :cond_4
    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    :goto_4
    move/from16 v16, v8

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    goto :goto_5

    :cond_5
    iget-object v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    :goto_5
    move/from16 v17, v8

    .line 206
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 207
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getHeight()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v14, v2, v0, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v8, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    mul-int v9, v18, v8

    move/from16 v19, v10

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    iget v10, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    mul-int/2addr v8, v10

    add-int/2addr v9, v8

    .line 214
    invoke-direct {v15, v0, v1, v5, v11}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getTop(IIII)I

    move-result v21

    .line 215
    invoke-direct {v15, v2, v3, v4, v9}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getLeft(IIII)I

    move-result v22

    iget v0, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    .line 217
    div-int/lit8 v0, v0, 0x2

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationOffset:F

    float-to-int v2, v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_7

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    if-eqz p2, :cond_8

    const/4 v9, 0x1

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-eqz v8, :cond_9

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    goto :goto_9

    :cond_9
    const/4 v4, 0x1

    :cond_a
    if-eqz p3, :cond_b

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    sub-int/2addr v1, v4

    goto :goto_a

    :cond_b
    :goto_9
    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    :goto_a
    move v10, v1

    .line 229
    invoke-direct {v15, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getMarkerOffset(I)F

    move-result v5

    iget v0, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    add-int/lit8 v20, v0, -0x1

    if-eqz p2, :cond_c

    sub-int v0, v18, v16

    .line 235
    div-int/lit8 v0, v0, 0x2

    sub-int v1, v11, v17

    .line 236
    div-int/lit8 v1, v1, 0x2

    add-int v0, v22, v0

    add-int v1, v21, v1

    iget-object v4, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v16

    add-int v2, v1, v17

    .line 240
    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    sub-int v0, v18, v6

    .line 244
    div-int/lit8 v25, v0, 0x2

    sub-int v0, v11, v7

    .line 245
    div-int/lit8 v26, v0, 0x2

    iget v0, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationOffset:F

    .line 248
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_e

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d

    sub-float v0, v2, v0

    goto :goto_b

    :cond_d
    neg-float v0, v0

    :goto_b
    if-eqz v8, :cond_10

    iget v1, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    add-int v1, v18, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    goto :goto_c

    :cond_f
    add-float/2addr v0, v2

    :goto_c
    if-eqz v8, :cond_10

    neg-float v1, v0

    iget v3, v15, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    add-int v3, v18, v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    :goto_d
    float-to-int v3, v1

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    sub-float/2addr v2, v0

    move/from16 v24, v0

    move/from16 v27, v2

    move/from16 v23, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move/from16 v4, v18

    move v7, v5

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 p2, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v28, v19

    move/from16 v10, v25

    move/from16 v19, v11

    move/from16 v11, v26

    move/from16 v25, v12

    move/from16 v12, p2

    move/from16 v26, v13

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v27

    .line 270
    invoke-direct/range {v0 .. v15}, Lcom/prompt/kiosk/slauncher/PositionMarker;->drawMarkerBackground(Landroid/graphics/Canvas;IIIIIZIIIIFIFF)V

    if-eqz p3, :cond_11

    sub-int v0, v18, v16

    .line 273
    div-int/lit8 v0, v0, 0x2

    sub-int v11, v19, v17

    .line 274
    div-int/lit8 v11, v11, 0x2

    add-int v0, v22, v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    add-int v2, v18, v2

    mul-int v20, v20, v2

    add-int v0, v0, v20

    add-int v11, v21, v11

    iget-object v2, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v16

    add-int v4, v11, v17

    .line 278
    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p1

    .line 279
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_f

    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :goto_f
    sub-int v0, v18, v26

    .line 282
    div-int/lit8 v0, v0, 0x2

    sub-int v11, v19, v25

    .line 283
    div-int/lit8 v11, v11, 0x2

    add-int v22, v22, v0

    move/from16 v0, p2

    float-to-int v0, v0

    iget v3, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    add-int v18, v18, v3

    mul-int v0, v0, v18

    add-int v0, v22, v0

    add-int v3, v21, v11

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    add-int v13, v0, v26

    add-int v12, v3, v25

    .line 287
    invoke-virtual {v4, v0, v3, v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v1, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v28

    .line 290
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getLeft(IIII)I
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    :goto_0
    add-int/2addr p1, p3

    :goto_1
    return p1
.end method

.method private getMarkerOffset(I)F
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    .line 370
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    if-le v1, v2, :cond_1

    int-to-float v2, p1

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    sub-int p1, v1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    sub-float/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method private getTop(IIII)I
    .locals 1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x50

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getHeight()I

    move-result p3

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    :goto_0
    add-int/2addr p1, p3

    :goto_1
    return p1
.end method

.method private init()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mDefaultMarkerSize:I

    return-void
.end method


# virtual methods
.method public getMarkerOffset()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 521
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mSkipDrawIfOneMarker:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_8

    .line 530
    div-int/lit8 v1, v1, 0x2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    .line 531
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-boolean v4, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationEnable:Z

    if-eqz v4, :cond_5

    int-to-float v0, v1

    iget v4, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationOffset:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget v5, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    cmpg-float v1, v4, v1

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    move v3, v0

    goto :goto_5

    :cond_5
    if-le v0, v1, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    iget v5, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    if-ge v0, v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    move v3, v4

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 547
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->createDefaultMarker()V

    :cond_9
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    .line 550
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->createDefaultMarkerBackground()V

    :cond_a
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    .line 553
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->createDefaultMarkerMore()V

    .line 555
    :cond_b
    invoke-direct {p0, p1, v3, v2}, Lcom/prompt/kiosk/slauncher/PositionMarker;->drawMarker(Landroid/graphics/Canvas;ZZ)V

    return-void
.end method

.method public setAnimationOffset(F)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationOffset:F

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPrevAnimationOffset:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationOffset:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mAnimationDirection:I

    .line 576
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->invalidate()V

    return-void
.end method

.method public setDefaultMarkerSize(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mDefaultMarkerSize:I

    :cond_0
    return-void
.end method

.method public setEnableMarkerExceedPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mEnableExceedPosition:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mGravity:I

    if-eq v0, p1, :cond_2

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    or-int/lit8 p1, p1, 0x3

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mGravity:I

    :cond_2
    return-void
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 437
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 439
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 450
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarker:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 454
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 455
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setMarkerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 464
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 466
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setMarkerMore(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 475
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerMore:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mResourceManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 477
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setMarkerOffset(F)V
    .locals 2

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mEnableExceedPosition:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    int-to-float p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerOffset:F

    .line 494
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/PositionMarker;->invalidate()V

    return-void
.end method

.method public setMarkerPadding(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionPadding:I

    return-void
.end method

.method public setPositionCount(I)V
    .locals 3

    if-lez p1, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mMarkerCount:I

    :goto_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mPositionCount:I

    return-void

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TFPositionMarker] Position count must be bigger than 0. called as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositionMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mVisiblePositionMax:I

    return-void
.end method

.method public skipDrawIfOneMarker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PositionMarker;->mSkipDrawIfOneMarker:Z

    return-void
.end method
