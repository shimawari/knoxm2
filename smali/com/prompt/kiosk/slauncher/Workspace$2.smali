.class Lcom/prompt/kiosk/slauncher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/prompt/kiosk/slauncher/CellLayout;ZLcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Workspace;

.field final synthetic val$cellLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

.field final synthetic val$pendingInfo:Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;Lcom/prompt/kiosk/slauncher/CellLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->val$pendingInfo:Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->val$cellLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->val$pendingInfo:Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;

    .line 2335
    iget v0, v0, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;->itemType:I

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->convertItemTypeToDefaultIfNeeded(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->val$pendingInfo:Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;

    iget v2, v2, Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$2;->val$cellLayout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2343
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->onDragExit()V

    return-void
.end method
