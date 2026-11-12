.class Lcom/prompt/kiosk/slauncher/AbstractFolder$8;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->refreshFolder()V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1143
    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1144
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mRearrangeOnClose:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1146
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1148
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$8;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1149
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->replaceFolderWithFinalItem()V

    :cond_1
    return-void
.end method
