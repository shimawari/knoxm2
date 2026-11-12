.class public Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;
.super Landroid/content/BroadcastReceiver;
.source "KioskWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KioskWallpaperManager"

.field private static final XML_ATTR_ASSET_HORIZONTAL:Ljava/lang/String; = "asset2"

.field private static final XML_ATTR_ASSET_VERTICAL:Ljava/lang/String; = "asset"

.field private static final XML_ATTR_RANDOM:Ljava/lang/String; = "random"

.field private static final XML_TAG_IMAGE:Ljava/lang/String; = "Image"

.field private static final XML_TAG_ROOT:Ljava/lang/String; = "Wallpaper"

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mCurrent:I

.field private mIsRandom:Z

.field private mUpdated:Z

.field mWallpaperAsset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->sRandom:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->sRandom:Ljava/util/Random;

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mAssetManager:Landroid/content/res/AssetManager;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->loadAsset(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mAssetManager:Landroid/content/res/AssetManager;

    .line 142
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getWallpaperImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Utilities;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNextIdx()I
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mIsRandom:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->sRandom:Ljava/util/Random;

    .line 122
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v3, v2

    .line 128
    rem-int v1, v3, v0

    :cond_5
    :goto_1
    return v1
.end method

.method private getWallpaperImage()Ljava/lang/String;
    .locals 6

    .line 149
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "kiosk.screen_orientation"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->verticalImage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->getHorizontalImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->getHorizontalImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->verticalImage:Ljava/lang/String;

    .line 168
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->updateLastOrientation(I)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWallpaperImage Name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private loadAsset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mIsRandom:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_b

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 61
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-interface {v2, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p2, "Wallpaper"

    .line 65
    invoke-static {v2, p2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    const-string v3, "random"

    .line 68
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mIsRandom:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p2

    .line 75
    :cond_3
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 76
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p2, :cond_8

    :cond_4
    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 78
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Image"

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, ""

    move v5, v0

    move-object v4, v3

    :goto_2
    if-ge v5, v1, :cond_7

    :try_start_2
    const-string v6, "asset"

    .line 84
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 85
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string v6, "asset2"

    .line 87
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 88
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    .line 91
    new-instance v5, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;

    invoke-direct {v5, v3, v4}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper Info / asset1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / asset2 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 101
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_5

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_3
    move-object v1, p1

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    goto :goto_4

    :catch_4
    move-exception p2

    goto :goto_4

    :catch_5
    move-exception p2

    :goto_4
    :try_start_4
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_9

    .line 101
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void

    :goto_6
    if-eqz v1, :cond_a

    .line 101
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_a
    :goto_7
    throw p2

    :cond_b
    :goto_8
    return-void
.end method

.method private updateLastOrientation(I)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kiosk.last_orientation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mWallpaperAsset:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentWallpaper()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    if-gez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getNextIdx()I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mUpdated:Z

    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    .line 184
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public needUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mUpdated:Z

    return v0
.end method

.method public needUpdateWallpaper(Landroid/content/Context;)Z
    .locals 5

    .line 214
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kiosk.screen_orientation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 216
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "kiosk.last_orientation"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne v1, v4, :cond_0

    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "Skip Update Wallpaper"

    .line 219
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    return v4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->needUpdateWallpaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mUpdated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mUpdated:Z

    .line 202
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getNextIdx()I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mCurrent:I

    :cond_0
    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->mUpdated:Z

    return-void
.end method
