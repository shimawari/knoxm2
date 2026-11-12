.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;)V
    .locals 0

    .line 2614
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method area()I
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method
