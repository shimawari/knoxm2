.class public final Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
.super Ljava/lang/Object;
.source "EMMAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/EMMAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EMMRemoteContext"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private receiverContainer:Ljava/lang/String;

.field private receiverPackageName:Ljava/lang/String;

.field private receiverSpecifier:Ljava/lang/String;

.field private senderContainerId:Ljava/lang/String;

.field private senderPackageName:Ljava/lang/String;

.field private senderSpecifier:Ljava/lang/String;

.field private tenantId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverContainer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverContainer:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverSpecifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderSpecifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->tenantId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiverContainer(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverContainer:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiverPackageName(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiverSpecifier(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->receiverSpecifier:Ljava/lang/String;

    return-object p0
.end method

.method public setSenderContainerId(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderContainerId:Ljava/lang/String;

    return-object p0
.end method

.method public setSenderPackageName(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSenderSpecifier(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->senderSpecifier:Ljava/lang/String;

    return-object p0
.end method

.method public setTenantId(Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/EMMAgentManager$EMMRemoteContext;->tenantId:Ljava/lang/String;

    return-object p0
.end method
