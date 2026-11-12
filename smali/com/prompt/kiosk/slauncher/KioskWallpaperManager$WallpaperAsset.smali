.class Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;
.super Ljava/lang/Object;
.source "KioskWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperAsset"
.end annotation


# instance fields
.field horizontalImage:Ljava/lang/String;

.field verticalImage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->verticalImage:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->horizontalImage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHorizontalImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->horizontalImage:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->verticalImage:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager$WallpaperAsset;->horizontalImage:Ljava/lang/String;

    return-object v0
.end method
