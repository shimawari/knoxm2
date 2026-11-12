.class Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;-><init>(JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator$1;->this$0:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 54
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator$1;->this$0:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    .line 57
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->access$002(Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;I)I

    return-void
.end method
