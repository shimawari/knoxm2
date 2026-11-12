.class Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;
.super Ljava/lang/Object;
.source "EmmConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAppInstallCmd"
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    return-void
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;)Ljava/lang/String;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    return-object p0
.end method

.method private composeAppInstallReq()Lorg/json/JSONObject;
    .locals 6

    .line 609
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 611
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Header"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 613
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$500(Lcom/prompt/kiosk/slauncher/EmmConnection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    const-string v4, "OTCRequest"

    .line 616
    invoke-static {v3, v4}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$600(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Parameters"

    .line 617
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->composeParameters()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "Command"

    .line 618
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Body"

    .line 620
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "EMM"

    .line 622
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 624
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppInstallReq exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    sget-boolean v1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v1, :cond_0

    .line 627
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppInstall] App Install Reqest : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private composeOtcParameters()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 646
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "AppId"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->mAppId:Ljava/lang/String;

    .line 647
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private composeParameters()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 633
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 635
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Code"

    const-string v3, "InstallAppOTC"

    .line 637
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Parameters"

    .line 638
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->composeOtcParameters()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "OTC"

    .line 640
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private parseResponse(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 654
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "EMM"

    .line 655
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Body"

    .line 656
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->parseResult(Lorg/json/JSONObject;)Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    move-result-object p1

    return-object p1

    .line 661
    :cond_0
    new-instance p1, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-direct {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method private parseResult(Lorg/json/JSONObject;)Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Command"

    .line 667
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Code"

    const/4 v2, 0x0

    .line 668
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Result"

    .line 669
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 670
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v3, "OTCResponse"

    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "0000000"

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 684
    :cond_1
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 679
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_3

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[AppInstall] Parse AppInstall fail. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    .line 682
    :cond_3
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    invoke-direct {v0, v2, p1}, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 672
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v3, :cond_5

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[AppInstall] Parse AppInstall fail. ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    .line 675
    :cond_5
    new-instance p1, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    invoke-direct {p1, v2, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 572
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[AppInstall] App Install Start"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/prompt/kiosk/utils/crypto/CryptoUtils;->isSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 575
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->composeAppInstallReq()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$100(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 576
    invoke-static {v2, v1, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$200(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->parseResponse(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 585
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[AppInstall] Exception parsing AppInstall response : "

    invoke-static {v2, v3, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 591
    iget-boolean v0, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;->result:Z

    .line 593
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;->resultCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 595
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$400(Lcom/prompt/kiosk/slauncher/EmmConnection;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
