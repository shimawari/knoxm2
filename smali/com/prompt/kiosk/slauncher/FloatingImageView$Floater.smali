.class Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;
.super Ljava/lang/Object;
.source "FloatingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FloatingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Floater"
.end annotation


# static fields
.field private static final FLOAT_FACTOR:F = 48.0f

.field private static final GUARD_FACTOR:F = 0.25f


# instance fields
.field Ax:F

.field Ay:F

.field Dx:F

.field Dy:F

.field Sx:F

.field Sy:F

.field maxDx:F

.field maxDy:F

.field maxSx:F

.field maxSy:F

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;


# direct methods
.method private constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingImageView;Lcom/prompt/kiosk/slauncher/FloatingImageView$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;-><init>(Lcom/prompt/kiosk/slauncher/FloatingImageView;)V

    return-void
.end method


# virtual methods
.method advance()V
    .locals 6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;

    .line 111
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;

    .line 113
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dx:F

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dx:F

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dy:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dy:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ax:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ay:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    iget v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxSx:F

    neg-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    neg-float v1, v4

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v4, v1

    if-gez v1, :cond_1

    iput v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    :cond_1
    :goto_0
    iget v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxSy:F

    neg-float v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    neg-float v1, v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    goto :goto_1

    :cond_2
    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    :cond_3
    :goto_1
    iget v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    add-float v3, v1, v0

    iget v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    neg-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    neg-float v1, v4

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    goto :goto_2

    :cond_4
    add-float/2addr v1, v0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_5

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    :cond_5
    :goto_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    add-float v1, v0, v2

    iget v3, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDy:F

    neg-float v4, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    neg-float v0, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    goto :goto_3

    :cond_6
    add-float/2addr v0, v2

    cmpg-float v0, v3, v0

    if-gez v0, :cond_7

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    .line 142
    :cond_7
    :goto_3
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dx:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    const/high16 v3, 0x42400000    # 48.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ax:F

    .line 143
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v4, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDy:F

    mul-float/2addr v0, v4

    iget v5, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dy:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ay:F

    return-void
.end method

.method setup(FF)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;

    .line 96
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->this$0:Lcom/prompt/kiosk/slauncher/FloatingImageView;

    .line 97
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    div-float/2addr p2, v0

    iput p2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDy:F

    iget p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxSx:F

    div-float/2addr p2, v1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxSy:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dx:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Dy:F

    .line 103
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    mul-float/2addr p1, p2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sx:F

    .line 104
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDy:F

    mul-float/2addr p1, v2

    div-float/2addr v2, v0

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Sy:F

    .line 105
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDx:F

    mul-float/2addr p1, v2

    div-float/2addr v2, v0

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ax:F

    .line 106
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingImageView;->access$100()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->maxDy:F

    mul-float/2addr p1, v2

    div-float/2addr v2, v0

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FloatingImageView$Floater;->Ay:F

    return-void
.end method
