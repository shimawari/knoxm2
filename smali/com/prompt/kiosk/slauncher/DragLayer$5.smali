.class Lcom/prompt/kiosk/slauncher/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$5;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 631
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DragLayer$5;->this$0:Lcom/prompt/kiosk/slauncher/DragLayer;

    const/4 v0, 0x0

    .line 633
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->access$002(Lcom/prompt/kiosk/slauncher/DragLayer;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
