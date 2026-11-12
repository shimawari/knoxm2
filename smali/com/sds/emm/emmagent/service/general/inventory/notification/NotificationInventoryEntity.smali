.class public Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;
.super Ljava/lang/Object;
.source "NotificationInventoryEntity.java"


# instance fields
.field private ongoingPolicyNotificaiton:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OngoingPolicyNotification"
    .end annotation
.end field

.field private showEventOffNotification:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShowEventOffNotification"
    .end annotation
.end field

.field private showEventOnNotification:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShowEventOnNotification"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOnNotification:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOffNotification:Z

    iput-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->ongoingPolicyNotificaiton:Z

    return-void
.end method


# virtual methods
.method public isOngoingPolicyNotificaiton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->ongoingPolicyNotificaiton:Z

    return v0
.end method

.method public isShowEventOffNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOffNotification:Z

    return v0
.end method

.method public isShowEventOnNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOnNotification:Z

    return v0
.end method

.method public setOngoingPolicyNotificaiton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->ongoingPolicyNotificaiton:Z

    return-void
.end method

.method public setShowEventOffNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOffNotification:Z

    return-void
.end method

.method public setShowEventOnNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sds/emm/emmagent/service/general/inventory/notification/NotificationInventoryEntity;->showEventOnNotification:Z

    return-void
.end method
