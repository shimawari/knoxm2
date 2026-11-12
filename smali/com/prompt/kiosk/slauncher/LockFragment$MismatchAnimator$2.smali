.class Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;
.super Ljava/lang/Object;
.source "LockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;->val$this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 90
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$200(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;->this$1:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 91
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$300(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
