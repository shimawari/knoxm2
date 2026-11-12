.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

.field final synthetic val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;->val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 189
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 192
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$2;->val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
