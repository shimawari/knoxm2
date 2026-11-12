.class public Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preferences"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences$Name;
    }
.end annotation


# static fields
.field public static PREFERENCES_MODE:I = 0x4

.field public static final PREF_BADGE_COUNT_ENABLED:Ljava/lang/String; = "badge.count.enabled"

.field public static final PREF_COLOR_PALETTE_USER_COLOR:Ljava/lang/String; = "colorpalette.usercolor"

.field public static final PREF_FOLDERICON_SCROLL_ENABLED:Ljava/lang/String; = "foldericon.scroll"

.field public static final PREF_FOLDERICON_STYLE:Ljava/lang/String; = "foldericon.style"

.field public static final PREF_FOLDERICON_WORKSPACE_STYLE:Ljava/lang/String; = "foldericon.workspace.style"

.field public static final PREF_FOLDER_SCROLL_HELP_DISMISSED_KEY:Ljava/lang/String; = "help.folder.scroll.dismissed"

.field public static final PREF_HELP_DISMISSED_KEY:Ljava/lang/String; = "help.dismissed"

.field public static final PREF_HIDE_PAGE_DIVIDER:Ljava/lang/String; = "page.divider.hide"

.field public static final PREF_IS_SINGLE_KIOSK:Ljava/lang/String; = "kiosk.is_single_kiosk"

.field public static final PREF_KIOSK:Ljava/lang/String; = "kiosk.emm."

.field public static final PREF_KIOSK_ACCESSIBILITY:Ljava/lang/String; = "kiosk.accessibility"

.field public static final PREF_KIOSK_AIRPLANE_MODE:Ljava/lang/String; = "kiosk.airplaneMode"

.field public static final PREF_KIOSK_APP_ID:Ljava/lang/String; = "kiosk.emm.app_id"

.field public static final PREF_KIOSK_AUTO_ROTATE:Ljava/lang/String; = "kiosk.auto_rotate"

.field public static final PREF_KIOSK_BACKGROUND_COLOR:Ljava/lang/String; = "kiosk.background_color"

.field public static final PREF_KIOSK_BLUE_LIGHT:Ljava/lang/String; = "kiosk.blueLight"

.field public static final PREF_KIOSK_DEVICE_BLUETOOTH:Ljava/lang/String; = "kiosk.device_bluetooth"

.field public static final PREF_KIOSK_DEVICE_DISPLAY:Ljava/lang/String; = "kiosk.device_display"

.field public static final PREF_KIOSK_DEVICE_LOCATION:Ljava/lang/String; = "kiosk.device_location"

.field public static final PREF_KIOSK_DEVICE_MAINTENANCE:Ljava/lang/String; = "kiosk.device_maintenance"

.field public static final PREF_KIOSK_DEVICE_MOBILEDATA:Ljava/lang/String; = "kiosk.device_mobiledata"

.field public static final PREF_KIOSK_DEVICE_MOBILEHOTSPOT:Ljava/lang/String; = "kiosk.device_mobileHotspot"

.field public static final PREF_KIOSK_DEVICE_MOBILENETWORK:Ljava/lang/String; = "kiosk.device_mobilenetwork"

.field public static final PREF_KIOSK_DEVICE_NFC:Ljava/lang/String; = "kiosk.device_nfc"

.field public static final PREF_KIOSK_DEVICE_SCREENLOCK:Ljava/lang/String; = "kiosk.device_screenlock"

.field public static final PREF_KIOSK_DEVICE_SOUND:Ljava/lang/String; = "kiosk.device_sound"

.field public static final PREF_KIOSK_DEVICE_WIFI:Ljava/lang/String; = "kiosk.device_wifi"

.field public static final PREF_KIOSK_DO_NOT_DISTURB:Ljava/lang/String; = "kiosk.do_not_disturb"

.field public static final PREF_KIOSK_FLASH_LIGHT:Ljava/lang/String; = "kiosk.flash_light"

.field public static final PREF_KIOSK_GOOGLE_ACCOUNT:Ljava/lang/String; = "kiosk.google_account"

.field public static final PREF_KIOSK_HOST_URL:Ljava/lang/String; = "kiosk.emm.host_url"

.field public static final PREF_KIOSK_ICON_SCALE:Ljava/lang/String; = "kiosk.icon_scale"

.field public static final PREF_KIOSK_INIT_VERSION:Ljava/lang/String; = "kiosk.init_version"

.field public static final PREF_KIOSK_IS_ORIGINAL:Ljava/lang/String; = "kiosk.is_original"

.field public static final PREF_KIOSK_LANGUAGE:Ljava/lang/String; = "kiosk.language"

.field public static final PREF_KIOSK_LAST_ORIENTATION:Ljava/lang/String; = "kiosk.last_orientation"

.field public static final PREF_KIOSK_LOGO_ASSET:Ljava/lang/String; = "kiosk.logo_asset"

.field public static final PREF_KIOSK_NEED_LOCK:Ljava/lang/String; = "kiosk.need_lock"

.field public static final PREF_KIOSK_NEED_UPDATE_APP_LIST:Ljava/lang/String; = "kiosk.need_lock_update_app_list"

.field public static final PREF_KIOSK_PASSWORD_HASH:Ljava/lang/String; = "kiosk.password_hash"

.field public static final PREF_KIOSK_PASSWORD_SALT:Ljava/lang/String; = "kiosk.password_salt"

.field public static final PREF_KIOSK_PASSWORD_TYPE:Ljava/lang/String; = "kiosk.password_type"

