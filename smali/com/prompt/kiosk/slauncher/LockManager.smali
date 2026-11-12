.class public Lcom/prompt/kiosk/slauncher/LockManager;
.super Landroid/content/BroadcastReceiver;
.source "LockManager.java"


# static fields
.field public static final PASSWORD_TYPE_4DIGIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockManager"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHash:Ljava/lang/String;

.field private mNeedLock:Z

.field private mSalt:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mSalt:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mHash:Ljava/lang/String;

    iput p4, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mType:I

    return-void
.end method


# virtual methods
.method public getLockState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    return v0
.end method

.method public lockScreen()V
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 37
    sget-object v1, Lcom/prompt/kiosk/slauncher/LockFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    new-instance v0, Lcom/prompt/kiosk/slauncher/LockFragment;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/LockFragment;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mSalt:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mHash:Ljava/lang/String;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mType:I

    .line 40
    invoke-static {v1, v2, v3}, Lcom/prompt/kiosk/slauncher/LockFragment;->buildArguments(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 41
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090036

    sget-object v3, Lcom/prompt/kiosk/slauncher/LockFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prompt/kiosk/slauncher/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "lockScreen() no effect without password"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    :cond_0
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 57
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "kiosk.need_lock"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 70
    sget-object v1, Lcom/prompt/kiosk/slauncher/LockFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setLockState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LockManager;->mNeedLock:Z

    return-void
.end method
