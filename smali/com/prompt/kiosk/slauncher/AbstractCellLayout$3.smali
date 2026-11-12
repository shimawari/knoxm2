.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;->val$child:Landroid/view/View;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$3;->val$child:Landroid/view/View;

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
