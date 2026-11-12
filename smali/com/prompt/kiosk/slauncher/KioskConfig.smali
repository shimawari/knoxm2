.class public Lcom/prompt/kiosk/slauncher/KioskConfig;
.super Ljava/lang/Object;
.source "KioskConfig.java"


# static fields
.field private static final CONFIG_ROOT:Ljava/lang/String; = "config"

.field private static final TAG:Ljava/lang/String; = "KioskConfig"

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_NORMAL:I


# instance fields
.field accessibility:Ljava/lang/Boolean;

.field adminAction:I

.field airplaneMode:Ljava/lang/Boolean;

.field appId:Ljava/lang/String;

.field autoRotate:Ljava/lang/Boolean;

.field backgroundColor:I

.field blueLight:Ljava/lang/Boolean;

.field deviceBluetooth:Ljava/lang/Boolean;

.field deviceDisplay:Ljava/lang/Boolean;

.field deviceHotspot:Ljava/lang/Boolean;

.field deviceLocation:Ljava/lang/Boolean;

.field deviceMaintenance:Ljava/lang/Boolean;

.field deviceMobiledata:Ljava/lang/Boolean;

.field deviceMobilenetwork:Ljava/lang/Boolean;

.field deviceNfc:Ljava/lang/Boolean;

.field deviceScreenlock:Ljava/lang/Boolean;

.field deviceSound:Ljava/lang/Boolean;

.field deviceWifi:Ljava/lang/Boolean;

.field doNotDisturb:Ljava/lang/Boolean;

.field flashLight:Ljava/lang/Boolean;

.field googleaccountSetup:Ljava/lang/Boolean;

.field gridX:I

.field gridY:I

.field hostUrl:Ljava/lang/String;

.field iconScale:F

.field iconTextColor:I

.field iconTextHide:Ljava/lang/Boolean;

.field iconTextShadow:Ljava/lang/Boolean;

.field iconTextStyle:I

.field initWorkspace:Z

.field init_version:I

.field isOriginal:Ljava/lang/String;

.field isSingleKiosk:Ljava/lang/String;

.field keySalt:Ljava/lang/String;

.field language:Ljava/lang/Boolean;

.field logoAsset:Ljava/lang/String;

.field orientation:I

.field password:Ljava/lang/String;

.field passwordType:I

.field pointColor:I

.field showStatusBar:Ljava/lang/Boolean;

.field singleKioskAppId:Ljava/lang/String;

.field singleKioskAppType:Ljava/lang/String;

.field singleKioskPackageName:Ljava/lang/String;

.field smartView:Ljava/lang/Boolean;

.field statusBarColor:Ljava/lang/String;

.field statusBarTextColor:Ljava/lang/String;

.field tenantId:Ljava/lang/String;

.field timeZone:Ljava/lang/Boolean;

.field wallpaperAsset:Ljava/lang/String;

.field wallpaperMode:I

.field workspaceDefaultPage:I

.field workspaceLocked:Ljava/lang/Boolean;

.field workspaceLooping:Ljava/lang/Boolean;

.field workspacePages:I

