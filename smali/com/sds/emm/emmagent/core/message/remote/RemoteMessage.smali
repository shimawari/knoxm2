.class public interface abstract Lcom/sds/emm/emmagent/core/message/remote/RemoteMessage;
.super Ljava/lang/Object;
.source "RemoteMessage.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/actionentity/base/Entity;


# virtual methods
.method public abstract getCommand()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;
.end method

.method public abstract getHeaderRequestId()Ljava/lang/String;
.end method

.method public abstract getMessageVersion()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
.end method

.method public abstract getReceiverSpecifier()Ljava/lang/String;
.end method
