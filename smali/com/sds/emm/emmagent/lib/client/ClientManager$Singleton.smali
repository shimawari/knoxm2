.class Lcom/sds/emm/emmagent/lib/client/ClientManager$Singleton;
.super Ljava/lang/Object;
.source "ClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/client/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sds/emm/emmagent/lib/client/ClientManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/client/ClientManager;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/client/ClientManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/sds/emm/emmagent/lib/client/ClientManager;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/client/ClientManager;-><init>()V

    sput-object v0, Lcom/sds/emm/emmagent/lib/client/ClientManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/client/ClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
