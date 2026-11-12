.class Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;
.super Ljava/lang/Object;
.source "EmmManager.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MandatoryDownloadResponseListener"
.end annotation


# instance fields
.field private managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmManager;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 285
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM mandatory installRequest failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " // code = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.prompt.kiosk.slauncher.intent.action_INSTALL_RESULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "app_install_result_code"

    .line 288
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 289
    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/EmmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    .line 291
    iget-boolean p1, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->managedApp:Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    .line 292
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$800(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 296
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM mandatory installRequest success for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.prompt.kiosk.slauncher.intent.action_INSTALL_RESULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "app_install_result_code"

    const-string v1, "0000000"

    .line 299
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 300
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/EmmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
