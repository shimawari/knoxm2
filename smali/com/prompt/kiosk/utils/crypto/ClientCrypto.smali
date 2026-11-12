.class public abstract Lcom/prompt/kiosk/utils/crypto/ClientCrypto;
.super Ljava/lang/Object;
.source "ClientCrypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decrypt(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/message/MessageData;
.end method

.method public abstract encrypt(Ljava/lang/String;)Ljava/lang/String;
.end method
