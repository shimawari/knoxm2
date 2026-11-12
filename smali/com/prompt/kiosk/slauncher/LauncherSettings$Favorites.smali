.class public final Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/LauncherSettings$BaseLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPTYPE_INTERNAL:Ljava/lang/String; = "IA"

.field public static final APPTYPE_PACKAGE:Ljava/lang/String; = "EX"

.field public static final APPTYPE_PUBLIC:Ljava/lang/String; = "PA"

.field static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final ASSET:Ljava/lang/String; = "asset"

.field static final CELLX:Ljava/lang/String; = "cellX"

.field static final CELLY:Ljava/lang/String; = "cellY"

.field static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_ALLAPPS:I = -0xc8

.field public static final CONTAINER_DESKTOP:I = -0x64

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

.field static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field static final EMM_APP_ID:Ljava/lang/String; = "app_id"

.field static final EMM_APP_STATUS:Ljava/lang/String; = "app_status"

.field static final EMM_APP_TYPE:Ljava/lang/String; = "app_type"

.field static final EMM_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field static final IS_DEFAULT:Ljava/lang/String; = "is_default"

.field static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ITEM_TYPE_APPLICATION_ALLAPPS:I = 0x64

.field static final ITEM_TYPE_APPWIDGET:I = 0x4

.field static final ITEM_TYPE_FOLDER:I = 0x2

.field static final ITEM_TYPE_FOLDER_ALLAPPS:I = 0x65

.field static final ITEM_TYPE_HOMEWIDGET:I = 0x32

.field static final ITEM_TYPE_HOMEWIDGET_END:I = 0x62

.field static final ITEM_TYPE_LIVE_FOLDER:I = 0x3

.field static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final RESOLVER_TAG:Ljava/lang/String; = "resolver_tag"

.field static final SCREEN:Ljava/lang/String; = "screen"

.field static final SPANX:Ljava/lang/String; = "spanX"

.field static final SPANY:Ljava/lang/String; = "spanY"

.field public static final STATUS_INEXECUTABLE:I = 0x4

.field public static final STATUS_INVALID:I = 0x1

.field public static final STATUS_NEED_UPDATE:I = 0x2

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOT_INSTALL:I = 0x3

.field static final URI:Ljava/lang/String; = "uri"

.field static final USER_SPANX:Ljava/lang/String; = "userSpanX"

.field static final USER_SPANY:Ljava/lang/String; = "userSpanY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sds.emm.kiosk.app2025071720122/favorites?notify=true"

    .line 130
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sds.emm.kiosk.app2025071720122/favorites?notify=false"

    .line 138
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.sds.emm.kiosk.app2025071720122/favorites/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "?notify="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
