.class Lcom/prompt/kiosk/slauncher/Launcher$4;
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$4;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$4;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 734
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 735
    new-instance v0, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;-><init>()V

    const-string v1, "InfoDialog"

    .line 736
    invoke-virtual {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
