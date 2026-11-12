.class Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$1;
.super Ljava/lang/Object;
.source "KnoxConfigurationManager.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;


# direct methods
.method constructor <init>(Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$1;->this$0:Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 74
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 71
    check-cast p1, Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$1;->serialize(Lcom/sds/emm/emmagent/core/message/remote/RemoteMessageVersion;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
