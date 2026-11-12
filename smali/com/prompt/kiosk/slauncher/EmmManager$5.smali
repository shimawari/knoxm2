.class Lcom/prompt/kiosk/slauncher/EmmManager$5;
.super Ljava/lang/Object;
.source "EmmManager.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;->attemptMandatoryDownloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmManager;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 432
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppInfo] EMM getAppInfo failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 436
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 437
    sget-boolean p1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz p1, :cond_1

    .line 438
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EMM requestMandatoryDownloads() for attemptMandatoryDownloads"

    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 440
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1600(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    :cond_2
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 444
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[AppInfo] EMM getAppInfo onSuccess "

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMM mManagedApps add at attemptMandatoryDownloads"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 452
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 454
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    .line 455
    sget-boolean v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v2, :cond_1

    .line 456
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EMM getAppInfo id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 458
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    new-instance v4, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    invoke-direct {v4, v1}, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;-><init>(Lcom/prompt/kiosk/slauncher/EmmAppInfo;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 462
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1600(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 463
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1200(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 464
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1300(Lcom/prompt/kiosk/slauncher/EmmManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$5;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 465
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$1300(Lcom/prompt/kiosk/slauncher/EmmManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;

    invoke-interface {v0, p1}, Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;->onEmmAppsUpdated(Ljava/util/Collection;)V

    :cond_3
    return-void
.end method
