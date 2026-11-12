.class Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderRingAnimator.java"


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 138
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 141
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 142
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->hideFolderAccept(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 144
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 146
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 148
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mDrawEditModeOverlay:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 149
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 151
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->access$102(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;Z)Z

    return-void
.end method
