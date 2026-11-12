.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 2628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->x:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->y:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanX:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$CellAndSpan;->spanY:I

    return-void
.end method
