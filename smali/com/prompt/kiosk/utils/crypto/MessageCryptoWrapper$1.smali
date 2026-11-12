.class Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper$1;
.super Ljava/lang/Object;
.source "MessageCryptoWrapper.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/support/message/MessageDataLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->checkMessageFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper$1;->this$0:Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionFailed(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-static {}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onEncryptionFailed"

    invoke-static {p1, p2, p4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEncryptionSucceeded(Lcom/sds/emm/emmagent/core/support/message/EncryptionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageExceptionOccurred(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 80
    invoke-static {}, Lcom/prompt/kiosk/utils/crypto/MessageCryptoWrapper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMessageExceptionOccurred"

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
