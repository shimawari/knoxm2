.class public Lcom/sds/emm/emmagent/core/api/SSOFileEntity;
.super Ljava/lang/Object;
.source "SSOFileEntity.java"


# instance fields
.field private fileData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FileData"
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FileName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/api/SSOFileEntity;->fileData:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/api/SSOFileEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setFileData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/api/SSOFileEntity;->fileData:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/api/SSOFileEntity;->fileName:Ljava/lang/String;

    return-void
.end method
