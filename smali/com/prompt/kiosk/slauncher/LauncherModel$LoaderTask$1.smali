.class Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1272
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    .line 1273
    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->access$502(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Z)Z

    .line 1275
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "done with previous binding step"

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1277
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
