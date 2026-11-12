.class final Lcom/sds/emm/emmagent/lib/push/PushManager$Singleton;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/push/PushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sds/emm/emmagent/lib/push/PushManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/push/PushManager;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/push/PushManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/push/PushManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/sds/emm/emmagent/lib/push/PushManager;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/lib/push/PushManager;-><init>()V

    sput-object v0, Lcom/sds/emm/emmagent/lib/push/PushManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/push/PushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