.field public static final PREF_KIOSK_SCREEN_ORIENTATION:Ljava/lang/String; = "kiosk.screen_orientation"

.field public static final PREF_KIOSK_SMART_VIEW:Ljava/lang/String; = "kiosk.smart_view"

.field public static final PREF_KIOSK_TENANT_ID:Ljava/lang/String; = "kiosk.emm.tenant_id"

.field public static final PREF_KIOSK_TIME_ZONE:Ljava/lang/String; = "kiosk.time_zone"

.field public static final PREF_KIOSK_WALLPAPER_ASSET:Ljava/lang/String; = "kiosk.wallpaper_asset"

.field public static final PREF_ORIENTATION_AUTO:Ljava/lang/String; = "orientation.auto"

.field public static final PREF_PREFERRED_HOME_DISMISSED:Ljava/lang/String; = "dialog.preferredhome.dismissed"

.field public static final PREF_SEARCH_HISTORY:Ljava/lang/String; = "search.history"

.field public static final PREF_SHOW_POPUP_NEWTHEME:Ljava/lang/String; = "launcher.show.popup.newtheme"

.field public static final PREF_SHOW_POPUP_SEARCHBAR_GUIDE_POPUP:Ljava/lang/String; = "launcher.show.popup.searchbar_guide"

.field public static final PREF_SINGLE_KIOSK_APP_ID:Ljava/lang/String; = "kiosk.single_kiosk_app_id"

.field public static final PREF_SINGLE_KIOSK_APP_TYPE:Ljava/lang/String; = "kiosk.single_kiosk_app_type"

.field public static final PREF_SINGLE_KIOSK_GUIDE:Ljava/lang/String; = "kiosk.single_kiosk_guide"

.field public static final PREF_SINGLE_KIOSK_PACKAGE_NAME:Ljava/lang/String; = "kiosk.single_kiosk_package_name"

.field public static final PREF_SPLASH_DISMISSED_KEY:Ljava/lang/String; = "splash.dismissed"

.field public static final PREF_STATUSBAR_COLOR:Ljava/lang/String; = "statusbar.color"

.field public static final PREF_STATUSBAR_GESTURE:Ljava/lang/String; = "statusbar.gesture"

.field public static final PREF_STATUSBAR_TEXT_COLOR:Ljava/lang/String; = "statusbar.text_color"

.field public static final PREF_STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar.visible"

.field public static final PREF_SWIPE_UP_DOWN_GESTURE_TYPE:Ljava/lang/String; = "statusbar.gesture_type"

.field public static final PREF_THEME_LOAD_OTHER_THEMES:Ljava/lang/String; = "theme.load_other_themes"

.field public static final PREF_UPGRADED:Ljava/lang/String; = "launcher.upgraded"

.field public static final PREF_WORKSPACE_CELLCOUNT_X:Ljava/lang/String; = "workspace.cellcount_x"

.field public static final PREF_WORKSPACE_CELLCOUNT_Y:Ljava/lang/String; = "workspace.cellcount_y"

.field public static final PREF_WORKSPACE_EDIT_LOCK_ENABLED:Ljava/lang/String; = "workspace.edit_lock"

.field public static final PREF_WORKSPACE_ICON_SIZE:Ljava/lang/String; = "workspace.icon.size"

.field public static final PREF_WORKSPACE_ICON_TEXT_COLOR:Ljava/lang/String; = "workspace.icon.text.color"

.field public static final PREF_WORKSPACE_ICON_TEXT_HIDE:Ljava/lang/String; = "workspace.icon.text.hide"

.field public static final PREF_WORKSPACE_ICON_TEXT_SHADOW:Ljava/lang/String; = "workspace.icon.text.shadow"

.field public static final PREF_WORKSPACE_ICON_TEXT_STYLE:Ljava/lang/String; = "workspace.icon.text.style"

.field public static final PREF_WORKSPACE_MENUPOPUP_SETTINGS:Ljava/lang/String; = "workspace.menupopup_workspace_settings"

.field public static final PREF_WORKSPACE_MENU_SETTINGS:Ljava/lang/String; = "workspace.menu_workspace_settings"

.field public static final PREF_WORKSPACE_MENU_SETTINGS_PINNED:Ljava/lang/String; = "workspace.menu_workspace_settings_pinned"

.field public static final PREF_WORKSPACE_OPACITY:Ljava/lang/String; = "workspace.opacity"

.field public static final PREF_WORKSPACE_PAGE_LOOPING:Ljava/lang/String; = "workspace.looping"

.field public static final PREF_WORKSPACE_SCREEN_COUNT:Ljava/lang/String; = "workspace.screencount"

.field public static final PREF_WORKSPACE_SCREEN_DEFAULT:Ljava/lang/String; = "workspace.screen_default"

.field public static final PREF_WORKSPACE_SNOW_WIDGET_TYPE:Ljava/lang/String; = "workspace.snow_widget_type"

.field public static final PREF_WORKSPACE_TRANSITION_EFFECT:Ljava/lang/String; = "workspace.transition_effect"

.field public static final PREF_WORKSPACE_WALLPAPER_FILTER:Ljava/lang/String; = "workspace.wallpaper_filter"

.field public static final PREF_WORKSPACE_WALLPAPER_MODE:Ljava/lang/String; = "workspace.wallpaper_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadgePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "badge_icon"

    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getHistoryPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "history_theme"

    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "setting"

    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getTempPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "temp"

    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getUpgradeInfoPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "upgrade_info"

    sget v1, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->PREFERENCES_MODE:I

    .line 80
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