.field workspaceTransitionEffect:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->orientation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->pointColor:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->logoAsset:Ljava/lang/String;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperAsset:Ljava/lang/String;

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperMode:I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->keySalt:Ljava/lang/String;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->password:Ljava/lang/String;

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->passwordType:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->initWorkspace:Z

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspacePages:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceDefaultPage:I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLocked:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLooping:Ljava/lang/Boolean;

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceTransitionEffect:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconScale:F

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextHide:Ljava/lang/Boolean;

    iput v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextColor:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextStyle:I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextShadow:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->showStatusBar:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarColor:Ljava/lang/String;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarTextColor:Ljava/lang/String;

    iput v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->adminAction:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->backgroundColor:I

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceWifi:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceBluetooth:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceNfc:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->airplaneMode:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobiledata:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceLocation:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceHotspot:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceDisplay:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->blueLight:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceScreenlock:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceSound:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMaintenance:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobilenetwork:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->googleaccountSetup:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->timeZone:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->language:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->flashLight:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->smartView:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->accessibility:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->autoRotate:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->doNotDisturb:Ljava/lang/Boolean;

    .line 223
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskConfig;->readFromTypedArray(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static applyKioskConfig(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/KioskConfig;)V
    .locals 7

    .line 255
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "kiosk.init_version"

    .line 256
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/prompt/kiosk/slauncher/KioskConfig;->TAG:Ljava/lang/String;

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current Config Version : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 265
    iget v4, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_0

    const-string v1, "kiosk.need_lock"

    .line 266
    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "kiosk.need_lock_update_app_list"

    .line 267
    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_0
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->showStatusBar:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const-string v4, "statusbar.visible"

    .line 271
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 274
    :goto_0
    iget-object v4, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarColor:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v1, "statusbar.color"

    .line 275
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 278
    :cond_2
    iget-object v4, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarTextColor:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v1, "statusbar.text_color"

    .line 279
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 282
    :cond_3
    iget v4, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->orientation:I

    if-ltz v4, :cond_4

    const-string v1, "kiosk.screen_orientation"

    .line 283
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 286
    :cond_4
    iget v4, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->pointColor:I

    if-eqz v4, :cond_5

    .line 287
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 289
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "pointcolor"

    iget v6, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->pointColor:I

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    :cond_5
    iget-object p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->logoAsset:Ljava/lang/String;

    const-string v4, "kiosk.logo_asset"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6

    .line 294
    iget-object p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->logoAsset:Ljava/lang/String;

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 297
    :cond_6
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 298
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    move v1, v5

    .line 302
    :cond_7
    iget-object p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperAsset:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string v0, "kiosk.wallpaper_asset"

    .line 303
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 306
    :cond_8
    iget p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperMode:I

    if-ltz p0, :cond_9

    const-string v0, "workspace.wallpaper_mode"

    .line 307
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 310
    :cond_9
    iget-object p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->keySalt:Ljava/lang/String;

    if-eqz p0, :cond_a

    const-string v0, "kiosk.password_salt"

    .line 312
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 315
    :cond_a
    iget-object p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->password:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string v0, "kiosk.password_hash"

    .line 316
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 319
    :cond_b
    iget p0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->passwordType:I

    if-ltz p0, :cond_c

    const-string v0, "kiosk.password_type"

    .line 320
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v5

    .line 324
    :cond_c
    invoke-static {p1, v1, v3}, Lcom/prompt/kiosk/slauncher/KioskConfig;->getWorkspaceConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z

    move-result p0

    .line 326
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->appId:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string p0, "kiosk.emm.app_id"

    .line 327
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p0, v5

    .line 330
    :cond_d
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->tenantId:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string p0, "kiosk.emm.tenant_id"

    .line 331
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p0, v5

    .line 334
    :cond_e
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->hostUrl:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string p0, "kiosk.emm.host_url"

    .line 335
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p0, v5

    .line 338
    :cond_f
    iget v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    if-ltz v0, :cond_10

    .line 339
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p0, v5

    .line 342
    :cond_10
    iget v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->backgroundColor:I

    if-eqz v0, :cond_11

    const-string p0, "kiosk.background_color"

    .line 343
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p0, v5

    .line 346
    :cond_11
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/KioskConfig;->isOriginal:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string p0, "kiosk.is_original"

    .line 347
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_12
    move v5, p0

    .line 351
    :goto_2
    invoke-static {p1, v5, v3}, Lcom/prompt/kiosk/slauncher/KioskConfig;->getSettingsConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z

    move-result p0

    .line 352
    invoke-static {p1, p0, v3}, Lcom/prompt/kiosk/slauncher/KioskConfig;->getSingleKioskConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 355
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    return-void
.end method

.method private static getSettingsConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceWifi:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "kiosk.device_wifi"

    .line 434
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceBluetooth:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const-string p1, "kiosk.device_bluetooth"

    .line 438
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceNfc:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string p1, "kiosk.device_nfc"

    .line 442
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->airplaneMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const-string p1, "kiosk.airplaneMode"

    .line 446
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobiledata:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string p1, "kiosk.device_mobiledata"

    .line 450
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceLocation:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const-string p1, "kiosk.device_location"

    .line 454
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceHotspot:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string p1, "kiosk.device_mobileHotspot"

    .line 458
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceDisplay:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string p1, "kiosk.device_display"

    .line 462
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 465
    :cond_7
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->blueLight:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    const-string p1, "kiosk.blueLight"

    .line 466
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 469
    :cond_8
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceScreenlock:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const-string p1, "kiosk.device_screenlock"

    .line 470
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 473
    :cond_9
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceSound:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const-string p1, "kiosk.device_sound"

    .line 474
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 477
    :cond_a
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMaintenance:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const-string p1, "kiosk.device_maintenance"

    .line 478
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 481
    :cond_b
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobilenetwork:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const-string p1, "kiosk.device_mobilenetwork"

    .line 482
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 485
    :cond_c
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->googleaccountSetup:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    const-string p1, "kiosk.google_account"

    .line 486
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 489
    :cond_d
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->timeZone:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    const-string p1, "kiosk.time_zone"

    .line 490
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 493
    :cond_e
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->language:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const-string p1, "kiosk.language"

    .line 494
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 497
    :cond_f
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->flashLight:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    const-string p1, "kiosk.flash_light"

    .line 498
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 501
    :cond_10
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->smartView:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    const-string p1, "kiosk.smart_view"

    .line 502
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 505
    :cond_11
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->accessibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    const-string p1, "kiosk.accessibility"

    .line 506
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 509
    :cond_12
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->autoRotate:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    const-string p1, "kiosk.auto_rotate"

    .line 510
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 513
    :cond_13
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->doNotDisturb:Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    const-string p1, "kiosk.do_not_disturb"

    .line 514
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_14
    move v1, p1

    :goto_0
    return v1
.end method

.method private static getSingleKioskConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->isSingleKiosk:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "kiosk.is_single_kiosk"

    .line 361
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string p1, "kiosk.single_kiosk_package_name"

    .line 365
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskAppType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string p1, "kiosk.single_kiosk_app_type"

    .line 370
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 373
    :cond_2
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskAppId:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string p1, "kiosk.single_kiosk_app_id"

    .line 374
    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_0
    return v1
.end method

.method private static getWorkspaceConfig(Lcom/prompt/kiosk/slauncher/KioskConfig;ZLandroid/content/SharedPreferences$Editor;)Z
    .locals 3

    .line 381
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridX:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    if-lez v2, :cond_0

    const-string p1, "workspace.cellcount_x"

    .line 382
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "workspace.cellcount_y"

    .line 383
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    iget p1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridX:I

    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateWorkspaceLayoutCells(II)V

    move p1, v1

    .line 387
    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspacePages:I

    if-lez v0, :cond_1

    .line 388
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateWorkspaceScreenCount(I)V

    const-string p1, "workspace.screencount"

    .line 389
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspacePages:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 392
    :cond_1
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceDefaultPage:I

    if-ltz v0, :cond_2

    const-string p1, "workspace.screen_default"

    .line 393
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const-string p1, "workspace.edit_lock"

    .line 397
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLooping:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string p1, "workspace.looping"

    .line 401
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 404
    :cond_4
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceTransitionEffect:I

    if-ltz v0, :cond_5

    const-string p1, "workspace.transition_effect"

    .line 405
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 409
    :cond_5
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconScale:F

    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gez v2, :cond_6

    const-string p1, "kiosk.icon_scale"

    .line 410
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextHide:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string p1, "workspace.icon.text.hide"

    .line 414
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 417
    :cond_7
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextColor:I

    if-eqz v0, :cond_8

    const-string p1, "workspace.icon.text.color"

    .line 418
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 421
    :cond_8
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextStyle:I

    if-ltz v0, :cond_9

    const-string p1, "workspace.icon.text.style"

    .line 422
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v1

    .line 425
    :cond_9
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextShadow:Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    const-string p1, "workspace.icon.text.shadow"

    .line 426
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_a
    move v1, p1

    :goto_0
    return v1
.end method

.method public static loadKioskConfig(Landroid/content/Context;)V
    .locals 8

    .line 228
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const-string v2, "config"

    .line 230
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 232
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 235
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 236
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_2

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    sget-object v4, Lcom/prompt/kiosk/launcher/R$styleable;->KioskConfig:[I

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v5, Lcom/prompt/kiosk/slauncher/KioskConfig;->TAG:Ljava/lang/String;

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config Name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v3, Lcom/prompt/kiosk/slauncher/KioskConfig;

    invoke-direct {v3, v4}, Lcom/prompt/kiosk/slauncher/KioskConfig;-><init>(Landroid/content/res/TypedArray;)V

    invoke-static {p0, v3}, Lcom/prompt/kiosk/slauncher/KioskConfig;->applyKioskConfig(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/KioskConfig;)V

    .line 246
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskConfig;->TAG:Ljava/lang/String;

    const-string v1, "Got exception parsing favorites."

    .line 249
    invoke-static {v0, v1, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private readSettingsType(Landroid/content/res/TypedArray;)V
    .locals 3

    const/16 v0, 0x11

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceWifi:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x7

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceBluetooth:Ljava/lang/Boolean;

    :cond_1
    const/16 v0, 0xe

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceNfc:Ljava/lang/Boolean;

    :cond_2
    const/4 v0, 0x2

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->airplaneMode:Ljava/lang/Boolean;

    :cond_3
    const/16 v0, 0xc

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobiledata:Ljava/lang/Boolean;

    :cond_4
    const/16 v0, 0xa

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceLocation:Ljava/lang/Boolean;

    :cond_5
    const/16 v0, 0x9

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceHotspot:Ljava/lang/Boolean;

    :cond_6
    const/16 v0, 0x8

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 179
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceDisplay:Ljava/lang/Boolean;

    :cond_7
    const/4 v0, 0x6

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->blueLight:Ljava/lang/Boolean;

    :cond_8
    const/16 v0, 0xf

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 185
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceScreenlock:Ljava/lang/Boolean;

    :cond_9
    const/16 v0, 0x10

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 188
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceSound:Ljava/lang/Boolean;

    :cond_a
    const/16 v0, 0xb

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 191
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMaintenance:Ljava/lang/Boolean;

    :cond_b
    const/16 v0, 0xd

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 194
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->deviceMobilenetwork:Ljava/lang/Boolean;

    :cond_c
    const/16 v0, 0x14

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->googleaccountSetup:Ljava/lang/Boolean;

    :cond_d
    const/16 v0, 0x2f

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 200
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->timeZone:Ljava/lang/Boolean;

    :cond_e
    const/16 v0, 0x21

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 203
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->language:Ljava/lang/Boolean;

    :cond_f
    const/16 v0, 0x13

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 206
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->flashLight:Ljava/lang/Boolean;

    :cond_10
    const/16 v0, 0x2b

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 209
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->smartView:Ljava/lang/Boolean;

    .line 211
    :cond_11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->accessibility:Ljava/lang/Boolean;

    :cond_12
    const/4 v0, 0x4

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 215
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->autoRotate:Ljava/lang/Boolean;

    :cond_13
    const/16 v0, 0x12

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 218
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->doNotDisturb:Ljava/lang/Boolean;

    :cond_14
    return-void
.end method


# virtual methods
.method public readFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4

    const/16 v0, 0x1d

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskConfig;->TAG:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init_version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->init_version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x37

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->initWorkspace:Z

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initWorkspace : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->initWorkspace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x27

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->showStatusBar:Ljava/lang/Boolean;

    :cond_1
    const/16 v0, 0x2c

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarColor:Ljava/lang/String;

    const/16 v0, 0x2d

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->statusBarTextColor:Ljava/lang/String;

    const/16 v0, 0x26

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->orientation:I

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->orientation:I

    const/16 v0, 0x25

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->pointColor:I

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->pointColor:I

    const/16 v0, 0x22

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->logoAsset:Ljava/lang/String;

    const/16 v0, 0x30

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperAsset:Ljava/lang/String;

    const/16 v0, 0x31

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperMode:I

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->wallpaperMode:I

    const/16 v0, 0x20

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->keySalt:Ljava/lang/String;

    const/16 v0, 0x23

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->password:Ljava/lang/String;

    const/16 v0, 0x24

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->passwordType:I

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->passwordType:I

    const/16 v0, 0x15

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridX:I

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridX:I

    const/16 v0, 0x16

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->gridY:I

    const/16 v0, 0x34

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspacePages:I

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspacePages:I

    const/16 v0, 0x32

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceDefaultPage:I

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceDefaultPage:I

    const/16 v0, 0x33

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLocked:Ljava/lang/Boolean;

    :cond_2
    const/16 v0, 0x35

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceLooping:Ljava/lang/Boolean;

    :cond_3
    const/16 v0, 0x36

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceTransitionEffect:I

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->workspaceTransitionEffect:I

    const/16 v0, 0x18

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconScale:F

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconScale:F

    const/16 v0, 0x1a

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextHide:Ljava/lang/Boolean;

    :cond_4
    const/16 v0, 0x19

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextColor:I

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextColor:I

    const/16 v0, 0x1c

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextStyle:I

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextStyle:I

    const/16 v0, 0x1b

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->iconTextShadow:Ljava/lang/Boolean;

    :cond_5
    iget v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->adminAction:I

    .line 139
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->adminAction:I

    const/4 v0, 0x3

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->appId:Ljava/lang/String;

    const/16 v0, 0x2e

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->tenantId:Ljava/lang/String;

    const/16 v0, 0x17

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->hostUrl:Ljava/lang/String;

    const/4 v0, 0x5

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->backgroundColor:I

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->backgroundColor:I

    const/16 v0, 0x1e

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->isOriginal:Ljava/lang/String;

    .line 147
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskConfig;->readSettingsType(Landroid/content/res/TypedArray;)V

    const/16 v0, 0x1f

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->isSingleKiosk:Ljava/lang/String;

    const/16 v0, 0x2a

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskPackageName:Ljava/lang/String;

    const/16 v0, 0x29

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskAppType:Ljava/lang/String;

    const/16 v0, 0x28

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskConfig;->singleKioskAppId:Ljava/lang/String;

    return-void
.end method
