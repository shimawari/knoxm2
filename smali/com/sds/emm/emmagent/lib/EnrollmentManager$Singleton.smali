.class final Lcom/sds/emm/emmagent/lib/EnrollmentManager$Singleton;
.super Ljava/lang/Object;
.source "EnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sds/emm/emmagent/lib/EnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sds/emm/emmagent/lib/EnrollmentManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sds/emm/emmagent/lib/EnrollmentManager;
    .locals 1

    sget-object v0, Lcom/sds/emm/emmagent/lib/EnrollmentManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;-><init>(Lcom/sds/emm/emmagent/lib/EnrollmentManager-IA;)V

    sput-object v0, Lcom/sds/emm/emmagent/lib/EnrollmentManager$Singleton;->INSTANCE:Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
