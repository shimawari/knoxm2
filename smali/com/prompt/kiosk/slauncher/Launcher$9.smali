.class Lcom/prompt/kiosk/slauncher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Launcher;->showManualInstallGuide()V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$9;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$9;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2007
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mAppDownProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$9;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2008
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$9;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2009
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$9;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 2010
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->saveCurrentGuide(I)V

    return-void
.end method
