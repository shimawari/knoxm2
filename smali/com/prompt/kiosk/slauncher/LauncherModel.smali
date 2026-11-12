.class public Lcom/prompt/kiosk/slauncher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;,
        Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;,
        Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = true

.field public static final DEFAULT_SCREEN_VALUE_FOR_NEW_APP:I = 0x7fffffff

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "LauncherModel"

.field private static mCellCountX:I

.field private static mCellCountY:I

.field private static mMaxAxisCellCount:I

.field private static mMinAxisCellCount:I

.field private static mWorkspaceScreenCount:I

.field static final sDBLock:Ljava/lang/Object;

.field static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field static final sWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon_EX:Landroid/graphics/Bitmap;

.field private mDefaultIcon_IA:Landroid/graphics/Bitmap;

.field private mDefaultIcon_PA:Landroid/graphics/Bitmap;

.field private mDefaultIcon_SC:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler;

.field private mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field private mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDBLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    const/4 v0, 0x5

    sput v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceScreenCount:I

    return-void
.end method

.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;Lcom/prompt/kiosk/slauncher/IconCache;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/prompt/kiosk/slauncher/DeferredHandler;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler;

    .line 151
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const v0, 0x7f080040

    .line 155
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_SC:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const v0, 0x7f08003c

    .line 156
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_IA:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 157
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_PA:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const v0, 0x7f08003f

    .line 158
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_EX:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 162
    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mPreviousConfigMcc:I

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mMaxAxisCellCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/prompt/kiosk/slauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;IIIIIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p11}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;IIIIIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static synthetic access$1500(Lcom/prompt/kiosk/slauncher/LauncherModel;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherApplication;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/LauncherModel;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceLoaded:Z

    return p0
.end method

.method static synthetic access$402(Lcom/prompt/kiosk/slauncher/LauncherModel;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/prompt/kiosk/slauncher/LauncherModel;Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceScreenCount:I

    return v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V
    .locals 0

    .line 600
    iput-wide p2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 601
    iput p5, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 602
    iput p6, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 603
    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 605
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 607
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 609
    instance-of p4, p1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-nez p4, :cond_0

    instance-of p4, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    if-eqz p4, :cond_1

    .line 612
    :cond_0
    iget p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    .line 613
    iget p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    .line 615
    iget p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "userSpanX"

    invoke-virtual {p2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    iget p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "userSpanY"

    invoke-virtual {p2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 620
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getLauncherProvider()Lcom/prompt/kiosk/slauncher/LauncherProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->generateNewId()J

    move-result-wide p4

    iput-wide p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    .line 621
    iget-wide p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p4, "_id"

    invoke-virtual {p2, p4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    new-instance p0, Lcom/prompt/kiosk/slauncher/LauncherModel$5;

    invoke-direct {p0, p3, p7, p2, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel$5;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    .line 637
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->runHelper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static addItemToStoredMaps(Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 4

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 641
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->convertItemTypeToDefaultIfNeeded(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 654
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 645
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/prompt/kiosk/slauncher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_2
    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V
    .locals 9

    .line 331
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/prompt/kiosk/slauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    .line 333
    invoke-static/range {v1 .. v8}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V

    :goto_1
    return-void
.end method

.method static batchAddOrMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            "JIII",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-wide v2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->batchMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIILjava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 220
    invoke-static/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V

    :goto_1
    return-void
.end method

.method static batchMoveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            "JIII",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-wide p2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 230
    iput p5, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 231
    iput p6, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 232
    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 234
    instance-of p0, p1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    if-eqz p0, :cond_1

    .line 236
    :cond_0
    iget p0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput p0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    .line 237
    iget p0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput p0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    .line 239
    :cond_1
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static batchUpdateItemInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 245
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherModel$3;

    invoke-direct {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 322
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->runHelper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 3

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 736
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 737
    new-instance v1, Lcom/prompt/kiosk/slauncher/LauncherModel$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    .line 743
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->runHelper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static deleteItemFromStoredMaps(Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 3

    .line 708
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->convertItemTypeToDefaultIfNeeded(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 724
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 711
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 712
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 713
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 714
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 718
    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 719
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 720
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method static final deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "launcher.db"

    .line 747
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 748
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 751
    iget-wide v1, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    :cond_0
    new-instance p1, Lcom/prompt/kiosk/slauncher/LauncherModel$7;

    invoke-direct {p1, v0, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$7;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 780
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->runHelper(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doBadgeUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 941
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kiosk.is_single_kiosk"

    const-string v2, "false"

    .line 942
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "badge_count_package_name"

    .line 945
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 953
    :cond_0
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "badge_count"

    const/4 v2, 0x0

    .line 957
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Badge Update Intent Received. packageName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / badgeCount  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 962
    invoke-static {p1, v0, p2}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->saveBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 965
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;J)",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;"
        }
    .end annotation

    .line 2479
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-nez v0, :cond_0

    .line 2482
    new-instance v0, Lcom/prompt/kiosk/slauncher/FolderInfo;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/FolderInfo;-><init>()V

    .line 2483
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 1097
    monitor-enter v0

    .line 1100
    :try_start_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->stopLoaderLocked()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoaderFromBackground()V

    return-void

    :catchall_0
    move-exception v1

    .line 1102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getCellCountX()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountX:I

    return v0
.end method

.method public static getCellCountY()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p4, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    .line 2578
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 2579
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2581
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFallbackIcon(Landroid/graphics/Bitmap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p1, :cond_0

    .line 2293
    invoke-virtual {p0, p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x1

    .line 2294
    iput-boolean p3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    :cond_0
    return-object p1
.end method

.method private getIconFromDb(Landroid/content/Context;Landroid/database/Cursor;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p4, :cond_0

    if-eqz p2, :cond_0

    .line 2302
    invoke-virtual {p0, p2, p3, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_0
    return-object p4
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "spanY"

    const-string v3, "spanX"

    const-string v4, "cellY"

    const-string v5, "cellX"

    const-string v6, "screen"

    const-string v7, "container"

    const-string v8, "itemType"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v10, "favorites"

    const/4 v0, 0x7

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v11, v0

    const/4 v0, 0x1

    aput-object v7, v11, v0

    const/4 v0, 0x2

    aput-object v6, v11, v0

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v3, v11, v0

    const/4 v0, 0x6

    aput-object v2, v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p1

    .line 506
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 515
    sget-object v10, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "itemType"

    const-string v12, "container"

    const-string v13, "screen"

    const-string v14, "cellX"

    const-string v15, "cellY"

    const-string v16, "spanX"

    const-string v17, "spanY"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    move-object v9, v0

    if-nez v9, :cond_1

    return-object v1

    .line 522
    :cond_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 523
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 524
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 525
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 526
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 527
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 528
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 531
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 532
    new-instance v8, Lcom/prompt/kiosk/slauncher/ItemInfo;

    invoke-direct {v8}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    .line 533
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 534
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 535
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 536
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 537
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 538
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    .line 539
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 541
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 546
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 544
    :catch_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    return-object v1

    .line 546
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 547
    throw v0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;IIIIIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 3

    .line 2316
    new-instance v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;-><init>()V

    const/4 v1, 0x1

    .line 2317
    iput v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    .line 2321
    invoke-interface {p1, p8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p8

    iput-object p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2323
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const/4 p8, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    if-eq p4, v1, :cond_2

    const/4 p5, 0x2

    if-eq p4, p5, :cond_0

    .line 2374
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2375
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 2376
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    goto/16 :goto_1

    .line 2362
    :cond_0
    invoke-virtual {p0, p1, p7, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p4, :cond_1

    .line 2364
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2365
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    .line 2366
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 2367
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    goto :goto_1

    .line 2369
    :cond_1
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    .line 2370
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    goto :goto_1

    .line 2352
    :cond_2
    invoke-virtual {p0, p1, p7, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p4, :cond_3

    .line 2354
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2355
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    .line 2356
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_1

    .line 2358
    :cond_3
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    goto :goto_1

    .line 2326
    :cond_4
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 2327
    invoke-interface {p1, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 2328
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    .line 2329
    iput-boolean p8, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    .line 2332
    :try_start_0
    invoke-virtual {p6, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p6

    if-eqz p6, :cond_6

    .line 2334
    invoke-virtual {p6, p5, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    if-gtz p5, :cond_5

    const-string p8, "com.prompt.kiosk.slauncher.intent.action.FIRE_DOWNLOAD_PROXY_SHORTCUT"

    .line 2335
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_5

    return-object v2

    :cond_5
    iget-object p8, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 2338
    invoke-virtual {p8, p6, p5}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object p6, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 2339
    invoke-virtual {p6}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p6

    .line 2338
    invoke-static {p5, p2, p6, p4, p3}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ResourceManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    move-object p4, v2

    :goto_0
    if-nez p4, :cond_7

    .line 2346
    invoke-virtual {p0, p1, p7, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2349
    :cond_7
    invoke-direct {p0, p4, v0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Landroid/graphics/Bitmap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2379
    :goto_1
    invoke-virtual {v0, p4}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2382
    invoke-interface {p1, p9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 2383
    invoke-interface {p1, p10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 2384
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    .line 2387
    :try_start_1
    invoke-virtual {p6, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p6

    if-eqz p6, :cond_8

    .line 2389
    invoke-virtual {p6, p5, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    iget-object p7, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 2390
    invoke-virtual {p7, p6, p5}, Lcom/prompt/kiosk/slauncher/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object p6, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 2391
    invoke-virtual {p6}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p6

    .line 2390
    invoke-static {p5, p2, p6, p4, p3}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ResourceManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p3

    :catch_1
    :cond_8
    if-nez v2, :cond_9

    .line 2398
    invoke-virtual {p0, p1, p11, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    .line 2402
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setCheckedIcon(Landroid/graphics/Bitmap;)V

    :cond_a
    return-object v0
.end method

.method static modifyItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIIIII)V
    .locals 0

    .line 414
    iput-wide p2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 415
    iput p5, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 416
    iput p6, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 417
    iput p7, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 418
    iput p8, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 419
    iput p9, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    .line 420
    iput p10, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    .line 421
    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 423
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 424
    iget-wide p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellX"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellY"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "spanX"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "spanY"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "userSpanX"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "userSpanY"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "screen"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "moveItemInDatabase"

    .line 433
    invoke-static {p0, p2, p1, p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIII)V
    .locals 0

    .line 385
    iput-wide p2, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 386
    iput p5, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 387
    iput p6, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 388
    iput p4, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 390
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 392
    iget-wide p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellX"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellY"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "screen"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    instance-of p3, p1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-nez p3, :cond_0

    instance-of p3, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    if-eqz p3, :cond_1

    .line 399
    :cond_0
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    .line 400
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    .line 402
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "userSpanX"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    iget p3, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "userSpanY"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p3, "moveItemInDatabase"

    .line 406
    invoke-static {p0, p2, p1, p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static runHelper(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 2667
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runHelper() called. r:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 2679
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2680
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 2682
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setLabel(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/pm/PackageInfo;Landroid/content/res/Resources;)V
    .locals 1

    .line 2247
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 2248
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2250
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 2251
    iput-object p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method private setTitle(Landroid/database/Cursor;IILcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2283
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2285
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2286
    iput-boolean v0, p4, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userTitle:Z

    :cond_0
    return-void
.end method

.method private setTitleFromResource(Landroid/content/pm/PackageManager;Landroid/database/Cursor;ILjava/util/HashMap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .line 2256
    iget-boolean v0, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userTitle:Z

    if-nez v0, :cond_4

    .line 2257
    iget-object v0, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p7, :cond_2

    .line 2258
    invoke-static {p7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 2259
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2260
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2262
    :cond_1
    iget-object p7, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p7, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz p4, :cond_2

    .line 2264
    iget-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    :cond_2
    :goto_0
    iget-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 2271
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2275
    :cond_3
    iget-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_4

    .line 2276
    invoke-virtual {p6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_4
    return-void
.end method

.method private stopLoaderLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    .line 1140
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->stopLocked()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler;

    .line 204
    new-instance v2, Lcom/prompt/kiosk/slauncher/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$2;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static updateDownloadShortcutRecordsWithNormalShortcut(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2815
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2835
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move v3, v1

    .line 2817
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2818
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2819
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 2821
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v5, 0x10200000

    .line 2823
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2826
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_1

    .line 2827
    :cond_0
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/String;

    .line 2831
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_id"

    .line 2832
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "intent"

    .line 2833
    invoke-virtual {v6, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    .line 2834
    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "itemType"

    .line 2835
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "iconType"

    .line 2836
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "app_status"

    .line 2837
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2840
    new-instance v5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-direct {v5}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;-><init>()V

    int-to-long v8, v4

    .line 2841
    iput-wide v8, v5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->id:J

    .line 2842
    iput v1, v5, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    const-string v4, "updateDownloadShortcutRecordsWithNormalShortcut()"

    .line 2844
    invoke-static {p0, v7, v5, v4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 2

    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const-string v1, "updateItemInDatabase"

    .line 470
    invoke-static {p0, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V
    .locals 8

    .line 342
    iget-wide v4, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const/4 p3, 0x0

    .line 343
    invoke-virtual {p2, v4, v5, p3}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    new-instance p3, Lcom/prompt/kiosk/slauncher/LauncherModel$4;

    move-object v0, p3

    move-object v3, p1

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel$4;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/prompt/kiosk/slauncher/ItemInfo;Landroid/content/Context;)V

    .line 377
    invoke-static {p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->runHelper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0

    sput p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountX:I

    sput p1, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCellCountY:I

    return-void
.end method

.method static updateWorkspaceLayoutMaxCells(I)V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mMinAxisCellCount:I

    sput p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mMaxAxisCellCount:I

    return-void
.end method

.method static updateWorkspaceScreenCount(I)V
    .locals 0

    sput p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceScreenCount:I

    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 2657
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallbacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 2659
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->dumpState()V

    goto :goto_0

    :cond_0
    const-string v1, "mLoaderTask=null"

    .line 2661
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method enqueuePackageUpdated(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;)V
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 1797
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public findLauncherPackage()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1844
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1845
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1848
    instance-of v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 1849
    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1850
    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1851
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public findShortcutByAppId(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1830
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1831
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1832
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1833
    instance-of v2, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 1834
    check-cast v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1835
    iget-object v2, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findShortcutByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1815
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1816
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    .line 1818
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1819
    instance-of v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 1820
    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 1821
    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1822
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "IA"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_IA:Landroid/graphics/Bitmap;

    .line 167
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "PA"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_PA:Landroid/graphics/Bitmap;

    .line 169
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "EX"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_EX:Landroid/graphics/Bitmap;

    .line 171
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mDefaultIcon_SC:Landroid/graphics/Bitmap;

    .line 173
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "IA"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const v0, 0x7f0c0002

    .line 178
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "PA"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const v0, 0x7f0c0003

    .line 180
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "EX"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const v0, 0x7f0c0001

    .line 182
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const v0, 0x7f0c0004

    .line 184
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;J)",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;"
        }
    .end annotation

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    .line 559
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x2

    .line 560
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 557
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 563
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "itemType"

    .line 564
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "title"

    .line 565
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "container"

    .line 566
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "screen"

    .line 567
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellX"

    .line 568
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v7, "cellY"

    .line 569
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 572
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object v1

    .line 578
    :goto_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 579
    iput-wide p3, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    .line 580
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->container:J

    .line 581
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->screen:I

    .line 582
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellX:I

    .line 583
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 589
    throw p2
.end method

.method public getFolderInfo(J)Lcom/prompt/kiosk/slauncher/FolderInfo;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 1859
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    return-object p1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1089
    new-instance v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    const v2, 0x7f0f0002

    invoke-direct {v1, p1, v2}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;-><init>(Landroid/content/Context;I)V

    const-string v2, "phone"

    .line 1090
    invoke-virtual {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->resolve(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    move-result-object v1

    .line 1091
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 1093
    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2408
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 2410
    :try_start_0
    array-length p2, p1

    const/4 v0, 0x0

    .line 2411
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2410
    invoke-static {p1, p3}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1079
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1080
    new-instance v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    const v2, 0x7f0f0002

    invoke-direct {v1, p1, v2}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;-><init>(Landroid/content/Context;I)V

    const-string v2, "phone"

    .line 1081
    invoke-virtual {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->resolve(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    move-result-object v1

    .line 1082
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 1084
    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 13

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 2092
    invoke-virtual/range {v0 .. v12}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;IIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;IIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;IIIII)",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 2104
    new-instance v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-direct {v9}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;-><init>()V

    const/4 v10, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_a

    move/from16 v11, p10

    .line 2108
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v12, p11

    .line 2109
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "IA"

    .line 2110
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "PA"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v13, 0x0

    goto :goto_2

    .line 2111
    :cond_1
    :goto_1
    invoke-virtual {v8, v3, v4, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2112
    invoke-virtual {v9, v13}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x1

    .line 2113
    iput-boolean v14, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    if-ne v12, v7, :cond_2

    if-eqz v13, :cond_2

    .line 2115
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v13, v14, v11}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    :cond_2
    move/from16 v14, p8

    .line 2117
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-nez v0, :cond_3

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v13, :cond_7

    move/from16 v14, p12

    .line 2125
    :try_start_0
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2126
    invoke-virtual {v1, v14, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 2127
    invoke-virtual {v1, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 2129
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_4

    .line 2130
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 2133
    invoke-static {v6, v2}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_5

    .line 2135
    :try_start_1
    invoke-virtual {v9, v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-object v13, v6

    goto :goto_5

    :cond_5
    :goto_4
    move-object v13, v6

    .line 2138
    :cond_6
    :try_start_2
    invoke-direct {v8, v9, v15, v14}, Lcom/prompt/kiosk/slauncher/LauncherModel;->setLabel(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/pm/PackageInfo;Landroid/content/res/Resources;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2143
    :catch_1
    :cond_7
    :goto_5
    invoke-direct {v8, v13, v9, v11}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Landroid/graphics/Bitmap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2144
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2145
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_8

    goto :goto_6

    .line 2148
    :cond_8
    iput-object v7, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_7

    .line 2146
    :cond_9
    :goto_6
    invoke-virtual {v8, v11}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    :goto_7
    if-nez v0, :cond_b

    .line 2152
    iput v10, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    .line 2153
    invoke-virtual {v9, v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2154
    iput v12, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    return-object v9

    .line 2157
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_c

    .line 2159
    iput v10, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    .line 2160
    invoke-virtual {v9, v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2161
    iput v12, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    return-object v9

    .line 2178
    :cond_c
    :try_start_3
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 2179
    invoke-virtual {v1, v7, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2203
    :cond_d
    invoke-virtual {v1, v0, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 2205
    iget-boolean v0, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingOriginalIcon:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 2206
    invoke-virtual {v0, v7}, Lcom/prompt/kiosk/slauncher/IconCache;->getOriginalIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v14, p7

    goto :goto_8

    :cond_e
    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    move-object/from16 v14, p7

    .line 2208
    invoke-virtual {v0, v7, v13, v14}, Lcom/prompt/kiosk/slauncher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2209
    iput-boolean v10, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingOriginalIcon:Z

    goto :goto_8

    :cond_f
    move-object/from16 v14, p7

    .line 2214
    :try_start_4
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2215
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    .line 2216
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v15, v10, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2218
    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2219
    invoke-direct {v8, v9, v0, v15}, Lcom/prompt/kiosk/slauncher/LauncherModel;->setLabel(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/pm/PackageInfo;Landroid/content/res/Resources;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_10
    move-object v0, v6

    .line 2225
    :goto_8
    invoke-direct {v8, v2, v3, v4, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIconFromDb(Landroid/content/Context;Landroid/database/Cursor;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2227
    invoke-direct {v8, v0, v9, v11}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Landroid/graphics/Bitmap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2228
    invoke-virtual {v9, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move/from16 v0, p9

    .line 2230
    invoke-direct {v8, v3, v5, v0, v9}, Lcom/prompt/kiosk/slauncher/LauncherModel;->setTitle(Landroid/database/Cursor;IILcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, v9

    move-object v6, v7

    move-object v7, v13

    .line 2233
    invoke-direct/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->setTitleFromResource(Landroid/content/pm/PackageManager;Landroid/database/Cursor;ILjava/util/HashMap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V

    const/4 v0, 0x0

    .line 2234
    iput v0, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v12, v1, :cond_11

    .line 2238
    iput v1, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    goto :goto_9

    .line 2240
    :cond_11
    iput v0, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    :goto_9
    return-object v9

    :catch_3
    move v0, v10

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 2182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActivityInfo failed for component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iput v0, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    .line 2184
    invoke-virtual {v9, v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    .line 2185
    iput v0, v9, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    return-object v9
.end method

.method public initWorkspace()V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    const-string v1, "initWorkspace()"

    .line 1146
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->cancelDragByModelReloading()V

    .line 1151
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherModel$9;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$9;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    .line 1158
    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 1159
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public initialize(Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 813
    monitor-enter v0

    .line 814
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 815
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 828
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "com.prompt.kiosk.slauncher.intent.action.THEME_APPLIED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v10, v6

    goto :goto_0

    :sswitch_8
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v10, v8

    goto :goto_0

    :sswitch_9
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v10, v7

    goto :goto_0

    :sswitch_a
    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    move v10, v9

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "call forceReload() because ACTION_USER_PRESENT"

    .line 929
    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    goto/16 :goto_4

    .line 832
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.intent.extra.REPLACING"

    .line 833
    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v2, :cond_14

    .line 837
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_3

    .line 842
    :cond_b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string p1, "com.android.settings"

    .line 844
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    move v6, v8

    goto/16 :goto_2

    .line 848
    :cond_d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez p2, :cond_12

    goto/16 :goto_2

    .line 854
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez p2, :cond_f

    move v6, v7

    goto :goto_1

    .line 864
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 865
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 870
    invoke-virtual {p2, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 871
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 872
    invoke-virtual {p2, v1}, Lcom/prompt/kiosk/slauncher/IconCache;->remove(Landroid/content/ComponentName;)V

    :cond_10
    move v6, v8

    .line 876
    :goto_1
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "kiosk.single_kiosk_package_name"

    const-string v3, ""

    .line 877
    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 880
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    .line 883
    invoke-static {p1}, Lcom/prompt/kiosk/utils/PermissionUtils;->isAndroidGoAndCannotFloatWindow(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "Android Go, Q or Higher Device. Does not automatically launch the single kiosk app."

    .line 884
    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 886
    :cond_11
    invoke-static {p1}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 888
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 889
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 890
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Single Kiosk Package Added. Start Kiosk App ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move v6, v9

    :cond_13
    :goto_2
    if-eqz v6, :cond_16

    .line 897
    new-instance p1, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v6, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->enqueuePackageUpdated(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;)V

    goto :goto_4

    :cond_14
    :goto_3
    return-void

    .line 916
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mPreviousConfigMcc:I

    .line 917
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq p2, v1, :cond_15

    .line 918
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Reload apps on config change. curr_mcc:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " prevmcc:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    .line 923
    :cond_15
    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mPreviousConfigMcc:I

    goto :goto_4

    .line 910
    :pswitch_3
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 926
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/IconCache;->flush()V

    goto :goto_4

    :pswitch_5
    const-string p1, "android.intent.extra.changed_package_list"

    .line 903
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 904
    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/IconCache;->removePackages([Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->forceReload()V

    goto :goto_4

    .line 934
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->doBadgeUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_16
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54ecb526 -> :sswitch_a
        -0x53ae571d -> :sswitch_9
        -0x4fc097e4 -> :sswitch_8
        -0xeb3f17c -> :sswitch_7
        -0x122164c -> :sswitch_6
        0x9780086 -> :sswitch_5
        0xa480416 -> :sswitch_4
        0x1f50b9c2 -> :sswitch_3
        0x311a1d6c -> :sswitch_2
        0x4e1d9585 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2445
    :cond_0
    iget-boolean v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_1

    .line 2446
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public resetLoader()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 1201
    monitor-enter v0

    .line 1202
    :try_start_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->stopLoaderLocked()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mWorkspaceLoaded:Z

    .line 1204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public startLoader(Landroid/content/Context;ZZ)V
    .locals 4

    const-string v0, "startLoader isLaunching="

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 1168
    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " skipWorkspaceIfPossible="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 1175
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-eqz v0, :cond_3

    .line 1176
    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->cancelDragByModelReloading()V

    .line 1180
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1182
    :goto_1
    new-instance v2, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 1184
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->setSkipWorkspaceIfPossible()V

    :cond_2
    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 p2, 0x5

    .line 1186
    invoke-virtual {p1, p2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1187
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1189
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startLoaderFromBackground()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 1121
    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const/4 v1, 0x0

    .line 1127
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public stopLoader()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 1193
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mLoaderTask:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 1195
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->stopLocked()V

    .line 1197
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 188
    new-instance v1, Lcom/prompt/kiosk/slauncher/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$1;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "app_version"

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateBadgeCount packageName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / badgeCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 977
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findShortcutByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 978
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 979
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "contacts"

    .line 986
    iget-object v5, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->resolverTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 992
    :try_start_0
    iget-object v5, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 993
    iget-object v7, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 995
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_2

    .line 999
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1000
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    .line 1002
    :cond_1
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_3

    .line 1006
    invoke-static {v7, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1007
    iput p3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->badgeCount:I

    .line 1008
    invoke-static {v7, p3, p1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->drawBadgeCountUpdate(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 1010
    invoke-virtual {v2, v7}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v7, "iconType"

    .line 1011
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_2
    const-string v6, "EX"

    .line 1015
    iget-object v7, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1016
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1022
    :cond_3
    :goto_2
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1023
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1025
    :cond_4
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_5

    .line 1026
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 1030
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 1031
    iput-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    const-string v5, "title"

    .line 1032
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :catch_0
    :cond_6
    iget v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "app_status"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mApp:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 1051
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getEmmManager()Lcom/prompt/kiosk/slauncher/EmmManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1053
    iget-object v5, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/prompt/kiosk/slauncher/EmmManager;->findAppInfo(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1055
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1056
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 1057
    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_7
    iput-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->version:Ljava/lang/String;

    :cond_8
    const-string v3, ""

    .line 1063
    invoke-static {p1, v4, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mHandler:Lcom/prompt/kiosk/slauncher/DeferredHandler;

    .line 1065
    new-instance v4, Lcom/prompt/kiosk/slauncher/LauncherModel$8;

    invoke-direct {v4, p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$8;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;[B)V
    .locals 2

    if-eqz p3, :cond_0

    .line 2456
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 2457
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2458
    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    :catch_0
    :cond_0
    sget-object p3, Lcom/prompt/kiosk/slauncher/LauncherModel;->TAG:Ljava/lang/String;

    .line 2466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "going to save icon bitmap for info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    :cond_1
    return-void
.end method
