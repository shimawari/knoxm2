.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractFolderIcon.java"


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


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 971
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v0, 0x0

    .line 978
    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v0, 0x1

    .line 974
    iput-boolean v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mAnimating:Z

    return-void
.end method
