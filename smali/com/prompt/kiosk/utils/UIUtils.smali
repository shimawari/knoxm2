.class public final Lcom/prompt/kiosk/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field static final CLIENT_GO_TO_HOME_KEY:Ljava/lang/String; = "GoToHomeKey"

.field static final CLIENT_IGNORE_LOCK_SCREEN:Ljava/lang/String; = "IgnoreLockScreenKey"

.field static final EXTRA_CLIENT_SUB_ACTIVITY_KEY:Ljava/lang/String; = "EMMClientSubActivityKey"

.field private static final classSimpleName:Ljava/lang/String; = "UIUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-nez p0, :cond_0

    .line 17
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getKMSubActivity(I)Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.client.ui.CONTENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EMMClientSubActivityKey"

    .line 50
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "GoToHomeKey"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "IgnoreLockScreenKey"

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0, v0}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0, p1}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Lcom/prompt/kiosk/utils/UIUtils;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    .line 38
    :try_start_0
    invoke-static {p2}, Lcom/prompt/kiosk/utils/UIUtils;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p2}, Lcom/prompt/kiosk/utils/UIUtils;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/prompt/kiosk/utils/UIUtils;->classSimpleName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
