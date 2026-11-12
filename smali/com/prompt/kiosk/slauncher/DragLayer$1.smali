.class Lcom/prompt/kiosk/slauncher/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragLayer;->animateViewIntoPosition(Lcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$1;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DragLayer$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
