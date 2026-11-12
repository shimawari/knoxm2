.class public Lcom/sds/emm/emmagent/core/message/server/MessageVersionNotDefinedException;
.super Ljava/lang/RuntimeException;
.source "MessageVersionNotDefinedException.java"


# static fields
.field private static final serialVersionUID:J = 0x62f1c1f673eed736L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MessageVersionNotMatchException"

    return-object v0
.end method
