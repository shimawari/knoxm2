.class public abstract Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/Entity;


# instance fields
.field private transient entityAnnotation:Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEntityAnnotation()Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;->entityAnnotation:Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;->entityAnnotation:Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    :cond_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;->entityAnnotation:Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;->getEntityAnnotation()Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;

    move-result-object v0

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/actionentity/base/EntityType;->code()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
