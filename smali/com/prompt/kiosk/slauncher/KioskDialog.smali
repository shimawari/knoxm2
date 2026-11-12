.class public Lcom/prompt/kiosk/slauncher/KioskDialog;
.super Ljava/lang/Object;
.source "KioskDialog.java"


# instance fields
.field private mClickedShortcut:Lcom/prompt/kiosk/slauncher/ShortcutInfo;

.field private mContext:Landroid/content/Context;

.field mDialogEmmDownload:Landroid/content/DialogInterface$OnClickListener;

.field mDialogLaunch:Landroid/content/DialogInterface$OnClickListener;

.field mDialogPlaystore:Landroid/content/DialogInterface$OnClickListener;

.field mDialogUpdate:Landroid/content/DialogInterface$OnClickListener;

.field mOnEmmDialogDismiss:Landroid/content/DialogInterface$OnDismissListener;

.field mRequestFloatWindowPermission:Landroid/content/DialogInterface$OnClickListener;

.field mRequestNotificationPermission:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$1;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogEmmDownload:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$2;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mRequestNotificationPermission:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$3;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$3;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mRequestFloatWindowPermission:Landroid/content/DialogInterface$OnClickListener;

    .line 151
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$4;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$4;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogPlaystore:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$5;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$5;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogUpdate:Landroid/content/DialogInterface$OnClickListener;

    .line 173
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$6;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$6;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogLaunch:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog$7;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskDialog$7;-><init>(Lcom/prompt/kiosk/slauncher/KioskDialog;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mOnEmmDialogDismiss:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/KioskDialog;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mClickedShortcut:Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/prompt/kiosk/slauncher/KioskDialog;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mClickedShortcut:Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/KioskDialog;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->requestAppDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/KioskDialog;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/KioskDialog;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->openPlayStore(Ljava/lang/String;)V

    return-void
.end method

.method private getErrorTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openPlayStore(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 113
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-static {v0}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requestAppDownload(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getEmmManager()Lcom/prompt/kiosk/slauncher/EmmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestAppDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V
    .locals 5

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mClickedShortcut:Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mOnEmmDialogDismiss:Landroid/content/DialogInterface$OnDismissListener;

    .line 27
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskDialog$8;->$SwitchMap$com$prompt$kiosk$slauncher$DialogType:[I

    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/DialogType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const p3, 0x7f0c002b

    const v1, 0x7f0c001d

    const v2, 0x7f0c0026

    const/4 v3, 0x0

    const v4, 0x7f0c002a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->hasSettingRestrictionPolicy()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->restrictSettingApp(Z)Ljava/lang/String;

    .line 97
    :cond_1
    invoke-virtual {v0, p3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    const p2, 0x7f0c0023

    .line 98
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mRequestFloatWindowPermission:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    invoke-virtual {p1, v4, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogLaunch:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    invoke-virtual {p1, v2, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 85
    :pswitch_1
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->hasSettingRestrictionPolicy()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->restrictSettingApp(Z)Ljava/lang/String;

    .line 88
    :cond_2
    invoke-virtual {v0, p3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    const p2, 0x7f0c0020

    .line 89
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mRequestNotificationPermission:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    invoke-virtual {p1, v4, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogLaunch:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    invoke-virtual {p1, v2, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 79
    :pswitch_2
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 80
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 81
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto/16 :goto_0

    .line 73
    :pswitch_3
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 74
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 75
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto/16 :goto_0

    .line 67
    :pswitch_4
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 68
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 69
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto/16 :goto_0

    .line 61
    :pswitch_5
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 62
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 63
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto/16 :goto_0

    .line 55
    :pswitch_6
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 56
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 57
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto :goto_0

    .line 49
    :pswitch_7
    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    .line 50
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    .line 51
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v4, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    goto :goto_0

    :pswitch_8
    const p1, 0x7f0c002c

    .line 43
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p2

    const p3, 0x7f0c0025

    .line 44
    invoke-virtual {p2, p3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogUpdate:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    invoke-virtual {p2, p1, p3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    const p2, 0x7f0c0024

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogLaunch:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 37
    :pswitch_9
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    const p2, 0x7f0c0022

    .line 38
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogPlaystore:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    invoke-virtual {p1, v4, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v2, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 31
    :pswitch_a
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    const p2, 0x7f0c0021

    .line 32
    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskDialog;->mDialogEmmDownload:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-virtual {p1, v4, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v2, v3}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 103
    :goto_0
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showNotInstallDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 2

    const-string v0, "IA"

    .line 195
    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->EMM_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    :cond_0
    const-string v0, "PA"

    .line 197
    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->PLAYSTORE_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 200
    :cond_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    :goto_0
    return-void
.end method
