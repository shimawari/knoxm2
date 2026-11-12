.class public final Lcom/sds/emm/emmagent/lib/message/MessageManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/message/MessageManager$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/message/MessageManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/message/MessageManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/message/MessageManager;
    .locals 1

    .line 34
    invoke-static {}, Lcom/sds/emm/emmagent/lib/message/MessageManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/message/MessageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recognizeResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    const-string v0, "Header"

    const-string v1, "EMM"

    .line 40
    sget-object v2, Lcom/sds/emm/emmagent/lib/message/MessageManager;->gson:Lcom/google/gson/Gson;

    const-class v3, Ljava/util/Map;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 45
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "ReceiverSpecifier"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "RequestId"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "Body"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "Command"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "Code"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Response"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    new-instance p2, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;

    invoke-direct {p2}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;-><init>()V

    .line 52
    invoke-virtual {p2, v1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setCommandCode(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, v0}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setRequestId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, p1}, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->setMesssage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    .line 58
    new-instance p2, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;

    invoke-direct {p2, p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
