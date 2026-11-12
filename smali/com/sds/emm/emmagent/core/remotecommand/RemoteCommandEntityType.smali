.class public interface abstract annotation Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;
.super Ljava/lang/Object;
.source "RemoteCommandEntityType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntityType;
        requestBodyCls = Lcom/sds/emm/emmagent/core/remotecommand/RequestRemoteMessageDataEntity;
        responseBodyCls = Lcom/sds/emm/emmagent/core/remotecommand/ResponseRemoteMessageDataEntity;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract code()Ljava/lang/String;
.end method

.method public abstract requestBodyCls()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sds/emm/emmagent/core/actionentity/base/Entity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract responseBodyCls()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sds/emm/emmagent/core/actionentity/base/Entity;",
            ">;"
        }
    .end annotation
.end method
