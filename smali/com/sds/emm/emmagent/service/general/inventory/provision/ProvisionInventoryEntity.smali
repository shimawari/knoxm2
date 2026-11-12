.class public Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;
.super Ljava/lang/Object;
.source "ProvisionInventoryEntity.java"


# instance fields
.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceId"
    .end annotation
.end field

.field private serverPublicKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PublicKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;->serverPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setServerPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/provision/ProvisionInventoryEntity;->serverPublicKey:Ljava/lang/String;

    return-void
.end method
