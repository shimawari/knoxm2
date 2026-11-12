.class Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOMEWIDGET:Ljava/lang/String; = "homewidget"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFavoriteResolver:Lcom/prompt/kiosk/slauncher/FavoriteResolver;

.field private mMaxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x15

    const-string v2, "launcher.db"

    .line 259
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    cmp-long p1, v0, v0

    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result p0

    return p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/16 v6, 0xb

    .line 572
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v7

    .line 577
    invoke-direct {v0, v3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getDefaultName(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 579
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "itemType"

    invoke-virtual {v2, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x1

    .line 580
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "spanX"

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "spanY"

    .line 581
    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "_id"

    .line 582
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "LauncherProvider"

    const/4 v13, 0x3

    .line 608
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v6, :cond_2

    iget-object v13, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mFavoriteResolver:Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    if-nez v13, :cond_0

    .line 586
    new-instance v13, Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    iget-object v15, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0002

    invoke-direct {v13, v15, v10}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;-><init>(Landroid/content/Context;I)V

    iput-object v13, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mFavoriteResolver:Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    :cond_0
    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mFavoriteResolver:Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    .line 589
    invoke-virtual {v10, v6, v4}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->resolve(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 591
    iget-object v13, v10, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->packageName:Ljava/lang/String;

    .line 592
    iget-object v10, v10, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->className:Ljava/lang/String;

    goto :goto_0

    .line 594
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "Favorite resolver failed. resolverTag:"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const/16 v10, 0xa

    .line 597
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 598
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v27, v13

    move-object v13, v10

    move-object/from16 v10, v27

    :goto_0
    const-string v15, "app_status"

    move-object/from16 v17, v6

    const-string v6, ""

    const-string v5, "resolver_tag"

    move-object/from16 v18, v12

    const-string v12, "class_name"

    move-object/from16 v19, v11

    const-string v11, "package_name"

    const/4 v4, 0x7

    const-string v1, "title"

    if-nez v13, :cond_3

    .line 601
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 602
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 603
    invoke-direct {v0, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->setIconInfo(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 604
    invoke-virtual {v2, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v2, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, p1

    .line 609
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J

    move-result-wide v1

    return-wide v1

    :cond_3
    move-object v4, v1

    move-object/from16 v21, v14

    move-object/from16 v1, p1

    const-string v14, " || version: "

    const-string v1, "app_version"

    move-wide/from16 v22, v7

    const-string v7, "Add App Shortcut. packageName: "

    if-nez v10, :cond_b

    move-object/from16 v8, p4

    const/4 v10, 0x7

    .line 613
    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 615
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v5

    move-object/from16 v16, v9

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    move-object v9, v6

    move-object v6, v1

    move-object v1, v15

    move-object/from16 v15, p1

    goto/16 :goto_a

    :cond_4
    move-object/from16 v24, v15

    const/4 v10, 0x0

    .line 619
    :try_start_0
    invoke-virtual {v8, v13, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 620
    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 622
    iget-object v8, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v8, :cond_5

    .line 624
    :try_start_1
    iget-object v8, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    move-object/from16 v25, v5

    :try_start_2
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v10, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object/from16 v15, p1

    goto/16 :goto_6

    :catch_1
    :cond_5
    move-object/from16 v25, v5

    :catch_2
    const/4 v5, 0x0

    :goto_1
    const-string v8, "iconType"

    if-eqz v5, :cond_7

    move-object/from16 v26, v6

    :try_start_3
    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 629
    invoke-static {v5, v6}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v5, :cond_6

    move-object/from16 v5, v19

    .line 631
    :try_start_4
    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_6
    move-object/from16 v5, v19

    goto :goto_3

    :catch_3
    move-object/from16 v5, v19

    :catch_4
    move-object/from16 v15, p1

    move-object v6, v1

    move-object/from16 v16, v9

    move-object/from16 v8, v18

    :goto_2
    move-wide/from16 v9, v22

    goto/16 :goto_8

    :cond_7
    move-object/from16 v26, v6

    move-object/from16 v5, v19

    const/4 v6, 0x2

    .line 634
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    :goto_3
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_8

    .line 639
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_9

    .line 641
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 642
    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 644
    :cond_9
    invoke-virtual {v2, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v6, 0x7

    .line 646
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 647
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v8, "iconPackage"

    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 649
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "icon"

    .line 650
    invoke-static {v6}, Lcom/prompt/kiosk/slauncher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 653
    :cond_a
    iget v6, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v8, v18

    :try_start_5
    invoke-static {v8, v6}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v2, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    move-object/from16 v6, v26

    .line 656
    :try_start_6
    invoke-virtual {v2, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v10, v25

    .line 657
    :try_start_7
    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x4

    .line 658
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v16, v1

    move-object/from16 v1, v24

    :try_start_8
    invoke-virtual {v2, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v15, p1

    move-object/from16 v26, v6

    move-object/from16 v25, v10

    move-object/from16 v6, v16

    move-object/from16 v16, v9

    move-wide/from16 v9, v22

    .line 659
    :try_start_9
    invoke-direct {v0, v15, v2, v9, v10}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J

    move-result-wide v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_a

    return-wide v1

    :catch_5
    move-object/from16 v15, p1

    move-object/from16 v26, v6

    move-object/from16 v25, v10

    move-object/from16 v6, v16

    move-object/from16 v16, v9

    move-wide/from16 v9, v22

    goto :goto_9

    :catch_6
    move-object/from16 v15, p1

    move-object/from16 v26, v6

    move-object/from16 v16, v9

    move-object/from16 v25, v10

    goto :goto_7

    :catch_7
    move-object/from16 v15, p1

    move-object/from16 v26, v6

    move-object/from16 v16, v9

    goto :goto_7

    :catch_8
    move-object/from16 v15, p1

    move-object v6, v1

    move-object/from16 v16, v9

    goto/16 :goto_2

    :catch_9
    move-object/from16 v15, p1

    move-object/from16 v25, v5

    :goto_6
    move-object/from16 v26, v6

    move-object/from16 v16, v9

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    :goto_7
    move-wide/from16 v9, v22

    move-object v6, v1

    :goto_8
    move-object/from16 v1, v24

    :catch_a
    :goto_9
    move-wide/from16 v22, v9

    move-object/from16 v9, v26

    goto :goto_a

    :cond_b
    move-object v6, v1

    move-object/from16 v25, v5

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    move-object v1, v15

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    move-object/from16 v15, p1

    move-object/from16 v9, v20

    .line 668
    :goto_a
    :try_start_a
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_b

    move-object/from16 v15, p4

    move-object/from16 v24, v1

    const/4 v1, 0x0

    .line 669
    :try_start_b
    invoke-virtual {v15, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v19, v5

    :goto_b
    move-object/from16 v5, v16

    const/4 v1, 0x7

    goto :goto_c

    :catch_b
    move-object/from16 v15, p4

    move-object/from16 v24, v1

    const/4 v1, 0x0

    .line 671
    :catch_c
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v5

    .line 673
    new-instance v5, Landroid/content/ComponentName;

    aget-object v10, v10, v1

    invoke-direct {v5, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :try_start_c
    invoke-virtual {v15, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_e

    move-object v10, v5

    goto :goto_b

    .line 689
    :goto_c
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 691
    invoke-direct {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->setIconInfo(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 695
    :try_start_d
    invoke-virtual {v15, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 696
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    move-object/from16 v1, p5

    move-object/from16 v6, v25

    .line 700
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    .line 701
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "intent"

    const/4 v7, 0x0

    .line 703
    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v2, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v2, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 706
    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v5, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v19

    move-object/from16 v5, v24

    .line 708
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v7, p1

    move-wide/from16 v14, v22

    .line 709
    invoke-direct {v0, v7, v2, v14, v15}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J

    move-result-wide v1

    return-wide v1

    :catch_e
    move-object/from16 v7, p1

    move-object/from16 v1, v17

    move-wide/from16 v14, v22

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    const/4 v8, 0x7

    .line 677
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 678
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 679
    invoke-direct {v0, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->setIconInfo(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 681
    invoke-virtual {v2, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v2, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v21

    .line 684
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, v16

    .line 685
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {v0, v7, v2, v14, v15}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private addFavorite(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 522
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    .line 523
    invoke-virtual {p3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v5, 0x11

    .line 524
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "app_id"

    .line 526
    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 528
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "app_type"

    .line 529
    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "is_default"

    .line 531
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v5, :cond_2

    .line 532
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "app_version"

    .line 533
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 4

    const/4 v0, 0x2

    .line 743
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 744
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 745
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    const-string v2, "_id"

    .line 747
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "favorites"

    const/4 v3, 0x0

    .line 748
    invoke-static {p0, p1, v2, v3, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->access$200(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method private addHomeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;III)Z
    .locals 3

    .line 560
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    const-string v2, "itemType"

    .line 561
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    .line 562
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 563
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetId"

    .line 564
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "_id"

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 566
    invoke-static {p0, p1, p3, p4, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->access$200(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private addHomeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 8

    const/4 v0, 0x2

    .line 541
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "asset"

    .line 543
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x9

    const/4 v1, -0x1

    .line 546
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v0, 0x0

    if-ne v5, v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 549
    invoke-static {v1, v5}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidget(Landroid/content/Context;I)Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 551
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/16 v0, 0xe

    .line 552
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 553
    invoke-direct/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addHomeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;III)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 757
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/4 v0, 0x7

    .line 759
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    .line 760
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 763
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    .line 768
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 769
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 770
    const-class v4, Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 771
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p3, "AppIconType"

    const-string v3, "Bookmark"

    .line 772
    invoke-virtual {v2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-direct {p0, p2, v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->setIconInfo(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    const-string p3, "title"

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0004

    .line 783
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    const/high16 p3, 0x10000000

    .line 786
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p3, 0x0

    .line 787
    invoke-virtual {v2, p3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "intent"

    invoke-virtual {p2, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "itemType"

    const/4 v2, 0x1

    .line 788
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    .line 789
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 790
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "_id"

    .line 791
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private checkDbAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;J)J
    .locals 2

    const-string v0, "favorites"

    const/4 v1, 0x0

    .line 721
    invoke-static {p0, p1, v0, v1, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->access$200(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method private getDefaultName(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xf

    .line 728
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 729
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string v1, "IA"

    .line 732
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0002

    .line 733
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "PA"

    .line 734
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0003

    .line 735
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "EX"

    .line 736
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0001

    .line 737
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 363
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 364
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    return-wide v2

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v8, "container"

    .line 384
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 385
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "Start Loading Favorites."

    const-string v12, "LauncherProvider"

    .line 388
    invoke-static {v12, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    :try_start_0
    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 394
    invoke-static {v15}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    const-string v1, "favorites"

    .line 395
    invoke-static {v15, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 397
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v16, 0x0

    .line 400
    :goto_0
    :try_start_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 401
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v5, :cond_17

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v10, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 410
    sget-object v14, Lcom/prompt/kiosk/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v10, v6, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v14, 0x4

    .line 413
    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 414
    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_1

    :cond_2
    const-wide/16 v18, -0x64

    :goto_1
    const/16 v14, 0xc

    .line 417
    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v4, 0x12

    .line 418
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x13

    .line 419
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 422
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "screen"

    .line 423
    invoke-virtual {v11, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellX"

    .line 424
    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellY"

    .line 425
    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v14, "favorite"

    const-string v4, "shortcut"

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    :try_start_2
    const-string v2, "homewidget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_1
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_3
    const-string v2, "folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const-wide/16 v18, 0x0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move/from16 v26, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v24, v12

    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_c

    :cond_4
    const/16 v1, 0xf

    .line 441
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 442
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v1, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v2, "title"

    .line 445
    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {v7, v0, v11}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v22, v2, v18

    if-ltz v22, :cond_7

    const/16 v23, 0x1

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    .line 449
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v24, v12

    .line 451
    :try_start_3
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    move-object/from16 v25, v4

    .line 452
    :goto_6
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move/from16 v26, v5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 453
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v12, :cond_8

    goto :goto_7

    .line 497
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    if-ltz v22, :cond_a

    .line 499
    invoke-static {v0, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 500
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    .line 501
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_9
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    goto :goto_4

    :cond_a
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_b
    :goto_7
    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    move/from16 v5, v26

    goto :goto_6

    .line 457
    :cond_c
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v27, v1

    .line 459
    sget-object v1, Lcom/prompt/kiosk/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 461
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 462
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-ltz v22, :cond_10

    const/4 v1, 0x0

    .line 465
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v28, v2

    const/4 v1, 0x1

    .line 466
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 467
    invoke-virtual {v5, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v1, 0x11

    .line 468
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_d

    .line 469
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    move-object/from16 v30, v6

    const-string v6, "app_id"

    .line 470
    invoke-virtual {v11, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    move-object/from16 v30, v6

    :goto_8
    if-eqz v2, :cond_e

    .line 472
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    const-string v4, "app_type"

    .line 473
    invoke-virtual {v11, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v2, "is_default"

    .line 475
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v1, :cond_f

    .line 476
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    const-string v2, "app_version"

    .line 477
    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v6, v27

    const/4 v3, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v20, v28

    const/16 v27, 0x2

    move-object/from16 v2, p1

    move/from16 v28, v3

    move-object v3, v11

    move-object/from16 v29, v8

    move-object/from16 v8, v25

    const/16 v25, 0x3

    move-object v4, v5

    move/from16 p2, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v31, v14

    move-object v14, v6

    move-object v6, v9

    .line 479
    invoke-direct/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-ltz v3, :cond_11

    .line 481
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move-wide/from16 v20, v2

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move/from16 p2, v12

    move-object/from16 v31, v14

    move-object/from16 v8, v25

    move-object/from16 v14, v27

    const/16 v17, 0x0

    const/16 v25, 0x3

    const/16 v27, 0x2

    const/16 v28, 0x1

    move-object v12, v5

    .line 483
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-ltz v22, :cond_12

    .line 484
    invoke-direct {v7, v0, v11, v12}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-ltz v3, :cond_11

    .line 486
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_11
    :goto_9
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v12, p2

    move-object/from16 v25, v8

    move-object v1, v14

    move-wide/from16 v2, v20

    move/from16 v5, v26

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v14, v31

    goto/16 :goto_6

    .line 489
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Folders can contain only shortcuts"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move/from16 v26, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v24, v12

    const/16 v17, 0x0

    .line 436
    invoke-direct {v7, v0, v11, v10}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-ltz v1, :cond_16

    goto :goto_b

    :cond_14
    move/from16 v26, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v24, v12

    const/16 v17, 0x0

    .line 433
    invoke-direct {v7, v0, v11, v10}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addHomeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v23

    goto :goto_a

    :cond_15
    move/from16 v26, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v24, v12

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v10

    move-object v5, v13

    move-object v6, v9

    .line 429
    invoke-direct/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->addFavorite(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v23

    :goto_a
    if-eqz v23, :cond_16

    :goto_b
    add-int/lit8 v16, v16, 0x1

    .line 508
    :cond_16
    :goto_c
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v12, v24

    move/from16 v5, v26

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_17
    move-object/from16 v24, v12

    move-object/from16 v2, v24

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    :goto_d
    move-object/from16 v24, v12

    :goto_e
    move/from16 v14, v16

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    :goto_f
    move-object/from16 v24, v12

    const/16 v17, 0x0

    move/from16 v14, v17

    :goto_10
    const-string v1, "Got exception parsing favorites."

    move-object/from16 v2, v24

    .line 511
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v16, v14

    :goto_11
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mFavoriteResolver:Lcom/prompt/kiosk/slauncher/FavoriteResolver;

    const-string v0, "Loading Favorites Complete."

    .line 515
    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba2e392 -> :sswitch_3
        -0x146a23ba -> :sswitch_2
        0x3ea1c99c -> :sswitch_1
        0x723eebe3 -> :sswitch_0
    .end sparse-switch
.end method

.method private setIconInfo(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 715
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iconPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    .line 716
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateNewId()J
    .locals 4

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "LauncherProvider"

    const-string v1, "creating new launcher database"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,hidden INTEGER DEFAULT 0,userSpanX INTEGER,userSpanY INTEGER,ctime INTEGER DEFAULT 0,checkedIcon BLOB,checkedIconPackage TEXT,checkedIconResource TEXT,asset TEXT,app_id TEXT,app_type TEXT,is_default INTEGER,app_status INTEGER,package_name TEXT,class_name TEXT,resolver_tag TEXT,app_version TEXT);"

    .line 275
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/high16 v0, 0x7f0f0000

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDowngrade triggered. oldVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", newVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LauncherProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Destroying all old data."

    .line 335
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS favorites"

    .line 336
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpgrade triggered. oldVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LauncherProvider"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x15

    if-eq p2, p3, :cond_0

    const-string p2, "Destroying all old data."

    .line 323
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS favorites"

    .line 324
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public updateMaxId()V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-void
.end method
