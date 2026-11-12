.class Lcom/prompt/kiosk/slauncher/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$1;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$1;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 153
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$200(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$1;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 154
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$200(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->buildPageHardwareLayers()V

    :cond_0
    return-void
.end method
