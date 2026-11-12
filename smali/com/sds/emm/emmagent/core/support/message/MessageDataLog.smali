.class public interface abstract Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;
.super Ljava/lang/Object;
.source "MessageDataLog.java"


# virtual methods
.method public abstract onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
