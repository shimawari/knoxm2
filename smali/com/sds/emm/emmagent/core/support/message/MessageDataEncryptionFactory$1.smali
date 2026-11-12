.class Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory$1;
.super Ljava/lang/Object;
.source "MessageDataEncryptionFactory.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;-><init>(Lcom/sds/emm/emmagent/core/support/message/Target;Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;


# direct methods
.method constructor <init>(Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory$1;->this$0:Lcom/sds/emm/emmagent/core/support/message/MessageDataEncryptionFactory;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
