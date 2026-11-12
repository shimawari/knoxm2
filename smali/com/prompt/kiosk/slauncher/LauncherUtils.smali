.class public final Lcom/prompt/kiosk/slauncher/LauncherUtils;
.super Ljava/lang/Object;
.source "LauncherUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDirectionVector(FF[I)V
    .locals 8

    div-float v0, p1, p0

    float-to-double v0, v0

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 180
    aput v2, p2, v2

    const/4 v3, 0x1

    .line 181
    aput v2, p2, v3

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 183
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v2

    .line 185
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v0, v6

    if-lez p0, :cond_1

    .line 186
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v3

    :cond_1
    return-void
.end method

.method public static drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "IA"

    .line 364
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p2, 0x7f0800ae

    .line 365
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "PA"

    .line 366
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0800af

    .line 367
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 371
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 372
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 373
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/16 v3, 0x5a

    .line 374
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 375
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 376
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

.method public static drawIcon(Ljava/lang/String;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/graphics/Bitmap;Z)V
    .locals 2

    const-string v0, "IA"

    .line 257
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 258
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " is STATUS_NEED_UPDATE"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x2

    .line 259
    iput p4, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->drawNeedUpdate(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 262
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " is STATUS_NORMAL"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 263
    iput p4, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 265
    :goto_0
    iget p4, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->badgeCount:I

    if-lez p4, :cond_1

    .line 266
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "draw badge "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->badgeCount:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget p0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->badgeCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->drawBadgeCountUpdate(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, " "

    .line 414
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Debug logs: "

    .line 415
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 416
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findShortcutView(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/BubbleTextView;
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->screen:I

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 146
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I

    iget p0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I

    invoke-virtual {p1, v0, p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    .line 147
    check-cast p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBrowserIntent(Landroid/content/Context;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/content/Intent;
    .locals 2

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 387
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->checkBrowser(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Open bookmark with default browser"

    .line 390
    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-class p1, Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "Open bookmark with third-party browser"

    .line 393
    invoke-static {p1, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getConfigIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.PREFERENCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.THEME_APPLIED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.RELOAD_LAUNCHER"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.FINISH_LAUNCHER"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action_BADGE_UPDATE"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action_INSTALL_RESULT"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIconFromPackageManager(Ljava/lang/String;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 275
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 276
    iget-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "onEmmAppsUpdated() inexecutable"

    .line 277
    invoke-static {p0, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 278
    iput v3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 279
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_0

    .line 280
    iget-object v3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 281
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {v1, p1}, Lcom/prompt/kiosk/slauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-object v2, v0

    :catch_1
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const-string p1, "onEmmAppsUpdated() absent"

    .line 291
    invoke-static {p0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 292
    iput p0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    :cond_2
    return-object v0
.end method

.method public static getIntentFromShortcut(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/content/Intent;
    .locals 1

    .line 223
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getResolveInfo(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x10200000

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScale(Landroid/graphics/drawable/Drawable;)F
    .locals 1

    if-eqz p0, :cond_1

    .line 155
    instance-of v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 156
    check-cast p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->getScale()F

    move-result p0

    goto :goto_0

    .line 157
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 159
    instance-of v0, p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    if-eqz v0, :cond_1

    .line 160
    check-cast p0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;->getScale()F

    move-result p0

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static getScaleForView(Landroid/view/View;)F
    .locals 1

    .line 169
    instance-of v0, p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v0, :cond_0

    .line 170
    check-cast p0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getScale(Landroid/graphics/drawable/Drawable;)F

    move-result p0

    goto :goto_0

    .line 171
    :cond_0
    instance-of v0, p0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_1

    .line 172
    check-cast p0, Lcom/prompt/kiosk/slauncher/FolderIcon;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getMeasuredPreviewScale()F

    move-result p0

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static getShortcutIntent(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)Landroid/content/Intent;
    .locals 6

    .line 422
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 426
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object p0
.end method

.method public static getSifIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isNewerVersion(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 5

    const-string v0, " to: "

    const-string v1, "packageName : "

    .line 300
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/prompt/kiosk/utils/AppUtils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 303
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 304
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v4, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_2

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "isNewer() from version code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NumberFormatException. packageName : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "isNewer() from version name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Package Info Not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v3
.end method

.method public static mapConfigurationOriActivityInfoOri(Landroid/app/Activity;I)I
    .locals 5

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_0

    move p1, v1

    :cond_2
    :goto_0
    const/16 v0, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    filled-new-array {v1, v4, v0, v3}, [I

    move-result-object v0

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 219
    :goto_1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    return p0
.end method

.method public static replaceFolderIfNeeded(Lcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 6

    .line 319
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getWorkspaceAndHotSeatCellLayouts()Ljava/util/ArrayList;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 321
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 325
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 327
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 328
    instance-of v4, v3, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-eqz v4, :cond_3

    .line 329
    check-cast v3, Lcom/prompt/kiosk/slauncher/FolderInfo;

    .line 330
    iget-object v4, v3, Lcom/prompt/kiosk/slauncher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    .line 331
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/FolderInfo;->refreshFolder()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static setIcon(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherModel;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p3, :cond_1

    const-string p3, "EX"

    .line 243
    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 244
    iget-object p0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object p3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-static {p1, p0, p3}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 248
    iget v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    if-ne p1, v0, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-static {p3, p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->drawAppType(Landroid/graphics/Bitmap;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p2, p3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public static setStatusBarSettings(Landroid/content/SharedPreferences;Landroid/view/Window;)V
    .locals 3

    const-string v0, "statusbar.visible"

    const/4 v1, 0x1

    .line 87
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x400

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    const-string v0, "statusbar.text_color"

    const/4 v1, 0x0

    .line 94
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#000000"

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const-string v0, "statusbar.color"

    .line 99
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/high16 v0, 0x4000000

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    return-void
.end method

.method public static setViewTranslucentStatusAndNavigation(Lcom/prompt/kiosk/slauncher/DragLayer;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x700

    .line 407
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static setWindowStatusAndNavigation(Landroid/view/Window;)V
    .locals 2

    .line 399
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x700

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/high16 v0, 0xc000000

    .line 402
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static showSingleKioskFloatingButton(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->initView()V

    :cond_0
    return-void
.end method

.method public static updateDialerSmsBadgeCount(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherModel;)V
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkDialerPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p1}, Lcom/prompt/kiosk/utils/PermissionUtils;->isAndroidGo(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkNotificationPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedCallCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedSmsCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static updateGeneralAppBadgeCount(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/LauncherModel;)V
    .locals 3

    .line 132
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getBadgePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 138
    invoke-virtual {p1, p0, v2, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateItemSpanXYIfNeeded(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z
    .locals 5

    .line 340
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result v0

    .line 341
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v1

    .line 344
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 345
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 346
    :cond_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    if-le v2, v3, :cond_1

    .line 347
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 349
    :cond_1
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v4

    if-le v2, v0, :cond_2

    .line 350
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 354
    :goto_0
    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v4

    if-le v2, v1, :cond_3

    .line 355
    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    return v3
.end method
