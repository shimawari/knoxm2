.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->initItemScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1321
    iget v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollDirection:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1322
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->access$100(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->access$100(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1323
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    return-void
.end method
