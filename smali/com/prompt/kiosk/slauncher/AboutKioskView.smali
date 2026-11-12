.class public Lcom/prompt/kiosk/slauncher/AboutKioskView;
.super Landroid/widget/LinearLayout;
.source "AboutKioskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;
    }
.end annotation


# static fields
.field private static final CLEAR_APP_DATA_ACTION:Ljava/lang/String; = "com.sds.emm.emmagent.activity.CLEAR_APP_DATA"

.field private static final EMM_AGENT_ENROLLED:Ljava/lang/String; = "Enrolled"

.field private static final EXIT_KIOSK_ACTION:Ljava/lang/String; = "com.sds.emm.emmagent.activity.EXIT_KIOSK"

.field private static final EXIT_KIOSK_SUPPORT_VERSION:I = 0x16387ab

.field private static final OFFLINE_UNENROLL_ACTION:Ljava/lang/String; = "com.sds.emm.client.ui.CLOSE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "AboutKioskView"


# instance fields
.field private listener:Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field useAccessibility:Z

.field useAirplaneMode:Z

.field useAutoRotate:Z

.field useBlueLight:Z

.field useBluetooth:Z

.field useDisplay:Z

.field useDoNotDisturb:Z

.field useFlashLight:Z

.field useGoogleAccount:Z

.field useLanguage:Z

.field useLocation:Z

.field useMaintenance:Z

.field useMobileData:Z

.field useMobileHotspot:Z

.field useMobilenetwork:Z

.field useNfc:Z

.field useScreenlock:Z

.field useSmartView:Z

.field useSound:Z

.field useTimeZone:Z

.field useWifi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useWifi:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBluetooth:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useNfc:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAirplaneMode:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileData:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLocation:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileHotspot:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDisplay:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBlueLight:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useScreenlock:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSound:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMaintenance:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobilenetwork:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useGoogleAccount:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useTimeZone:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLanguage:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useFlashLight:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSmartView:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAccessibility:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAutoRotate:Z

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDoNotDisturb:Z

    .line 75
    new-instance p2, Lcom/prompt/kiosk/slauncher/AboutKioskView$1;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView$1;-><init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance p2, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;-><init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->initSetting()V

    .line 92
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->initView()Landroid/view/View;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->getRootView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/prompt/kiosk/slauncher/WindowInsetsCallback;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/WindowInsetsCallback;-><init>()V

    .line 95
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->checkBindingEmmAgent()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->onViewCreated(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AboutKioskView;)Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->listener:Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AboutKioskView;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->toggleAllButtons(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->blockMultiButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->showSettingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->exitKiosk()V

    return-void
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->openSupport()V

    return-void
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->showClearAppData()V

    return-void
.end method

.method private blockMultiButtonClick()V
    .locals 3

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->toggleAllButtons(Z)V

    .line 142
    new-instance v0, Lcom/prompt/kiosk/slauncher/AboutKioskView$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView$2;-><init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkBindingEmmAgent()V
    .locals 3

    .line 115
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v2, "EMMAgentLib exception "

    .line 119
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v1, "Agent Manager is not ready. Retry bind EMMAgent"

    .line 124
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.emmagent.intent.action.INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private exitKiosk()V
    .locals 2

    const-string v0, "com.sds.emm.cloud.knox.samsung"

    .line 271
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v1, "Emm Agent not installed."

    .line 272
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_0
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->versionCode(Ljava/lang/String;)I

    move-result v0

    const v1, 0x16387ab

    if-lt v0, v1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->showExitKioskDialog()V

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->showOfflineUnenrollActivity()V

    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;)Lcom/prompt/kiosk/slauncher/AboutKioskView;
    .locals 2

    .line 131
    new-instance v0, Lcom/prompt/kiosk/slauncher/AboutKioskView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->setListener(Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;)V

    return-object v0
.end method

