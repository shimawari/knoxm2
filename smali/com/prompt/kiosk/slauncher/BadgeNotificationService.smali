.class public Lcom/prompt/kiosk/slauncher/BadgeNotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source "BadgeNotificationService.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "BadgeNotificationService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private sendBadgeUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->classSimpleName:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendBadgeUpdateBroadcast. packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / badgeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.prompt.kiosk.slauncher.intent.action_BADGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "badge_package"

    .line 93
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "badge_count"

    .line 94
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 18
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkDialerPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->classSimpleName:Ljava/lang/String;

    const-string v0, "onNotificationPosted - Dialer"

    .line 46
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedCallCount(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->sendBadgeUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->classSimpleName:Ljava/lang/String;

    const-string v1, "onNotificationPosted - SMS"

    .line 53
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedSmsCount(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->sendBadgeUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {v0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkDialerPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->classSimpleName:Ljava/lang/String;

    const-string v0, "onNotificationRemoved - Dialer"

    .line 72
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedCallCount(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->sendBadgeUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->classSimpleName:Ljava/lang/String;

    const-string v1, "onNotificationRemoved - SMS"

    .line 79
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getMissedSmsCount(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/BadgeNotificationService;->sendBadgeUpdateBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
