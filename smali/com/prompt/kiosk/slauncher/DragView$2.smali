.class Lcom/prompt/kiosk/slauncher/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DragView;->show(II)V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragView$2;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DragView$2;->this$0:Lcom/prompt/kiosk/slauncher/DragView;

    .line 229
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
