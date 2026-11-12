.class public Lcom/prompt/kiosk/slauncher/EmmAppInfo;
.super Ljava/lang/Object;
.source "EmmAppInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmmAppInfo"


# instance fields
.field appId:Ljava/lang/String;

.field categoryId:Ljava/lang/String;

.field categoryName:Ljava/lang/String;

.field crc:Ljava/lang/String;

.field description:Ljava/lang/String;

.field enabled:Ljava/lang/String;

.field isAutoUpdate:Ljava/lang/String;

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field platform:Ljava/lang/String;

.field serviceEndDate:Ljava/lang/String;

.field serviceStartDate:Ljava/lang/String;

.field type:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/EmmAppInfo;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->name:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->type:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->description:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->platform:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->platform:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->version:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->packageName:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryId:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryName:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isAutoUpdate:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isAutoUpdate:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->enabled:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->enabled:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceStartDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceStartDate:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceEndDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceEndDate:Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->crc:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->crc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    .line 46
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->enabled:Ljava/lang/String;

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method readFromJson(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    sget-boolean v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->TAG:Ljava/lang/String;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFromJson: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "Name"

    .line 53
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->name:Ljava/lang/String;

    const-string v2, "Type"

    .line 54
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->type:Ljava/lang/String;

    const-string v2, "Description"

    .line 55
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->description:Ljava/lang/String;

    const-string v2, "Platform"

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->platform:Ljava/lang/String;

    const-string v2, "Version"

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->version:Ljava/lang/String;

    const-string v2, "PackageName"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->packageName:Ljava/lang/String;

    const-string v2, "CategoryId"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryId:Ljava/lang/String;

    const-string v2, "CategoryName"

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryName:Ljava/lang/String;

    const-string v2, "IsAutoUpdate"

    .line 61
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isAutoUpdate:Ljava/lang/String;

    const-string v2, "Enabled"

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->enabled:Ljava/lang/String;

    const-string v2, "ServiceStartDate"

    .line 63
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceStartDate:Ljava/lang/String;

    const-string v2, "ServiceEndDate"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceEndDate:Ljava/lang/String;

    const-string v2, "CRC"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->crc:Ljava/lang/String;

    .line 67
    sget-boolean v1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->TAG:Ljava/lang/String;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->type:Ljava/lang/String;

    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->description:Ljava/lang/String;

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->platform:Ljava/lang/String;

    iget-object v8, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->version:Ljava/lang/String;

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryId:Ljava/lang/String;

    iget-object v11, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->categoryName:Ljava/lang/String;

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isAutoUpdate:Ljava/lang/String;

    iget-object v13, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->enabled:Ljava/lang/String;

    iget-object v14, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceStartDate:Ljava/lang/String;

    iget-object v15, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->serviceEndDate:Ljava/lang/String;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->crc:Ljava/lang/String;

    move-object/from16 v16, v3

    filled-new-array/range {v4 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "name: %s%ntype: %s%ndescription: %s%nplatform: %s%nversion: %s%npackageName: %s%ncategoryId: %s%ncategoryName: %s%nisAutoUpdate: %s%nenabled: %s%nserviceStartDate: %s%nserviceEndDate: %s%ncrc: %s"

    .line 69
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public readFromJson(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->appId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->readFromJson(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->TAG:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No app info for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-boolean p2, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz p2, :cond_1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "readFromJson list: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
