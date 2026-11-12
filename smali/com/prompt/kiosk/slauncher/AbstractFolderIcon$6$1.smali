.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    .line 1340
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollDirection:I

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->moveItemTo(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    .line 1341
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    const/4 v1, 0x0

    iput v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollState:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    .line 1342
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iput v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mItemScrollX:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6$1;->this$1:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;

    .line 1343
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$6;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    return-void
.end method
