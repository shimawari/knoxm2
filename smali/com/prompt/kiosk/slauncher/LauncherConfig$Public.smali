.class public Lcom/prompt/kiosk/slauncher/LauncherConfig$Public;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Public"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1

.field public static final ENABLE_ICON_BACKGROUND_MERGE:Z = true

.field public static final ICON_SIZE_DEFAULT:I = 0x64

.field public static final ICON_TEXT_COLOR:I = -0x1

.field public static final ICON_TEXT_HIDE:Z = false

.field public static final ICON_TEXT_SHADOW:Z = true

.field public static final ICON_TEXT_STYLE:I = 0x0

.field public static final REQUEST_APP_INSTALL_RESULT_CODE:Ljava/lang/String; = "app_install_result_code"

.field public static final SCALE_ICON_WITH_ICON_BACKGROUND:F = 0.8f

.field public static final SCALE_ICON_WITH_ICON_BACKGROUND_AND_QUARTER:F = 0.4f

.field public static final STATUS_BAR_TEXT_COLOR:Ljava/lang/String; = "#000000"

.field public static final UPDATE_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field public static final UPDATE_BADGE_PACKAGE_NAME:Ljava/lang/String; = "badge_package"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
