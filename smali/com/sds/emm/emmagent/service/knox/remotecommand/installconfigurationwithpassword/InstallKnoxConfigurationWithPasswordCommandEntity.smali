.class public Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;
.super Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;
.source "InstallKnoxConfigurationWithPasswordCommandEntity.java"


# annotations
.annotation runtime Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;
    code = "InstallKnoxConfigurationWithPassword"
.end annotation


# instance fields
.field private knoxConfigurationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxConfigurationId"
    .end annotation
.end field

.field private knoxConfigurationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxConfigurationType"
    .end annotation
.end field

.field private knoxContainerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxContainerId"
    .end annotation
.end field

.field private userCertPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserCertPassword"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getKnoxConfigurationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxConfigurationId:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxConfigurationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxConfigurationType:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCertPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->userCertPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setKnoxConfigurationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxConfigurationId:Ljava/lang/String;

    return-void
.end method

.method public setKnoxConfigurationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxConfigurationType:Ljava/lang/String;

    return-void
.end method

.method public setKnoxContainerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->knoxContainerId:Ljava/lang/String;

    return-void
.end method

.method public setUserCertPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/service/knox/remotecommand/installconfigurationwithpassword/InstallKnoxConfigurationWithPasswordCommandEntity;->userCertPassword:Ljava/lang/String;

    return-void
.end method
