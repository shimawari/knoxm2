.class Lcom/prompt/kiosk/slauncher/AbstractFolder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->closed(Z)V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 401
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 404
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 409
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->onCloseComplete()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x0

    .line 410
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 415
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$400(Lcom/prompt/kiosk/slauncher/AbstractFolder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 414
    invoke-static {p1, v1, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$100(Lcom/prompt/kiosk/slauncher/AbstractFolder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$2;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    const/4 v0, 0x1

    .line 416
    iput v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    return-void
.end method
