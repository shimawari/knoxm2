.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1336
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;-><init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;)V

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
