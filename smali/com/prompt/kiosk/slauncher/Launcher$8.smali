.class Lcom/prompt/kiosk/slauncher/Launcher$8;
.super Ljava/util/TimerTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher;->startAppInstallRequestTimer()V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$8;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1979
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1982
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App Install Request Timeout"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$8;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1983
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->showManualInstallGuide()V

    const/4 v0, 0x0

    .line 1984
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    return-void
.end method
