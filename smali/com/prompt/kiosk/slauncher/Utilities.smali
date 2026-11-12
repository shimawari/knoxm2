.class public final Lcom/prompt/kiosk/slauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/Utilities$IconGravity;
    }
.end annotation


# static fields
.field private static final MAX_RESOLUTION:I = 0x1000

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sCanvas2:Landroid/graphics/Canvas;

.field private static final sDstOutPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I = -0x1

.field private static sIconTextureHeight:I = -0x1

.field private static sIconTextureWidth:I = -0x1

.field private static sIconWidth:I = -0x1

.field public static sNoPaddingAppWidgetFilter:[Ljava/lang/String;

.field public static sShortcutIntentActionSubstitutions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Utilities;->sDstOutPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 77
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    sput-object v1, Lcom/prompt/kiosk/slauncher/Utilities;->sCanvas2:Landroid/graphics/Canvas;

    .line 80
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Utilities;->sShortcutIntentActionSubstitutions:Ljava/util/HashMap;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "android.intent.action.CALL"

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.sec."

    const-string v1, "com.android.settings/com.android.settings.accessibilitywidget."

    .line 821
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/Utilities;->sNoPaddingAppWidgetFilter:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppWidgetHostView_getDefaultPaddingForWidget_compat(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_1

    .line 841
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Utilities;->isNoPaddingAppWidget(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    if-nez p2, :cond_2

    .line 843
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 845
    :cond_2
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object p2
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-static {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4

    sget v0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureWidth:I

    sget v1, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureHeight:I

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v0, :cond_1

    if-ne v3, v1, :cond_1

    return-object p0

    .line 211
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 221
    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    sget-object v5, Lcom/prompt/kiosk/slauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 226
    monitor-enter v5

    :try_start_0
    sget v6, Lcom/prompt/kiosk/slauncher/Utilities;->sIconWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 228
    invoke-static/range {p1 .. p1}, Lcom/prompt/kiosk/slauncher/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    sget v6, Lcom/prompt/kiosk/slauncher/Utilities;->sIconWidth:I

    sget v7, Lcom/prompt/kiosk/slauncher/Utilities;->sIconHeight:I

    .line 234
    instance-of v8, v1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v8, :cond_1

    .line 235
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/PaintDrawable;

    .line 236
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 237
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 238
    :cond_1
    instance-of v8, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2

    .line 240
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_2

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 246
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    if-lez v8, :cond_4

    if-lez v9, :cond_4

    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    if-le v8, v9, :cond_3

    int-to-float v7, v6

    div-float/2addr v7, v10

    float-to-int v7, v7

    goto :goto_1

    :cond_3
    if-le v9, v8, :cond_4

    int-to-float v6, v7

    mul-float/2addr v6, v10

    float-to-int v6, v6

    :cond_4
    :goto_1
    sget v8, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureWidth:I

    sget v9, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    .line 265
    :try_start_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    invoke-virtual {v5, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v12, v8, v6

    .line 277
    div-int/lit8 v12, v12, 0x2

    sub-int v13, v9, v7

    .line 278
    div-int/lit8 v13, v13, 0x2

    if-eqz v0, :cond_5

    .line 281
    invoke-static {v5, v0, v8, v9, v10}, Lcom/prompt/kiosk/slauncher/Utilities;->drawScaledBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V

    :cond_5
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p5, v0

    if-gez v0, :cond_e

    int-to-float v0, v6

    mul-float v0, v0, p5

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v0, v14

    float-to-int v0, v0

    int-to-float v15, v7

    mul-float v15, v15, p5

    add-float/2addr v15, v14

    float-to-int v14, v15

    sub-int/2addr v6, v0

    .line 288
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v12, v6

    sub-int/2addr v7, v14

    .line 289
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v13, v7

    and-int/lit16 v6, v4, 0xf00

    const/16 v7, 0x100

    if-eq v6, v7, :cond_9

    const/16 v7, 0x200

    const/4 v15, 0x0

    if-eq v6, v7, :cond_8

    const/16 v7, 0x400

    if-eq v6, v7, :cond_7

    const/16 v7, 0x800

    if-eq v6, v7, :cond_6

    move v6, v8

    move v7, v9

    :goto_2
    move/from16 v16, v15

    move v15, v13

    move/from16 v13, v16

    goto :goto_3

    .line 307
    :cond_6
    div-int/lit8 v6, v8, 0x4

    sub-int/2addr v12, v6

    .line 308
    div-int/lit8 v6, v9, 0x4

    sub-int/2addr v13, v6

    .line 311
    div-int/lit8 v6, v8, 0x2

    .line 312
    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 315
    :cond_7
    div-int/lit8 v6, v8, 0x4

    add-int/2addr v12, v6

    .line 316
    div-int/lit8 v6, v8, 0x4

    sub-int/2addr v13, v6

    .line 317
    div-int/lit8 v6, v8, 0x2

    .line 319
    div-int/lit8 v7, v9, 0x2

    move/from16 v16, v6

    move v6, v8

    move/from16 v17, v15

    move v15, v13

    move/from16 v13, v17

    goto :goto_3

    .line 322
    :cond_8
    div-int/lit8 v6, v8, 0x4

    sub-int/2addr v12, v6

    .line 323
    div-int/lit8 v6, v8, 0x4

    add-int/2addr v13, v6

    .line 325
    div-int/lit8 v6, v9, 0x2

    .line 326
    div-int/lit8 v7, v8, 0x2

    move/from16 v16, v15

    move v15, v13

    move v13, v6

    move v6, v7

    move v7, v9

    goto :goto_3

    .line 329
    :cond_9
    div-int/lit8 v6, v8, 0x4

    add-int/2addr v12, v6

    .line 330
    div-int/lit8 v6, v8, 0x4

    add-int/2addr v13, v6

    .line 331
    div-int/lit8 v15, v8, 0x2

    .line 332
    div-int/lit8 v6, v9, 0x2

    move v7, v9

    move/from16 v16, v15

    move v15, v13

    move v13, v6

    move v6, v8

    :goto_3
    and-int/lit8 v10, v4, 0x7

    move/from16 p1, v12

    const/4 v12, 0x3

    if-eq v10, v12, :cond_b

    const/4 v12, 0x5

    if-eq v10, v12, :cond_a

    move/from16 v12, p1

    goto :goto_4

    :cond_a
    sub-int/2addr v6, v0

    move v12, v6

    goto :goto_4

    :cond_b
    move/from16 v12, v16

    :goto_4
    and-int/lit8 v4, v4, 0x70

    const/16 v6, 0x30

    if-eq v4, v6, :cond_d

    const/16 v6, 0x50

    if-eq v4, v6, :cond_c

    move v6, v0

    move v7, v14

    move v13, v15

    goto :goto_5

    :cond_c
    sub-int v13, v7, v14

    :cond_d
    move v6, v0

    move v7, v14

    :cond_e
    :goto_5
    sget-object v4, Lcom/prompt/kiosk/slauncher/Utilities;->sCanvas2:Landroid/graphics/Canvas;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_f

    .line 359
    :try_start_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 363
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 364
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v10, 0x0

    .line 366
    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    const/4 v0, 0x0

    :goto_6
    add-int/2addr v6, v12

    add-int/2addr v7, v13

    .line 371
    invoke-virtual {v1, v12, v13, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v0, :cond_10

    move-object v6, v4

    goto :goto_7

    :cond_10
    move-object v6, v5

    .line 372
    :goto_7
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_11

    sget-object v1, Lcom/prompt/kiosk/slauncher/Utilities;->sDstOutPaint:Landroid/graphics/Paint;

    .line 376
    invoke-static {v4, v3, v8, v9, v1}, Lcom/prompt/kiosk/slauncher/Utilities;->drawScaledBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 377
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v8, v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    if-eqz v2, :cond_12

    const/4 v1, 0x0

    .line 383
    invoke-static {v5, v2, v8, v9, v1}, Lcom/prompt/kiosk/slauncher/Utilities;->drawScaledBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    .line 386
    :goto_8
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    monitor-exit v5

    return-object v11

    :catch_1
    move-exception v0

    move-object v1, v10

    .line 268
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 269
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 271
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_9

    :cond_13
    move-object v10, v1

    :goto_9
    monitor-exit v5

    return-object v10

    :catchall_0
    move-exception v0

    .line 389
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ResourceManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p4, :cond_0

    const-string p2, "com.prompt.kiosk.slauncher.intent.action.FIRE_DOWNLOAD_PROXY_SHORTCUT"

    .line 395
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 406
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 399
    invoke-static/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "IA"

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p2, 0x7f0800ae

    .line 117
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "PA"

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0800af

    .line 119
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/16 v3, 0x5a

    .line 126
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    int-to-float p0, p0

    invoke-virtual {v0, p1, v3, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2

    :cond_2
    return-object p0
.end method

.method private static drawScaledBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V
    .locals 4

    int-to-float v0, p2

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 412
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    mul-float/2addr v2, v3

    .line 413
    invoke-virtual {p0, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    mul-float/2addr p3, v3

    .line 414
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getIconSize()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconWidth:I

    return v0
.end method

.method public static getModeChangeAnimationDuration(Landroid/content/Context;)I
    .locals 1

    .line 1080
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0001

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getPreferredHome(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 9

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 941
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 942
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 943
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 945
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 946
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 947
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 948
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 949
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 950
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 951
    invoke-virtual {p0, v5, v4, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v2

    .line 953
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 954
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentFilter;

    .line 955
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 956
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070001

    .line 493
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconHeight:I

    sput p0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconWidth:I

    sput p0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureHeight:I

    sput p0, Lcom/prompt/kiosk/slauncher/Utilities;->sIconTextureWidth:I

    sget-object p0, Lcom/prompt/kiosk/slauncher/Utilities;->sDstOutPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 508
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static isLaunchedByHomeKey(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "not_homekey"

    const/4 v1, 0x0

    .line 929
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.intent.category.HOME"

    .line 932
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNoPaddingAppWidget(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 828
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/prompt/kiosk/slauncher/Utilities;->sNoPaddingAppWidgetFilter:[Ljava/lang/String;

    .line 830
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 831
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 1210
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1211
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 1217
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1219
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 1213
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    .line 1217
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1219
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1222
    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    return-object v0
.end method

.method public static makeItemDropFromTrayAnimation(Landroid/view/View;Landroid/content/res/Resources;)Landroid/animation/Animator;
    .locals 6

    .line 996
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    .line 998
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    .line 999
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v4, "scaleY"

    .line 1000
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v2, v3

    .line 997
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const p0, 0x10e0001

    .line 1002
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1003
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static removeItemFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 966
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 969
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 970
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 972
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 973
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_2
    return-object p2
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1230
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/high16 v2, 0x45800000    # 4096.0f

    const/16 v3, 0x1000

    if-le v0, v1, :cond_0

    if-ge v3, v0, :cond_1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    if-ge v3, v1, :cond_1

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v1, v3

    .line 1251
    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v0

    int-to-float v4, v1

    .line 1252
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1253
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x2

    .line 1255
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    .line 1258
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1261
    invoke-static {p0, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
