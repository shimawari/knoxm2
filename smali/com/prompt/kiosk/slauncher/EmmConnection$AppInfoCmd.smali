.class Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;
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
    name = "AppInfoCmd"
.end annotation


# instance fields
.field private mIdList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/util/Collection;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->mIdList:Ljava/util/Collection;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    return-void
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->mListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    return-object p0
.end method

.method private composeAppInfoReq()Lorg/json/JSONObject;
    .locals 6

    .line 450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 452
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Header"

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 454
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$500(Lcom/prompt/kiosk/slauncher/EmmConnection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    const-string v4, "AppListRequest"

    .line 457
    invoke-static {v3, v4}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$600(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Parameters"

    .line 458
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->composeParameters()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "Command"

    .line 459
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Body"

    .line 461
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "EMM"

    .line 463
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 465
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 467
    :goto_0
    sget-boolean v1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v1, :cond_0

    .line 468
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppInfo] Req : "

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

.method private composeParameters()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 474
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->mIdList:Ljava/util/Collection;

    .line 476
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 477
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "AppIdList"

    .line 479
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private parseAppInfo(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Command"

    .line 516
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Code"

    const/4 v2, 0x0

    .line 517
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Result"

    .line 518
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 519
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    if-eqz v0, :cond_6

    const-string v4, "AppListResponse"

    .line 521
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_4

    const-string v0, "0000000"

    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 535
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Data"

    .line 536
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 537
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 538
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 540
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 542
    new-instance v5, Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    invoke-direct {v5, v4, v2}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 543
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 529
    :cond_4
    :goto_2
    sget-boolean p1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz p1, :cond_5

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[AppInfo] parseAppInfo fail. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :cond_5
    return-object v2

    .line 522
    :cond_6
    :goto_3
    sget-boolean p1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz p1, :cond_7

    .line 523
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "[AppInfo] parseAppInfo fail. ("

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getEMMErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :cond_7
    return-object v2
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 489
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "EMM"

    .line 490
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Body"

    .line 491
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 493
    sget-boolean v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sDev:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "{\"EMM\":{\"Header\":{\"TenantId\":\"EMM\",\"Version\":\"1\",\"DeviceId\":\"c0c5c5ea97494c48aeeed19c942b043a\",\"ServerId\":\"\",\"RequestId\":\"b37c0245a1f340b88772bbfcc53362e6\",\"SendTime\":\"1439431129\",\"ReceiveTime\":\"\",\"SenderName\":\"42666db3c2154e93b223a639bb1b4975\",\"ErrorCode\":\"\",\"Platform\":\"A\"},\"Body\":{\"Command\":{\"Code\":\"AppListResponse\"},\"Result\":{\"Code\":\"0000000\"},\"Data\":[{\"VG2ZIaEQIYGERw780eGKTNJ0UVKfrve+Xzm+T4EbkjEa44\":{\"Name\":\"AppVerificationTest\",\"Type\":\"IA\",\"Description\":\"AppVerificationTest\",\"Platform\":\"A\",\"Version\":\"1\",\"PackageName\":\"com.nemustech.games.sokoban\",\"CategoryId\":\"default\",\"CategoryName\":\"Common\",\"IsAutoUpdate\":\"False\",\"Enabled\":\"False\",\"ServiceStartDate\":\"2015-08-04\",\"ServiceEndDate\":\"2016-08-04\",\"CRC\":\"41835496bf4af8f4f5a00130498793e57e8a975ad8f50f5e2aab76a2282d3cf5\"}},{\"tj5LuJgvpao0nj0TEjhBjib2Dn5MTxdKEg1fJ2IXOkGqrQ\":{\"Name\":\"Information Lord\",\"Type\":\"PA\",\"Description\":\"public app\",\"Platform\":\"A\",\"Version\":\"12.99\",\"PackageName\":\"com.information.lord\",\"CategoryId\":\"default\",\"CategoryName\":\"Common\",\"IsAutoUpdate\":\"False\",\"Enabled\":\"True\",\"ServiceStartDate\":\"2015-08-05\",\"ServiceEndDate\":\"2016-08-05\",\"CRC\":\"07aa968db12cfc40a267dd5a9883eb10642a6bd5d1bd8a7a78ca4a7a285fd836\"}}]}}}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 503
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 508
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->parseAppInfo(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 417
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[AppInfo] App Information Update Start"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/prompt/kiosk/utils/crypto/CryptoUtils;->isSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 420
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->composeAppInfoReq()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$100(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 421
    invoke-static {v2, v1, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$200(Lcom/prompt/kiosk/slauncher/EmmConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->parseResponse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 430
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[AppInfo] Exception parsing AppInstall response : "

    invoke-static {v2, v3, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->this$0:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 437
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection;->access$400(Lcom/prompt/kiosk/slauncher/EmmConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
