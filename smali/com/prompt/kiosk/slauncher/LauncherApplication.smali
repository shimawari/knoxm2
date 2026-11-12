.class public Lcom/prompt/kiosk/slauncher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sIsScreenLarge:Z

.field private static sIsScreenOrientation:I

.field private static sLargeIconDensity:I

.field private static sScreenDensity:F


# instance fields
.field private mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field public mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field private mIsInitialize:Z

.field mLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prompt/kiosk/slauncher/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field public mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

.field public mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

.field private mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 128
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/LauncherApplication$1;-><init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getLargeIconDensity()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sLargeIconDensity:I

    return v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    return v0
.end method

.method private initialize()V
    .locals 4

    .line 69
    new-instance v0, Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/IconCache;-><init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 70
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherModel;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;-><init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;Lcom/prompt/kiosk/slauncher/IconCache;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    const/4 v2, 0x2

    .line 86
    invoke-virtual {p0, v1, v0, v2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIsInitialize:Z

    return-void
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenLarge()Z
    .locals 1

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static setScreenOrientation(I)V
    .locals 0

    sput p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    return-void
.end method

.method public static setupKioskOrientation(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    sput p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    sput p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    sput p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    sput p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    :goto_0
    if-eqz p0, :cond_3

    sget p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    .line 229
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    return-void
.end method

.method public static setupOrientation(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static setupOrientation(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    sput p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenOrientation:I

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getEmmManager()Lcom/prompt/kiosk/slauncher/EmmManager;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->TAG:Ljava/lang/String;

    const-string v1, "EMM getEmmManager: null == mEmmManager || !mEmmManager.isInitialized()"

    .line 100
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 103
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 104
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->setDeviceIdAgain()V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    return-object v0
.end method

.method public getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    return-object v0
.end method

.method getLauncherProvider()Lcom/prompt/kiosk/slauncher/LauncherProvider;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 170
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/prompt/kiosk/slauncher/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    return-object v0
.end method

.method public getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager(Z)Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getResourceManager(Z)Lcom/prompt/kiosk/slauncher/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    if-nez v0, :cond_0

    .line 150
    new-instance p1, Lcom/prompt/kiosk/slauncher/ResourceManager;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;-><init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 152
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->update(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    return-object p1
.end method

.method public getWallpaperManager()Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    if-nez v0, :cond_0

    .line 249
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kiosk.wallpaper_asset"

    const-string v2, ""

    .line 250
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    invoke-direct {v1, p0, v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    .line 255
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sIsScreenLarge:Z

    .line 61
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sScreenDensity:F

    const-string v0, "activity"

    .line 62
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 63
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    sput v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->sLargeIconDensity:I

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIsInitialize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 118
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method setLauncher(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mIsInitialize:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->initialize()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 140
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->initialize(Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    return-object p1
.end method

.method setLauncherProvider(Lcom/prompt/kiosk/slauncher/LauncherProvider;)V
    .locals 1

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method
