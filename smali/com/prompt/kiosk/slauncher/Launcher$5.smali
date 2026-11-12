.class Lcom/prompt/kiosk/slauncher/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher;->setButtonSettings(Landroid/content/SharedPreferences;)V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$5;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$5;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 749
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$400(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LockManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$5;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 750
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$400(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LockManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LockManager;->setLockState(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$5;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 751
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$400(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LockManager;->lockScreen()V

    :cond_0
    return-void
.end method
