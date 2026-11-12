.class public final Lcom/sds/emm/emmagent/lib/content/ContentManager;
.super Lcom/sds/emm/emmagent/lib/AbstractManager;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sds/emm/emmagent/lib/content/ContentManager$Singleton;
    }
.end annotation


# static fields
.field public static final CATEGORY_INI:Ljava/lang/String; = "INI"

.field public static final CATEGORY_KIOSK:Ljava/lang/String; = "KioskScreenSaver"

.field public static final RESOURCE_TYPE_IMAGE:Ljava/lang/String; = "Image"

.field public static final RESOURCE_TYPE_VIDEO:Ljava/lang/String; = "Video"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/AbstractManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sds/emm/emmagent/lib/content/ContentManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sds/emm/emmagent/lib/content/ContentManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sds/emm/emmagent/lib/content/ContentManager;
    .locals 1

    .line 48
    invoke-static {}, Lcom/sds/emm/emmagent/lib/content/ContentManager$Singleton;->-$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :try_start_0
    sget-object v1, Lcom/sds/emm/emmagent/lib/content/ContentManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v1, p1}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->getContentList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ArrayData"

    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public requestUpdateContents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;
        }
    .end annotation

    .line 68
    :try_start_0
    sget-object v0, Lcom/sds/emm/emmagent/lib/content/ContentManager;->agentBridge:Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;

    invoke-interface {v0}, Lcom/sds/emm/emmagent/core/api/IEMMAgentAPI;->requestUpdateContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimitiveData"

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->checkAPIResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
