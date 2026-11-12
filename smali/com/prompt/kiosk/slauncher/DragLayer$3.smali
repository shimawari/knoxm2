.class Lcom/prompt/kiosk/slauncher/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragLayer;->animateView(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragLayer;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$animationEndStyle:I

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$view:Landroid/view/View;

    .line 566
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 569
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$animationEndStyle:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 576
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$300(Lcom/prompt/kiosk/slauncher/DragLayer;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 573
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->clearAnimatedView()V

    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer$3;->val$view:Landroid/view/View;

    .line 581
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->clearUserAnimationView(Landroid/view/View;)V

    return-void
.end method
