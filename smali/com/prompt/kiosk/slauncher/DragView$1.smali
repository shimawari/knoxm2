.class Lcom/prompt/kiosk/slauncher/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragView;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragView;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$offsetX:F

    iput p3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$offsetY:F

    iput p4, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$initialScale:F

    iput p5, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$scale:F

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$offsetX:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 95
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/DragView;->access$000(Lcom/prompt/kiosk/slauncher/DragView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$offsetY:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 96
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/DragView;->access$100(Lcom/prompt/kiosk/slauncher/DragView;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    int-to-float v1, v1

    .line 98
    invoke-static {v3, v1}, Lcom/prompt/kiosk/slauncher/DragView;->access$016(Lcom/prompt/kiosk/slauncher/DragView;F)F

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    int-to-float v2, v2

    .line 99
    invoke-static {v3, v2}, Lcom/prompt/kiosk/slauncher/DragView;->access$116(Lcom/prompt/kiosk/slauncher/DragView;F)F

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$scale:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 100
    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DragView;->setScaleX(F)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->val$scale:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 101
    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DragView;->setScaleY(F)V

    .line 102
    invoke-static {}, Lcom/prompt/kiosk/slauncher/DragView;->access$200()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 103
    invoke-static {}, Lcom/prompt/kiosk/slauncher/DragView;->access$200()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/prompt/kiosk/slauncher/DragView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 106
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 109
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/DragView;->getTranslationX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView$1;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 110
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/DragView;->getTranslationY()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/DragView;->setTranslationY(F)V

    :goto_0
    return-void
.end method
