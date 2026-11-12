.class Lcom/prompt/kiosk/slauncher/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher;->showErrorGuide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;

.field final synthetic val$errorMessage:I


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->val$errorMessage:I

    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2033
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mAppDownProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2034
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2035
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->val$errorMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$11;->val$errorMessage:I

    .line 2036
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->saveCurrentGuide(I)V

    return-void
.end method
