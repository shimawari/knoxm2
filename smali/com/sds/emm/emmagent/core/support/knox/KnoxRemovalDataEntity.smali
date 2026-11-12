.class public Lcom/sds/emm/emmagent/core/support/knox/KnoxRemovalDataEntity;
.super Ljava/lang/Object;
.source "KnoxRemovalDataEntity.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/knox/KnoxDataEntity;


# static fields
.field private static final FIELD_COUNT:I = 0x1

.field public static final SPECIFIER:Ljava/lang/String; = "R"


# instance fields
.field private encryptedUnenrollCodeHash:Ljava/lang/String;
    .annotation runtime Lcom/sds/emm/emmagent/core/support/knox/KnoxDataFieldType;
        length = 0x0
        priority = 0x0
        shortenId = "A"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedUnenrollCodeHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxRemovalDataEntity;->encryptedUnenrollCodeHash:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSpecifier()Ljava/lang/String;
    .locals 1

    const-string v0, "R"

    return-object v0
.end method

.method public setEncryptedUnenrollCodeHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxRemovalDataEntity;->encryptedUnenrollCodeHash:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnoxRemovalDataEntity{encryptedUnenrollCodeHash=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/knox/KnoxRemovalDataEntity;->encryptedUnenrollCodeHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
