.class Lcom/prompt/kiosk/slauncher/KioskDialog$7;
.super Ljava/lang/Object;
.source "KioskDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$7;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog$7;->this$0:Lcom/prompt/kiosk/slauncher/KioskDialog;

    const/4 v0, 0x0

    .line 187
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;->access$002(Lcom/prompt/kiosk/slauncher/KioskDialog;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 188
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->hasSettingRestrictionPolicy()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 189
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->restrictSettingApp(Z)Ljava/lang/String;

    :cond_0
    return-void
.end method
