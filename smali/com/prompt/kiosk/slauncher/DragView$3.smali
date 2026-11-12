.class Lcom/prompt/kiosk/slauncher/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DragView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView$3;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView$3;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 265
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/DragView;->access$300(Lcom/prompt/kiosk/slauncher/DragView;)Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DragView$3;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method
