.class Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;
.super Ljava/lang/Object;
.source "AtomMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->showWorkspaceMenuPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 80
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->dismissMenuPopupWindow()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 81
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->access$000(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)Lcom/prompt/kiosk/slauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->onWorkspaceMenuPopup(I)V

    return-void
.end method
