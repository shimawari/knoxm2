.class Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->mOp:I

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    return-void
.end method

.method private caseUpdate(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 10

    const-string v0, "EX"

    const-string v1, "app_version"

    const-string v2, "Package add/update: "

    .line 1951
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1959
    iget-object v4, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1962
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    .line 1990
    :try_start_0
    iget-object v7, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1991
    iget-object v8, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1993
    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " version "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_0

    .line 1996
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1998
    invoke-static {v2, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2000
    invoke-virtual {p2, v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v2, "iconType"

    .line 2001
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2005
    :cond_0
    iget-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2006
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2010
    :cond_1
    :goto_0
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_2

    .line 2011
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 2013
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2014
    iput-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    const-string v3, "title"

    .line 2015
    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-eqz v4, :cond_4

    .line 2021
    iput-object v4, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2022
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "intent is not null. intent.toUrl(0) : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "intent"

    .line 2023
    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    :cond_4
    iget v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 2026
    iput v6, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 2029
    :cond_5
    iget v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "app_status"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2031
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$200(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getEmmManager()Lcom/prompt/kiosk/slauncher/EmmManager;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2033
    iget-object v3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/EmmManager;->findAppInfo(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2035
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2036
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 2037
    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    :cond_6
    iput-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->version:Ljava/lang/String;

    :cond_7
    const-string v1, ""

    .line 2043
    invoke-static {p1, v5, p2, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2045
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v1, p0, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2056
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2057
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "call forceReload()"

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2058
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1500(Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    :cond_8
    return-void
.end method

.method private testCode([Ljava/lang/String;)V
    .locals 6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 2078
    :cond_0
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2080
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAllAppsList.removePackage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2071
    :cond_1
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2073
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAllAppsList.updatePackage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2065
    :cond_2
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2067
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAllAppsList.addPackage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1879
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$200(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1881
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->testCode([Ljava/lang/String;)V

    .line 1882
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1883
    invoke-virtual {v6, v5}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findShortcutByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1884
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    iget v7, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v9, 0x2

    if-eq v7, v9, :cond_4

    const/4 v10, 0x3

    if-eq v7, v10, :cond_1

    const/4 v11, 0x4

    if-eq v7, v11, :cond_1

    goto :goto_1

    .line 1893
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1895
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "intent"

    .line 1896
    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "iconType"

    .line 1897
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "app_status"

    .line 1898
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, ""

    .line 1900
    invoke-static {v0, v11, v6, v9}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    .line 1902
    iget-object v9, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    const-string v11, "EX"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1903
    iget-object v12, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1905
    :cond_2
    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v12, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    invoke-static {v12}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$200(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-static {v9, v12, v13}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1907
    :goto_2
    iget v9, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    if-eq v9, v8, :cond_3

    .line 1908
    iput v10, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 1910
    :cond_3
    iput-object v7, v6, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1911
    invoke-static {v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v7

    new-instance v8, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v8, p0, v6}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    invoke-virtual {v7, v8}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1922
    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1923
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "call forceReload()"

    invoke-static {v6, v7}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1924
    invoke-static {v6}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1500(Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    goto/16 :goto_1

    .line 1888
    :cond_4
    invoke-direct {p0, v0, v6}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->caseUpdate(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1933
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 1935
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1939
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
