.class public Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;
.super Lcom/prompt/kiosk/slauncher/KioskWebActivity;
.source "OpenSourceLicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->finish()V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->overridePendingTransition(II)V

    const v0, 0x31064

    .line 48
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->setResult(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090090

    .line 19
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f090013

    .line 22
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 23
    new-instance v0, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->disableLongClick()V

    .line 32
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 37
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
