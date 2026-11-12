.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

.field final synthetic val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$thisIndex:I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$anim:Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;

    .line 172
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 180
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$000(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[F

    move-result-object v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v1, v2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 181
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$100(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[Landroid/graphics/Point;

    move-result-object p1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$thisIndex:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 182
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$100(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->val$thisIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
