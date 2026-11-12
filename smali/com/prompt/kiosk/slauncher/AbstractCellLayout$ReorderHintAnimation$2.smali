.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2716
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    const/4 v0, 0x0

    .line 2719
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaX:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2720
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaY:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;->this$1:Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2721
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initScale:F

    return-void
.end method
