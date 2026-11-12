.class Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;
.super Ljava/lang/Object;
.source "AtomDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->create(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->this$0:Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->this$0:Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    .line 193
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->access$100(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->this$0:Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    .line 194
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->access$100(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
