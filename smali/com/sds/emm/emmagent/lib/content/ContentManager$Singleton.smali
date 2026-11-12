.class final Lcom/sds/emm/emmagent/lib/content/ContentManager$Singleton;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/content/ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static INSTANCE:Lcom/sds/emm/emmagent/lib/content/ContentManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/content/ContentManager;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/content/ContentManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/content/ContentManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/sds/emm/emmagent/lib/content/ContentManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sds/emm/emmagent/lib/content/ContentManager;-><init>(Lcom/sds/emm/emmagent/lib/content/ContentManager-IA;)V

    sput-object v0, Lcom/sds/emm/emmagent/lib/content/ContentManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/content/ContentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
