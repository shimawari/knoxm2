.class Lcom/prompt/kiosk/slauncher/Launcher$6;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1028
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1031
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 1032
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    const/4 v0, 0x0

    .line 1033
    invoke-static {p2, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$502(Lcom/prompt/kiosk/slauncher/Launcher;Z)Z

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1034
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$600(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/DragLayer;->clearAllUserAnimationViews()V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1035
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$700(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1036
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->needUpdateWallpaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1037
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$900(Lcom/prompt/kiosk/slauncher/Launcher;)V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 1039
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    const/4 p2, 0x1

    .line 1040
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$502(Lcom/prompt/kiosk/slauncher/Launcher;Z)Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$6;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1041
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$700(Lcom/prompt/kiosk/slauncher/Launcher;)V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 1042
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "launcher"

    const-string p2, "ACTION_PACKAGE_ADDED"

    .line 1043
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
