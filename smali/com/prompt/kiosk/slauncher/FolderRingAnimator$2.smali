.class Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderRingAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToAcceptState()V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 90
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 93
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 94
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 95
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mDrawEditModeOverlay:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;->this$0:Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    .line 96
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    :cond_0
    return-void
.end method
