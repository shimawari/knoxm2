.class Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$start:I

    iput p5, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$chunkSize:I

    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    .line 1736
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$start:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;->val$chunkSize:I

    add-int/2addr v3, v2

    .line 1738
    invoke-interface {v0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method
