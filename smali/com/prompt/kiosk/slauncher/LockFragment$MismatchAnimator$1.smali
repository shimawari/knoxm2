.class Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;
.super Ljava/lang/Object;
.source "LockFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

.field final synthetic val$this$0:Lcom/prompt/kiosk/slauncher/LockFragment;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->val$this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 73
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->access$100(Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;)F

    move-result p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 76
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 77
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 78
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method
