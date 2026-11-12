.class public Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;
.super Ljava/lang/Object;
.source "AgentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/core/support/AgentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgentUpdateEntity"
.end annotation


# instance fields
.field private final appId:Ljava/lang/String;

.field private build:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private major:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private minor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->appId:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    const/4 p1, 0x2

    .line 55
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->major:Ljava/lang/String;

    const/4 v0, 0x4

    .line 56
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->minor:Ljava/lang/String;

    const/4 p1, 0x6

    .line 57
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->build:Ljava/lang/String;

    .line 58
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->manufacturer:Ljava/lang/String;

    .line 59
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->key:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->major:Ljava/lang/String;

    const/4 v0, 0x3

    .line 62
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->minor:Ljava/lang/String;

    const/4 p1, 0x5

    .line 63
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->build:Ljava/lang/String;

    const/4 v0, 0x7

    .line 64
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->manufacturer:Ljava/lang/String;

    .line 65
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->key:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->major:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMinor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->minor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->major:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->minor:Ljava/lang/String;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->build:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AppId] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->appId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", [VersionCode] "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->major:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->minor:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->build:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->manufacturer:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/AgentUpdateService$AgentUpdateEntity;->key:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
