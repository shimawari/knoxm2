.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

.field final synthetic val$finalParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;FLcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transX0:F

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$finalParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iput p4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transY0:F

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 963
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 965
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->access$000(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transX0:F

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$finalParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transX0:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 966
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->access$000(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transY0:F

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$finalParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$transY0:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->transY:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 967
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->access$000(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->val$finalParams:Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;

    iget v1, v1, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    iput p1, v0, Lcom/prompt/kiosk/slauncher/PreviewItemDrawingParams;->scale:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 968
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    return-void
.end method
