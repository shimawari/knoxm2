.class Lcom/prompt/kiosk/slauncher/AbstractFolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 332
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x2

    .line 343
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 344
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$200(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 345
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onOpenComplete()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 347
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$300(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 348
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$300(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder$OnFinishFolderOpenListener;->onFinishFolderOpen()V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->hideScrollingIndicator(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 336
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$000(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    .line 337
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCellCountY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 335
    invoke-static {p1, v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$100(Lcom/prompt/kiosk/slauncher/AbstractFolder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x1

    .line 338
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->showScrollingIndicator(Z)V

    return-void
.end method
