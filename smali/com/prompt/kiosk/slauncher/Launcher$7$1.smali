.class Lcom/prompt/kiosk/slauncher/Launcher$7$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher$7;->onAdvanceMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/Launcher$7;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher$7;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7$1;->this$1:Lcom/prompt/kiosk/slauncher/Launcher$7;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$7$1;->val$v:Landroid/view/View;

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7$1;->val$v:Landroid/view/View;

    .line 1135
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1136
    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    :cond_0
    return-void
.end method
