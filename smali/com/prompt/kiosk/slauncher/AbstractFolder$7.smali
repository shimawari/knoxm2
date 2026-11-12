.class Lcom/prompt/kiosk/slauncher/AbstractFolder$7;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

.field final synthetic val$removed:Z

.field final synthetic val$willBeAddedItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->val$willBeAddedItems:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->val$removed:Z

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->val$willBeAddedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1091
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    iput v2, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->val$removed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1095
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->val$removed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1100
    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1101
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1103
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    :goto_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1106
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iget-boolean v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDragInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$7;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1107
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->replaceFolderWithFinalItem()V

    :cond_3
    return-void
.end method
