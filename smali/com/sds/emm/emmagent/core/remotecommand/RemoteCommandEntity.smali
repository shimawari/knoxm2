.class public interface abstract Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;
.super Ljava/lang/Object;
.source "RemoteCommandEntity.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/Entity;


# virtual methods
.method public abstract getRequestBodyCls()Ljava/lang/Class;
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

.method public abstract getResponesBodyCls()Ljava/lang/Class;
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
