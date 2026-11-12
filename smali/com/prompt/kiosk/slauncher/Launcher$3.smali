.class Lcom/prompt/kiosk/slauncher/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher;->addPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$workspace:Lcom/prompt/kiosk/slauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Workspace;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->val$workspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->val$observer:Landroid/view/ViewTreeObserver;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->mFirstTime:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->mFirstTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->mFirstTime:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->val$workspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 501
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$300(Lcom/prompt/kiosk/slauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$3;->val$observer:Landroid/view/ViewTreeObserver;

    .line 502
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
