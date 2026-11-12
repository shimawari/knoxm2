.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$lp:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$child:Landroid/view/View;

    .line 2237
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$lp:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    const/4 v0, 0x1

    .line 2244
    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$child:Landroid/view/View;

    .line 2245
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2247
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$500(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$lp:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2248
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$500(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$6;->val$lp:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
