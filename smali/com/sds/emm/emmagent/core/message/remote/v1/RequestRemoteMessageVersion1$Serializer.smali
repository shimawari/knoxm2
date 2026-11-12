.class public Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1$Serializer;
.super Ljava/lang/Object;
.source "RequestRemoteMessageVersion1.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 6

    .line 108
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 110
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getHeader()Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageHeaderVersion1Entity;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "Header"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 114
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getCommand()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;

    move-result-object v2

    const-string v3, "Code"

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getCommand()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;

    move-result-object v5

    invoke-interface {v5}, Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getCommand()Lcom/sds/emm/emmagent/core/remotecommand/RemoteCommandEntity;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v5, "Parameters"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v4, "Command"

    .line 122
    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getResult()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Result"

    .line 130
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getData()Lcom/sds/emm/emmagent/core/actionentity/base/Entity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;->getData()Lcom/sds/emm/emmagent/core/actionentity/base/Entity;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string p3, "Data"

    invoke-virtual {v1, p3, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2
    const-string p1, "Body"

    .line 137
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "EMM"

    .line 139
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 104
    check-cast p1, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1$Serializer;->serialize(Lcom/sds/emm/emmagent/core/message/remote/v1/RequestRemoteMessageVersion1;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
