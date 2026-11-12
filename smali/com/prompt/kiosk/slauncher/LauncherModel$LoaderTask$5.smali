.class Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$5;
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


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$5;->this$1:Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1758
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binding Item Complete."

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
