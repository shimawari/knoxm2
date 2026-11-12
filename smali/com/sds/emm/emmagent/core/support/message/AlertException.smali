.class public Lcom/sds/emm/emmagent/core/support/message/AlertException;
.super Ljava/lang/Exception;
.source "AlertException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/sds/emm/emmagent/core/support/message/Alert;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    iput-object p2, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getAlert()Lcom/sds/emm/emmagent/core/support/message/Alert;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlertException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    if-eqz v1, :cond_0

    const-string v1, "Alert: "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->alert:Lcom/sds/emm/emmagent/core/support/message/Alert;

    .line 31
    invoke-virtual {v1}, Lcom/sds/emm/emmagent/core/support/message/Alert;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string v1, ", InnerException: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/message/AlertException;->exception:Ljava/lang/Throwable;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
