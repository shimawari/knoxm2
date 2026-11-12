.class Lcom/prompt/kiosk/slauncher/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2920
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->needUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2921
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2923
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update Wallpaper View"

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2924
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$2000(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2925
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$2100(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/WallpaperView;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$15;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2926
    invoke-static {v1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$2202(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
