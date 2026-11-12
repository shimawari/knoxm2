.class public Lcom/prompt/kiosk/slauncher/FloatingViewController;
.super Ljava/lang/Object;
.source "FloatingViewController.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "FloatingViewController"

.field private static instance:Lcom/prompt/kiosk/slauncher/FloatingViewController;

.field private static mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->setApplicationContext(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->newInstance()Landroid/view/WindowManager;

    move-result-object p1

    sput-object p1, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static getNewInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/FloatingViewController;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->instance:Lcom/prompt/kiosk/slauncher/FloatingViewController;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/FloatingViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->instance:Lcom/prompt/kiosk/slauncher/FloatingViewController;

    :cond_0
    sget-object p0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->instance:Lcom/prompt/kiosk/slauncher/FloatingViewController;

    return-object p0
.end method

.method public static hideFloatingButton()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->isAlive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->isAlive:Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    const/16 v1, 0x8

    .line 86
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setVisibility(I)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->classSimpleName:Ljava/lang/String;

    const-string v1, "Floating Button Removed"

    .line 87
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static hideFloatingButtonOnUIThread()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 92
    new-instance v1, Lcom/prompt/kiosk/slauncher/FloatingViewController$1;

    invoke-direct {v1}, Lcom/prompt/kiosk/slauncher/FloatingViewController$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static initView()V
    .locals 4

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->classSimpleName:Ljava/lang/String;

    const-string v1, "Floating Button Init View"

    .line 36
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 41
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 42
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "Floating Button Add View"

    .line 43
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/FloatingViewController;->classSimpleName:Ljava/lang/String;

    const-string v2, "addView exception "

    .line 46
    invoke-static {v1, v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    :goto_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->showFloatingButton()V

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 52
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->checkScreenSize()V

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 55
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->startViewPositionAnimator()V

    return-void
.end method

.method public static isInfoIconHidden()Z
    .locals 3

    .line 74
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "AllowHideInfoIcon"

    .line 78
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static showAboutKioskDialog()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/prompt/kiosk/slauncher/FloatingAboutKioskActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x1c018000

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static showFloatingButton()V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->isAlive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->isAlive:Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setAlpha(F)V

    .line 62
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->isInfoIconHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    const/16 v1, 0x8

    .line 63
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setVisibility(I)V

    :goto_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 67
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->cancelFloatingButtonTimer()V

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->mFloatingButtonView:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 68
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setFloatingButtonTimer()V

    sget-object v0, Lcom/prompt/kiosk/slauncher/FloatingViewController;->classSimpleName:Ljava/lang/String;

    const-string v1, "Floating Button Added"

    .line 69
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
