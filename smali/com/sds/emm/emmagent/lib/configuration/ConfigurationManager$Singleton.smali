.class final Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager$Singleton;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;-><init>(Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager-IA;)V

    sput-object v0, Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/configuration/ConfigurationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
