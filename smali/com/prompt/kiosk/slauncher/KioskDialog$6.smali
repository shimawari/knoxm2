.class Lcom/prompt/kiosk/slauncher/KioskDialog$6;
.super Ljava/lang/Object;
.source "KioskDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/KioskDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$6;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$6;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 176
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$6;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 177
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    invoke-static {p1}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
