.class Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherActionIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1921
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Launcher$1;)V
    .locals 0

    .line 1921
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    return-void
.end method

.method private onReceiveAppInstallResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1954
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1900(Lcom/prompt/kiosk/slauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "app_install_result_code"

    .line 1955
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "0000000"

    .line 1957
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1959
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->showInstallProgress()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1960
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->startAppInstallRequestTimer()V

    goto :goto_0

    :cond_0
    const-string v0, "1700020"

    .line 1961
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    const v0, 0x7f0c0047

    .line 1963
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->showErrorGuide(I)V

    .line 1964
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskDialog;

    invoke-direct {p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;-><init>()V

    const/4 v0, 0x0

    sget-object v1, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_MGP:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p2, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 1967
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot install the Single App. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1968
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->showManualInstallGuide()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_6

    .line 1924
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1926
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.THEME_APPLIED"

    .line 1927
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1928
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.prompt.kiosk.slauncher.intent.action.PREFERENCE_CHANGED"

    .line 1929
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1930
    invoke-static {p1, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1600(Lcom/prompt/kiosk/slauncher/Launcher;Z)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "com.prompt.kiosk.slauncher.intent.action.RELOAD_LAUNCHER"

    .line 1931
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1932
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1700(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->resetLoader()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1933
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->setLoadOnResume()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1934
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1700(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-virtual {p1, p2, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "com.prompt.kiosk.slauncher.intent.action.FINISH_LAUNCHER"

    .line 1936
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1937
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1700(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->resetLoader()V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1938
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/IconCache;->flush()V

    .line 1939
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 1940
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getLauncherProvider()Lcom/prompt/kiosk/slauncher/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->updateMaxId()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    const/4 p2, 0x1

    .line 1941
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1600(Lcom/prompt/kiosk/slauncher/Launcher;Z)V

    goto :goto_0

    :cond_4
    const-string v1, "com.prompt.kiosk.slauncher.intent.action_BADGE_UPDATE"

    .line 1942
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1943
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1900(Lcom/prompt/kiosk/slauncher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "badge_package"

    .line 1944
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "badge_count"

    .line 1945
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1946
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1700(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateBadgeCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v1, "com.prompt.kiosk.slauncher.intent.action_INSTALL_RESULT"

    .line 1948
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1949
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;->onReceiveAppInstallResult(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void
.end method
