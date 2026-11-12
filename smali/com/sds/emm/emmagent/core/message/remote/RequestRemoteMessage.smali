.class public interface abstract Lcom/sds/emm/emmagent/core/message/remote/RequestRemoteMessage;
.super Ljava/lang/Object;
.source "RequestRemoteMessage.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/message/remote/RemoteMessage;


# virtual methods
.method public abstract getData()Lcom/sds/emm/emmagent/core/actionentity/base/Entity;
.end method

.method public abstract getResult()Ljava/lang/String;
.end method

.method public abstract makeBody(Ljava/lang/String;Lcom/sds/emm/emmagent/core/actionentity/base/Entity;)V
.end method

.method public abstract makeMessage(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;Ljava/lang/String;Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
