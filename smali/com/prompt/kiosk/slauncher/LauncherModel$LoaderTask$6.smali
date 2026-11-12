.class Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;
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

.field final synthetic val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    .line 1770
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1772
    invoke-interface {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;->finishBindingItems()V

    :cond_0
    return-void
.end method
