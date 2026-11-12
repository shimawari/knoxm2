.class public abstract Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;
.super Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.source "AbstractRemoteMessage.java"

# interfaces
.implements Lcom/sds/emm/emmagent/core/message/remote/RemoteMessage;


# static fields
.field protected static final FIELD_BODY:Ljava/lang/String; = "Body"

.field protected static final FIELD_BODY_COMMAND:Ljava/lang/String; = "Command"

.field protected static final FIELD_BODY_COMMAND_CODE:Ljava/lang/String; = "Code"

.field protected static final FIELD_BODY_COMMAND_PARAMETERS:Ljava/lang/String; = "Parameters"

.field protected static final FIELD_BODY_DATA:Ljava/lang/String; = "Data"

.field protected static final FIELD_BODY_RESULT:Ljava/lang/String; = "Result"

.field protected static final FIELD_BODY_RESULT_CODE:Ljava/lang/String; = "Code"

.field protected static final FIELD_BODY_RESULT_PARAMETERS:Ljava/lang/String; = "Parameters"

.field protected static final FIELD_HEADER:Ljava/lang/String; = "Header"

.field protected static final ROOT_ELEMENT:Ljava/lang/String; = "EMM"


# instance fields
.field protected command:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Body"
    .end annotation
.end field

.field protected transient messageAnnotation:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->getMessageAnnotation()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    return-void
.end method

.method private getMessageAnnotation()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->messageAnnotation:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->messageAnnotation:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/sds/emm/emmagent/core/message/server/MessageVersionNotDefinedException;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/core/message/server/MessageVersionNotDefinedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->messageAnnotation:Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    return-object v0
.end method


# virtual methods
.method public getCommand()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->command:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;

    return-object v0
.end method

.method public getMessageVersion()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->getMessageAnnotation()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;

    move-result-object v0

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageType;->version()Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/core/message/remote/format/AbstractRemoteMessage;->command:Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;

    return-void
.end method
