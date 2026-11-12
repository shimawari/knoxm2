.class Lcom/prompt/kiosk/slauncher/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragLayer;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 625
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$000(Lcom/prompt/kiosk/slauncher/DragLayer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 626
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$000(Lcom/prompt/kiosk/slauncher/DragLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 627
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$400(Lcom/prompt/kiosk/slauncher/DragLayer;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$400(Lcom/prompt/kiosk/slauncher/DragLayer;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 628
    invoke-static {v6}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$400(Lcom/prompt/kiosk/slauncher/DragLayer;)[I

    move-result-object v6

    aget v3, v6, v3

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$4;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$400(Lcom/prompt/kiosk/slauncher/DragLayer;)[I

    move-result-object p1

    aget p1, p1, v5

    add-int/2addr p1, v0

    .line 627
    invoke-virtual {v1, v2, v4, v3, p1}, Lcom/prompt/kiosk/slauncher/DragLayer;->invalidate(IIII)V

    return-void
.end method
