.class public Lcom/prompt/kiosk/slauncher/AboutKioskDialog;
.super Landroid/app/DialogFragment;
.source "AboutKioskDialog.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "InfoDialog"

.field private static final TAG:Ljava/lang/String; = "AboutKioskDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissAndShowFloatingButton()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public dismissOnly()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "statusbar.visible"

    const/4 v1, 0x1

    .line 50
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x1030010

    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->setStyle(II)V

    goto :goto_0

    :cond_0
    const p1, 0x1030011

    .line 55
    invoke-virtual {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->setStyle(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/high16 p3, 0x7f0b0000

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->newInstance(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;)Lcom/prompt/kiosk/slauncher/AboutKioskView;

    move-result-object p3

    .line 36
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "showedError"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public showOpenSourceLicense()V
    .locals 4

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/prompt/kiosk/slauncher/OpenSourceLicenseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "file:///android_asset/license.html"

    .line 63
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->TAG:Ljava/lang/String;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start web: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
