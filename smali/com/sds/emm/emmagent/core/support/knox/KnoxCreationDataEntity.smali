.class public Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;
.super Ljava/lang/Object;
.source "KnoxCreationDataEntity.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/knox/KnoxDataEntity;


# static fields
.field private static final FIELD_COUNT:I = 0xc

.field public static final KNOX_TYPE_BYOD:Ljava/lang/String; = "B"

.field public static final KNOX_TYPE_CL:Ljava/lang/String; = "L"

.field public static final KNOX_TYPE_COM:Ljava/lang/String; = "C"

.field public static final KNOX_TYPE_COMP:Ljava/lang/String; = "O"

.field public static final KNOX_TYPE_PO:Ljava/lang/String; = "P"

.field public static final SERVICE_MODE_AE:Ljava/lang/String; = "A"

.field public static final SERVICE_MODE_LEGACY:Ljava/lang/String; = "L"

.field public static final SPECIFIER:Ljava/lang/String; = "E"

.field public static final TENANT_TYPE_MULTI:Ljava/lang/String; = "M"

.field public static final TENANT_TYPE_SINGLE:Ljava/lang/String; = "S"


# instance fields
.field private advancedLicense:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasAdvancedLicense"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x1
        priority = 0xa
        shortenId = "K"
    .end annotation
.end field

.field private knoxContainerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxContainerId"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x20
        priority = 0x5
        shortenId = "F"
    .end annotation
.end field

.field private knoxName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxName"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x7
        shortenId = "H"
    .end annotation
.end field

.field private knoxType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KnoxType"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x1
        priority = 0x6
        shortenId = "G"
    .end annotation
.end field

.field private messageVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MessageVersion"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x1
        priority = 0x9
        shortenId = "J"
    .end annotation
.end field

.field private mobileId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileId"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x3
        shortenId = "D"
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ServerUrl"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x4
        shortenId = "E"
    .end annotation
.end field

.field private serviceMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ServiceMode"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x1
        priority = 0xb
        shortenId = "L"
    .end annotation
.end field

.field private tenantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenantId"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x0
        shortenId = "A"
    .end annotation
.end field

.field private tenantType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenantType"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x1
        priority = 0x1
        shortenId = "B"
    .end annotation
.end field

.field private unenrollCodeHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnenrollCodeHash"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x8
        shortenId = "I"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserId"
    .end annotation

    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x2
        shortenId = "C"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getKnoxContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxName:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->messageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->mobileId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecifier()Ljava/lang/String;
    .locals 1

    const-string v0, "E"

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnenrollCodeHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->unenrollCodeHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setKnoxContainerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxContainerId:Ljava/lang/String;

    return-void
.end method

.method public setKnoxName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxName:Ljava/lang/String;

    return-void
.end method

.method public setKnoxType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxType:Ljava/lang/String;

    return-void
.end method

.method public setMessageVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->messageVersion:Ljava/lang/String;

    return-void
.end method

.method public setMobileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->mobileId:Ljava/lang/String;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantId:Ljava/lang/String;

    return-void
.end method

.method public setTenantType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantType:Ljava/lang/String;

    return-void
.end method

.method public setUnenrollCodeHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->unenrollCodeHash:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnoxDataEntity{tenantId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tenantType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->tenantType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mobileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->mobileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', serverUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', knoxContainerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', knoxType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', knoxName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->knoxName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', unenrollCodeHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->unenrollCodeHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', messageVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxCreationDataEntity;->messageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
