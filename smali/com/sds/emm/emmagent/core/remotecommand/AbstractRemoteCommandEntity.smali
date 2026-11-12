.class public abstract Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;
.super Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.source "AbstractRemoteCommandEntity.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;


# instance fields
.field private transient commandEntityAnnotation:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;-><init>()V

    return-void
.end method

.method private getCommandEntityAnnotation()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->commandEntityAnnotation:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->commandEntityAnnotation:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    :cond_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->commandEntityAnnotation:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->getCommandEntityAnnotation()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    move-result-object v0

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;->code()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBodyCls()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sds/emm/emmagent/core/actionentity/base/Entity;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->getCommandEntityAnnotation()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    move-result-object v0

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;->requestBodyCls()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getResponesBodyCls()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sds/emm/emmagent/core/actionentity/base/Entity;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/remotecommand/AbstractRemoteCommandEntity;->getCommandEntityAnnotation()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;

    move-result-object v0

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;->responseBodyCls()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
