.class public Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;
.super Landroid/app/Activity;
.source "FloatingAboutKioskActivity.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingAboutKioskActivity"


# instance fields
.field private changeOrientationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->removeChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->addAboutKioskView()V

    return-void
.end method

.method private addAboutKioskView()V
    .locals 4

    const v0, 0x7f09003c

    .line 53
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 54
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 55
    invoke-static {p0, p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->newInstance(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;)Lcom/prompt/kiosk/slauncher/AboutKioskView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f09004c

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x7f090031

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private removeChildViews()V
    .locals 1

    const v0, 0x7f09003c

    .line 48
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 49
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public dismissAndShowFloatingButton()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->finish()V

    .line 120
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->showFloatingButton()V

    return-void
.end method

.method public dismissOnly()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0, v0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x31063

    if-ne p1, p3, :cond_0

    const p1, 0x31064

    if-ne p2, p1, :cond_0

    .line 107
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->showAboutKioskDialog()V

    .line 108
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButton()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 71
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->showFloatingButton()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0001

    .line 41
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->setContentView(I)V

    .line 42
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->changeOrientationReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButton()V

    .line 84
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->removeChildViews()V

    .line 85
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->addAboutKioskView()V

    return-void
.end method

.method public showOpenSourceLicense()V
    .locals 4

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-class v1, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "file:///android_asset/license.html"

    .line 92
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x31063

    .line 94
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;->TAG:Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start web: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
