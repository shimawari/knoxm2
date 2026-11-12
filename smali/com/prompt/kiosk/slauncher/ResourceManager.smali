.class public Lcom/prompt/kiosk/slauncher/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field public static final ICON_DIR_NAME:Ljava/lang/String; = "application_icons"

.field public static final LOCAL_ROOT_DIR:Ljava/lang/String; = "/custom_res"

.field public static final LOCAL_USER_ROOT_DIR:Ljava/lang/String; = "/custom_res/user"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "resource_pref"

.field public static final PREF_POINTCOLOR:Ljava/lang/String; = "pointcolor"


# instance fields
.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mContext:Landroid/content/Context;

.field private mIconDpi:I

.field private mPointColor:I


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getLargeIconDensity()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mIconDpi:I

    return-void
.end method

.method public static RGB2HSV(DDD[D)V
    .locals 9

    .line 153
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 154
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double v0, v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    move-wide v6, v4

    goto :goto_1

    :cond_0
    div-double v6, v0, v2

    cmpl-double v8, p0, v2

    if-nez v8, :cond_1

    sub-double/2addr p2, p4

    div-double/2addr p2, v0

    goto :goto_0

    :cond_1
    cmpl-double v8, p2, v2

    if-nez v8, :cond_2

    sub-double/2addr p4, p0

    div-double/2addr p4, v0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    add-double p2, p4, p0

    goto :goto_0

    :cond_2
    cmpl-double p4, p4, v2

    if-nez p4, :cond_3

    sub-double/2addr p0, p2

    div-double/2addr p0, v0

    const-wide/high16 p2, 0x4010000000000000L    # 4.0

    add-double/2addr p2, p0

    goto :goto_0

    :cond_3
    move-wide p2, v4

    :goto_0
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    mul-double/2addr p2, p0

    cmpg-double p0, p2, v4

    const-wide p4, 0x4076800000000000L    # 360.0

    if-gez p0, :cond_4

    add-double/2addr p2, p4

    :cond_4
    div-double v4, p2, p4

    :goto_1
    const/4 p0, 0x0

    .line 185
    aput-wide v4, p6, p0

    const/4 p0, 0x1

    .line 186
    aput-wide v6, p6, p0

    const/4 p0, 0x2

    .line 187
    aput-wide v2, p6, p0

    return-void
.end method

.method public static RGB2HSV(III[I)V
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [D

    int-to-float p0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p0, v1

    float-to-double v2, p0

    int-to-float p0, p1

    div-float/2addr p0, v1

    float-to-double p0, p0

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v5, p2

    move-wide v1, v2

    move-wide v3, p0

    move-object v7, v0

    .line 146
    invoke-static/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/ResourceManager;->RGB2HSV(DDD[D)V

    const/4 p0, 0x0

    aget-wide p1, v0, p0

    const-wide v1, 0x4076800000000000L    # 360.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    .line 147
    aput p1, p3, p0

    const/4 p0, 0x1

    aget-wide p1, v0, p0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    .line 148
    aput p1, p3, p0

    const/4 p0, 0x2

    aget-wide p1, v0, p0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    .line 149
    aput p1, p3, p0

    return-void
.end method

.method public static correctColorForBlack(I)I
    .locals 7

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, p0, 0xff

    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 198
    invoke-static {v1, v2, v3, v4}, Lcom/prompt/kiosk/slauncher/ResourceManager;->RGB2HSV(III[I)V

    const/4 v1, 0x1

    aget v1, v4, v1

    const/4 v2, 0x2

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    aget v5, v4, v2

    const/16 v6, 0x32

    if-lt v5, v6, :cond_1

    :cond_0
    if-lt v1, v3, :cond_2

    aget v1, v4, v2

    const/16 v2, 0x16

    if-ge v1, v2, :cond_2

    :cond_1
    shl-int/lit8 p0, v0, 0x18

    const v0, 0x7f7f7f

    or-int/2addr p0, v0

    :cond_2
    return p0
.end method

.method public static correctColorForWhite(I)I
    .locals 5

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, p0, 0xff

    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 136
    invoke-static {v1, v2, v3, v4}, Lcom/prompt/kiosk/slauncher/ResourceManager;->RGB2HSV(III[I)V

    const/4 v1, 0x1

    aget v1, v4, v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v4, v1

    const/16 v2, 0x54

    if-le v1, v2, :cond_0

    shl-int/lit8 p0, v0, 0x18

    const v0, 0x969696

    or-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static decodeFile(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 284
    :try_start_0
    invoke-static {p0, p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getBitmapOptions(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 287
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getBitmapOptions(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    if-nez p1, :cond_0

    .line 294
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 296
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz p0, :cond_1

    .line 299
    iput p0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_1
    return-object p1
.end method

.method public static getColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 2

    .line 117
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "resource_pref"

    .line 94
    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private initFilter()V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mPointColor:I

    .line 82
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method private loadDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 266
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 269
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 271
    invoke-static {p3, v0, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->decodeFile(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 272
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 275
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v1
.end method

.method public static parseAppName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 214
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 215
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 223
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCache(Landroid/content/ComponentName;)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mBitmapCache:Ljava/util/HashMap;

    .line 229
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public correctPointColorForBlack()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mPointColor:I

    .line 125
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->correctColorForBlack(I)I

    move-result v0

    return v0
.end method

.method public correctPointColorForWhite()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mPointColor:I

    .line 121
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->correctColorForWhite(I)I

    move-result v0

    return v0
.end method

.method public getAppIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 239
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->parseAppName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/custom_res/user/application_icons/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mIconDpi:I

    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->loadDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFilteredDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFilteredDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFilteredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->correctPointColorForBlack()I

    move-result p2

    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->correctPointColorForWhite()I

    move-result p2

    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getOriginalAppIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPointColor()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mPointColor:I

    return v0
.end method

.method public getPointColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public setPointColor()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pointcolor"

    const v2, 0x7f060015

    .line 76
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ResourceManager;->mPointColor:I

    .line 78
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->initFilter()V

    return-void
.end method

.method public update(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->clearCache()V

    :cond_0
    return-void
.end method
