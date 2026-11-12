.class Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;
.super Ljava/lang/Object;
.source "EmmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownloadCmd"
.end annotation


# instance fields
.field private managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmManager;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM retry installRequest for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    .line 260
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$600(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$700(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    return-void
.end method
