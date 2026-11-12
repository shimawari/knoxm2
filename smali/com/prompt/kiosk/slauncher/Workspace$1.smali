.class Lcom/prompt/kiosk/slauncher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Workspace;->onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$1;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$1;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    const/4 v1, 0x0

    .line 1582
    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/Workspace;->mAnimatingViewIntoPlace:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$1;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1583
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->access$000(Lcom/prompt/kiosk/slauncher/Workspace;)V

    return-void
.end method
