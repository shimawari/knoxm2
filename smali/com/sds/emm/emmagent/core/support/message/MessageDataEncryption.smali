.class interface abstract Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryption;
.super Ljava/lang/Object;
.source "MessageDataEncryption.java"


# virtual methods
.method public abstract changeSpecForClient([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract decryptRecordMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/security/PrivateKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract getAlert([B)Lcom/sds/emm/emmagent/core/support/message/Alert;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract makeAlertRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/Alert;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract makeChangeSpecRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract makeChangeSpecResponse(Ljava/lang/String;Ljava/lang/String;[B)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method

.method public abstract makeRecordMessage(Ljava/lang/String;Ljava/lang/String;Lcom/sds/emm/emmagent/core/support/message/MessageData;Ljava/lang/String;Ljava/security/PublicKey;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/core/support/message/AlertException;
        }
    .end annotation
.end method
