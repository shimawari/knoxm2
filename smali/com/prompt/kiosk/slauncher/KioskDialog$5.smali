.class Lcom/prompt/kiosk/slauncher/KioskDialog$5;
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 163
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 164
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    const-string p2, "IA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 165
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$100(Lcom/prompt/kiosk/slauncher/KioskDialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 167
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$300(Lcom/prompt/kiosk/slauncher/KioskDialog;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
