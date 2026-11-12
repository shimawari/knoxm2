.class Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragController;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 752
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragController;->access$000(Lcom/prompt/kiosk/slauncher/DragController;)Lcom/prompt/kiosk/slauncher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 754
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragController;->access$000(Lcom/prompt/kiosk/slauncher/DragController;)Lcom/prompt/kiosk/slauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/DragScroller;->scrollLeft()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 756
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragController;->access$000(Lcom/prompt/kiosk/slauncher/DragController;)Lcom/prompt/kiosk/slauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/DragScroller;->scrollRight()V

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    const/4 v1, 0x0

    .line 758
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/DragController;->access$102(Lcom/prompt/kiosk/slauncher/DragController;I)I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 759
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/DragController;->access$202(Lcom/prompt/kiosk/slauncher/DragController;I)I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->this$0:Lcom/prompt/kiosk/slauncher/DragController;

    .line 760
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragController;->access$000(Lcom/prompt/kiosk/slauncher/DragController;)Lcom/prompt/kiosk/slauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/DragScroller;->onExitScrollArea()Z

    :cond_1
    return-void
.end method

.method setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DragController$ScrollRunnable;->mDirection:I

    return-void
.end method
