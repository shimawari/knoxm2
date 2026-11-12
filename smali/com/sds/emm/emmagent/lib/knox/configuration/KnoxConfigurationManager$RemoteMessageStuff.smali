.class public final Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;
.super Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;
.source "KnoxConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteMessageStuff"
.end annotation


# instance fields
.field private commandEntity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RemoteCommand"
    .end annotation
.end field

.field private messsage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequestId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/actionentity/base/AbstractEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommandCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->commandEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getMesssage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->messsage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommandCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->commandEntity:Ljava/lang/String;

    return-void
.end method

.method public setMesssage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->messsage:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sds/emm/emmagent/lib/knox/configuration/KnoxConfigurationManager$RemoteMessageStuff;->requestId:Ljava/lang/String;

    return-void
.end method
