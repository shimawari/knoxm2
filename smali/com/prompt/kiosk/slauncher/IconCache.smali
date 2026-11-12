.class public Lcom/prompt/kiosk/slauncher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/prompt/kiosk/slauncher/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mContext:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 58
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getLargeIconDensity()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mIconDpi:I

    .line 62
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;-><init>(Lcom/prompt/kiosk/slauncher/IconCache$1;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 256
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 259
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 262
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 264
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_1
    :goto_0
    iget-object p3, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 268
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p3, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    :cond_2
    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 272
    invoke-virtual {p3, p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getAppIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 274
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    move-object v1, p1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mContext:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 277
    invoke-static/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    :cond_4
    return-object v0
.end method

.method private getFullResIconImpl(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mIconDpi:I

    .line 71
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 143
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 181
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 182
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceFlush()V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 187
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 188
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 190
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    .line 192
    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_0

    .line 193
    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v3, 0x0

    .line 195
    iput-object v3, v2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 197
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIconImpl(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIconImpl(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 90
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mIconDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mContext:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 94
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mIconDpi:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIconImpl(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 232
    monitor-enter v0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    move-result-object p1

    .line 238
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    .line 234
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 215
    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 216
    monitor-exit v0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0, p1, v1, v2}, Lcom/prompt/kiosk/slauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    move-result-object p1

    .line 226
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 222
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOriginalIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 292
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getOriginalAppIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getTitleAndIcon(Lcom/prompt/kiosk/slauncher/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/ApplicationInfo;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 206
    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2, p3}, Lcom/prompt/kiosk/slauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;

    move-result-object p2

    .line 209
    iget-object p3, p2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object p3, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 210
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object p2, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 151
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 152
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePackages([Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 157
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 158
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 165
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 166
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 172
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
