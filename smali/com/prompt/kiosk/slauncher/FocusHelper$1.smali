.class Lcom/prompt/kiosk/slauncher/FocusHelper$1;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cellCountX:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FocusHelper$1;->val$cellCountX:I

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 581
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 582
    iget v0, p1, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v0, v1

    iget p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v0, p1

    .line 583
    iget p1, p2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr p1, v1

    iget p2, p2, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    add-int/2addr p1, p2

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 577
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/FocusHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
