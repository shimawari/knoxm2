.class public Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

.field public static final MAX_OUTER_BLUR_RADIUS:I

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static final sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getScreenDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v2, v1

    sput v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    float-to-int v3, v2

    sput v3, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 55
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v3, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v0

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v4, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 64
    invoke-static {v0, v1}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v4, 0x1

    .line 69
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v0, 0xb4

    const/16 v1, 0xff

    .line 76
    invoke-static {v0, v1}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 77
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const p0, 0x3f19999a    # 0.6f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 86
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 4

    const v0, 0x3f733333    # 0.95f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 95
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p6

    if-nez p5, :cond_0

    :try_start_0
    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p5

    :goto_0
    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    .line 150
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Invalid blur thickness"

    const/4 v4, 0x2

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_1
    sget-object v5, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_1

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v5, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    :goto_1
    iget-object v6, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 167
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v12, v4, [I

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 169
    invoke-virtual {v10, v5, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    if-ne v2, v4, :cond_4

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v6, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 171
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_4
    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v6, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 173
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_2
    new-array v14, v4, [I

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 177
    invoke-virtual {v10, v5, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 180
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    const/high16 v6, -0x1000000

    invoke-virtual {v8, v6, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v2, :cond_7

    if-eq v2, v11, :cond_6

    if-ne v2, v4, :cond_5

    sget-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_3

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    :goto_3
    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v7, v4, [I

    iget-object v2, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 198
    invoke-virtual {v10, v2, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 201
    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    aget v2, v7, v5

    neg-int v2, v2

    int-to-float v2, v2

    aget v3, v7, v11

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {v8, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v2, v7, v5

    neg-int v2, v2

    int-to-float v2, v2

    .line 204
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    move-object/from16 v2, p2

    move/from16 v17, v5

    move/from16 v5, v16

    move-object/from16 p5, v6

    move/from16 v6, v17

    move-object/from16 v16, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 206
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    aget v2, v16, v11

    neg-int v2, v2

    int-to-float v6, v2

    iget-object v7, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v3, p3

    .line 212
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    aget v0, v16, v2

    int-to-float v0, v0

    aget v3, v16, v11

    int-to-float v3, v3

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p5

    .line 213
    invoke-virtual {v8, v5, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    aget v0, v12, v2

    int-to-float v0, v0

    aget v3, v12, v11

    int-to-float v3, v3

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {v8, v13, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v3, p4

    .line 219
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    aget v0, v14, v2

    int-to-float v0, v0

    aget v2, v14, v11

    int-to-float v2, v2

    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 220
    invoke-virtual {v8, v15, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 234
    :goto_4
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :goto_5
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    throw v0
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 240
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method

.method public applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 250
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    return-void
.end method

.method public applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v0, 0x0

    .line 115
    aget v0, p3, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p3, p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method applySelectedOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v0, 0x0

    .line 128
    aget v0, p3, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p3, p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 245
    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method
