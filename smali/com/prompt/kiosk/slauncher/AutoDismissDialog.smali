.class public Lcom/prompt/kiosk/slauncher/AutoDismissDialog;
.super Landroid/app/Dialog;
.source "AutoDismissDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoDismissDialog"


# instance fields
.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;-><init>(Lcom/prompt/kiosk/slauncher/AutoDismissDialog;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    new-instance p1, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;-><init>(Lcom/prompt/kiosk/slauncher/AutoDismissDialog;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    new-instance p1, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog$1;-><init>(Lcom/prompt/kiosk/slauncher/AutoDismissDialog;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
