.class Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;
.super Ljava/lang/Object;
.source "AtomMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->setupMenuPopupWindowImpl(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 186
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->access$100(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 187
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->dismissMenuPopupWindow()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
