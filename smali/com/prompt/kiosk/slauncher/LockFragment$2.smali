.class Lcom/prompt/kiosk/slauncher/LockFragment$2;
.super Ljava/lang/Object;
.source "LockFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LockFragment;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$2;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p3, p2, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$2;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    .line 304
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->access$700(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
