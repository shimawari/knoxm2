.class public Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersionNotMatchException;
.super Ljava/lang/RuntimeException;
.source "RemoteMessageVersionNotMatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x24cd4782ae94d246L


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

    const-string v0, "RemoteMessageVersionNotMatchException"

    return-object v0
.end method
