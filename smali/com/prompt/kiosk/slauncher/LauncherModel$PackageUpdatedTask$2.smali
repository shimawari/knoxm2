.class Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;

.field final synthetic val$callbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

.field final synthetic val$packages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->val$packages:[Ljava/lang/String;

    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;

    .line 1942
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$PackageUpdatedTask$2;->val$packages:[Ljava/lang/String;

    .line 1944
    invoke-interface {v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->bindPackagesUpdated([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
