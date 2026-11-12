.class public Lcom/prompt/kiosk/slauncher/LauncherConfig$Intent;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_BACKUP_PREFERENCE_RELOAD:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.BACKUP_PREFERENCE_RELOAD"

.field public static final ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action_BADGE_UPDATE"

.field public static final ACTION_DATA_BACKUP_RESULT:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.BACKUPMANAGER"

.field public static final ACTION_FINISH_LAUNCHER:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.FINISH_LAUNCHER"

.field public static final ACTION_FIRE_DOWNLOAD_PROXY_SHORTCUT:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.FIRE_DOWNLOAD_PROXY_SHORTCUT"

.field public static final ACTION_HOMEWIDGET_UPDATE:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

.field public static final ACTION_PREFERENCE_CHANGED:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.PREFERENCE_CHANGED"

.field public static final ACTION_PRESERVE_WALLPAPER_ON_DEFAULT_THEME_APPLY:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.PRESERVE_WALLPAPER_ON_DEFAULT_THEME_APPLY"

.field public static final ACTION_RELOAD_LAUNCHER:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.RELOAD_LAUNCHER"

.field public static final ACTION_THEME_APPLIED:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action.THEME_APPLIED"

.field public static final EXTRA_FIRE_DOWNLOAD_PROXY_SHORTCUT_TAG:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.extra.proxyTag"

.field public static final REQUEST_APP_INSTALL_RESULT:Ljava/lang/String; = "com.prompt.kiosk.slauncher.intent.action_INSTALL_RESULT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
