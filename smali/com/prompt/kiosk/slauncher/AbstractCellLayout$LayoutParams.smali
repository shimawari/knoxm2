.class public Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field public isLockedToGrid:Z

.field private mTag:Ljava/lang/Object;

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1039
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    .line 1059
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1043
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;)V
    .locals 1

    .line 1051
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    .line 1052
    iget v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    .line 1053
    iget v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    .line 1054
    iget v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    .line 1055
    iget p1, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1122
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1114
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 1118
    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1110
    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    return-void
.end method

.method public setup(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1067
    invoke-virtual/range {v0 .. v6}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->setup(IIIIII)V

    return-void
.end method

.method public setup(IIIIII)V
    .locals 3

    iget-boolean p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p5, :cond_4

    iget p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    :goto_1
    mul-int v2, p5, p1

    add-int/lit8 p5, p5, -0x1

    mul-int/2addr p5, p3

    add-int/2addr v2, p5

    .line 1077
    iget p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, p5

    iget p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, p5

    iput v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    mul-int p5, p6, p2

    add-int/lit8 p6, p6, -0x1

    mul-int/2addr p6, p4

    add-int/2addr p5, p6

    .line 1078
    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p5, p6

    iput p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    const/4 p5, 0x0

    if-gez p3, :cond_2

    .line 1082
    iget p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    add-int/2addr p6, p3

    iput p6, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->width:I

    neg-int p6, p3

    .line 1083
    div-int/lit8 p6, p6, 0x2

    goto :goto_2

    :cond_2
    move p6, p5

    :goto_2
    if-gez p4, :cond_3

    .line 1086
    iget p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    add-int/2addr p5, p4

    iput p5, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->height:I

    neg-int p5, p4

    .line 1087
    div-int/lit8 p5, p5, 0x2

    :cond_3
    add-int/2addr p1, p3

    mul-int/2addr v1, p1

    .line 1090
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    add-int/2addr v1, p6

    iput v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    add-int/2addr p2, p4

    mul-int/2addr v0, p2

    .line 1091
    iget p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->useTmpCoords:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isDragging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->dropped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->canReorder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
