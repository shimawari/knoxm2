.class Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;
.super Ljava/lang/Object;
.source "FolderRingAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 112
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 113
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Utilities;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    iget v1, v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 114
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 115
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Utilities;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 119
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 120
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountX()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 121
    iget-object v3, v3, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->getCellCountY()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float p1, v5, p1

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, p1

    int-to-float v2, v2

    div-float v7, v6, v2

    add-float/2addr v7, v5

    int-to-float v0, v0

    mul-float/2addr v7, v0

    .line 124
    iput v7, v4, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mOuterRingWidth:F

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    int-to-float v3, v3

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    int-to-float v1, v1

    mul-float/2addr v6, v1

    .line 125
    iput v6, v4, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mOuterRingHeight:F

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr p1, v6

    div-float v2, p1, v2

    add-float/2addr v2, v5

    mul-float/2addr v2, v0

    .line 126
    iput v2, v4, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingWidth:F

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    div-float/2addr p1, v3

    add-float/2addr p1, v5

    mul-float/2addr p1, v1

    .line 127
    iput p1, v0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingHeight:F

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 128
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 129
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->invalidate()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 130
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 133
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
