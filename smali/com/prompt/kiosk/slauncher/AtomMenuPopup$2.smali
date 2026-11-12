.class Lcom/prompt/kiosk/slauncher/AtomMenuPopup$2;
.super Ljava/lang/Object;
.source "AtomMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$2;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$2;->this$0:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    const/4 v1, 0x0

    .line 177
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->access$102(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method
