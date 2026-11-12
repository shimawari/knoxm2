.class Lcom/prompt/kiosk/slauncher/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;->unbindWorkspaceItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$1;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$1;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 191
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$000(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/util/ArrayList;

    return-void
.end method
