.class Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;
.super Ljava/lang/Object;
.source "FloatingButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FloatingButtonView;->startViewPositionAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 213
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$100()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$200()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 214
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 216
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$200()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$000(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$2;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 218
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->access$300(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V

    return-void
.end method