.method private openSupport()V
    .locals 2

    const-string v0, "com.sds.emm.cloud.knox.samsung"

    .line 316
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v1, "Emm Agent not installed."

    .line 317
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 320
    invoke-static {v0}, Lcom/prompt/kiosk/utils/UIUtils;->getKMSubActivity(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private setListener(Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->listener:Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

    return-void
.end method

.method private showClearAppData()V
    .locals 3

    :try_start_0
    const-string v0, "Enrolled"

    .line 327
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.emmagent.activity.CLEAR_APP_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x14008000

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    .line 332
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v2, "failed to start clear app data activity."

    .line 337
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v2, "EMMAgentLib exception "

    .line 335
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showExitKioskDialog()V
    .locals 3

    :try_start_0
    const-string v0, "Enrolled"

    .line 287
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.emmagent.activity.EXIT_KIOSK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x14008000

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    .line 292
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v2, "failed to start exit kiosk activity."

    .line 297
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v2, "EMMAgentLib exception "

    .line 295
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showOfflineUnenrollActivity()V
    .locals 4

    .line 303
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.client.ui.CLOSE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 304
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to activate admin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showSettingDialog()V
    .locals 3

    .line 226
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Enrolled"

    .line 231
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getEnrollmentManager()Lcom/sds/emm/emmagent/lib/EnrollmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EnrollmentManager;->isEnrolled()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    new-instance v1, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;

    invoke-direct {v1}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setKioskPackageName(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBluetooth:Z

    .line 234
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseBluetooth(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMaintenance:Z

    .line 235
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseDeviceMaintenance(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDisplay:Z

    .line 236
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseDisplay(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBlueLight:Z

    .line 237
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseBlueLight(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLocation:Z

    .line 238
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseLocation(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileHotspot:Z

    .line 239
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseMobileHotspot(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileData:Z

    .line 240
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseMobileData(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobilenetwork:Z

    .line 241
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseMobileNetwork(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useGoogleAccount:Z

    .line 242
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseGoogleAccountSetup(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useNfc:Z

    .line 243
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseNfc(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAirplaneMode:Z

    .line 244
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseAirplaneMode(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useScreenlock:Z

    .line 245
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseScreenLock(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSound:Z

    .line 246
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseSound(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useWifi:Z

    .line 247
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseWiFi(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useTimeZone:Z

    .line 248
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseTimeZone(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLanguage:Z

    .line 249
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseLanguage(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useFlashLight:Z

    .line 250
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseFlashLight(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSmartView:Z

    .line 251
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseSmartView(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAccessibility:Z

    .line 252
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseAccessibility(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAutoRotate:Z

    .line 253
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseAutoRotate(Z)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDoNotDisturb:Z

    .line 254
    invoke-virtual {v1, v2}, Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;->setUseDoNotDisturb(Z)V

    .line 255
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getKioskManager()Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;->startKioskSettingActivity(Lcom/sds/emm/emmagent/service/general/policy/kiosk/KioskSettingEntity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private toggleAllButtons(Z)V
    .locals 1

    const v0, 0x7f090005

    .line 151
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09003a

    .line 152
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090087

    .line 153
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090002

    .line 154
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09002b

    .line 155
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09001f

    .line 156
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public initSetting()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kiosk.device_wifi"

    const/4 v2, 0x1

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useWifi:Z

    const-string v1, "kiosk.device_bluetooth"

    .line 163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBluetooth:Z

    const-string v1, "kiosk.device_nfc"

    .line 164
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useNfc:Z

    const-string v1, "kiosk.airplaneMode"

    .line 165
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAirplaneMode:Z

    const-string v1, "kiosk.device_mobiledata"

    .line 166
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileData:Z

    const-string v1, "kiosk.device_location"

    .line 167
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLocation:Z

    const-string v1, "kiosk.device_mobileHotspot"

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileHotspot:Z

    const-string v1, "kiosk.device_display"

    .line 169
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDisplay:Z

    const-string v1, "kiosk.blueLight"

    .line 170
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBlueLight:Z

    const-string v1, "kiosk.device_screenlock"

    .line 171
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useScreenlock:Z

    const-string v1, "kiosk.device_sound"

    .line 172
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSound:Z

    const-string v1, "kiosk.device_maintenance"

    .line 173
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMaintenance:Z

    const-string v1, "kiosk.device_mobilenetwork"

    .line 174
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobilenetwork:Z

    const-string v1, "kiosk.google_account"

    .line 175
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useGoogleAccount:Z

    const-string v1, "kiosk.time_zone"

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useTimeZone:Z

    const-string v1, "kiosk.language"

    .line 177
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLanguage:Z

    const-string v1, "kiosk.flash_light"

    .line 178
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useFlashLight:Z

    const-string v1, "kiosk.smart_view"

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSmartView:Z

    const-string v1, "kiosk.accessibility"

    .line 180
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAccessibility:Z

    const-string v1, "kiosk.auto_rotate"

    .line 181
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAutoRotate:Z

    const-string v1, "kiosk.do_not_disturb"

    .line 182
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDoNotDisturb:Z

    return-void
.end method

.method public initView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09001f

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004c

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 419
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 423
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 428
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f09004d

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09004b

    .line 352
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 354
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 359
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 362
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 364
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f090052

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 370
    :try_start_1
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 372
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getKioskManager()Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static {v3}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v4, 0x7f090049

    .line 377
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    sget-object v4, Lcom/prompt/kiosk/slauncher/AboutKioskView;->TAG:Ljava/lang/String;

    const-string v5, "EMMAgentLib exception "

    .line 381
    invoke-static {v4, v5, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    const v0, 0x7f090002

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 386
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090005

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 389
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090006

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 393
    invoke-static {}, Lcom/prompt/kiosk/utils/AppUtils;->isNewConsoleKiosk()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->checkKioskSettingsPolicy()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_4
    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useWifi:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBluetooth:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useNfc:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAirplaneMode:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileData:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobileHotspot:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLocation:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDisplay:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useBlueLight:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useScreenlock:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSound:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMaintenance:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useMobilenetwork:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useGoogleAccount:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useTimeZone:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useLanguage:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useFlashLight:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useSmartView:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAccessibility:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useAutoRotate:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->useDoNotDisturb:Z

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v2

    .line 400
    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    const v0, 0x7f09003a

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 404
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090087

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 407
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002b

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 410
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002c

    .line 412
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v0, "KioskClearAppList"

    .line 413
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->isKioskInventoryEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->toggleAllButtons(Z)V

    return-void
.end method
