.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 2706
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2707
    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaX:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2708
    iget v2, v2, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    iget v3, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaY:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2709
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2710
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2711
    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initScale:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2712
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2713
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
