.class public Lcom/prompt/kiosk/slauncher/EmmManager;
.super Ljava/lang/Object;
.source "EmmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;,
        Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;,
        Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;,
        Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;
    }
.end annotation


# static fields
.field private static final APP_INFO_UPDATE_INTERVAL:J = 0x927c0L

.field private static final DOWNLOAD_RETRY_DELAY:J = 0x493e0L

.field private static final classSimpleName:Ljava/lang/String; = "EmmManager"

.field static sDev:Z

.field private static sHandler:Landroid/os/Handler;

.field static sLog:Z


# instance fields
.field private mAppId:Ljava/lang/String;

.field private final mAppInfoUpdateCmd:Ljava/lang/Runnable;

.field private final mAppInfoUpdateListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

.field private mAppInstallResponseListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

.field private mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

.field mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mEMMAgentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

.field private mHostActivity:Landroid/app/Activity;

.field private mHostUrl:Ljava/lang/String;

.field private mManagedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedShortcuts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateKey:Ljava/lang/String;

.field private mRsaKey:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0, v0}, Lcom/prompt/kiosk/slauncher/EmmManager;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    .line 229
    new-instance v1, Lcom/prompt/kiosk/slauncher/EmmManager$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/EmmManager$2;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInstallResponseListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    .line 368
    new-instance v1, Lcom/prompt/kiosk/slauncher/EmmManager$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/EmmManager$3;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    .line 399
    new-instance v1, Lcom/prompt/kiosk/slauncher/EmmManager$4;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/EmmManager$4;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateCmd:Ljava/lang/Runnable;

    .line 88
    invoke-static {p2, p3}, Lcom/prompt/kiosk/slauncher/EmmManager;->debugOption(ZZ)V

    sget-object p2, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    sput-object p2, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mContext:Landroid/content/Context;

    const-string p3, "kiosk.emm.app_id"

    .line 99
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppId:Ljava/lang/String;

    const-string p3, "kiosk.emm.tenant_id"

    .line 100
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    const-string p3, "kiosk.emm.host_url"

    .line 101
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mHostUrl:Ljava/lang/String;

    .line 103
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 104
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 107
    :try_start_0
    new-instance p2, Lcom/prompt/kiosk/slauncher/EmmManager$1;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/EmmManager$1;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    invoke-static {p1, p2}, Lcom/sds/emm/emmagent/lib/BindManager;->bind(Landroid/content/Context;Lcom/sds/emm/emmagent/lib/EMMServiceConnection;)V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :goto_0
    sget-boolean p1, Lcom/prompt/kiosk/slauncher/EmmManager;->sDev:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "TestDev001"

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const-string p1, "ROslObA6fxRbCjXhkLETQ1PSEuRwW1z49oQVRMjHzubHLURz7r0rLlLpesfdfBj+Q3xw+HcA"

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mEMMAgentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mEMMAgentManager:Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateCmd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/util/HashMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/prompt/kiosk/slauncher/EmmManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->scheduleInfoUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/prompt/kiosk/slauncher/EmmManager;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mHostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/prompt/kiosk/slauncher/EmmConnection;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/prompt/kiosk/slauncher/EmmManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestMandatoryDownloads()V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInstallResponseListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestManagedAppDownload(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmManager;->postRetryDownload(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V

    return-void
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPrivateKeyConfig()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    .line 186
    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection;->updatePrivateKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static debugOption(ZZ)V
    .locals 0

    sput-boolean p0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    sput-boolean p1, Lcom/prompt/kiosk/slauncher/EmmManager;->sDev:Z

    return-void
.end method

.method private postRetryDownload(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V
    .locals 6

    .line 266
    iget-boolean v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 267
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    sget-boolean v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EMM postRetryDownload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    .line 272
    iput-boolean v2, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    .line 273
    new-instance v3, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;

    invoke-direct {v3, p0, p1}, Lcom/prompt/kiosk/slauncher/EmmManager$RetryDownloadCmd;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private requestManagedAppDownload(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V
    .locals 3

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM requestManagedAppDownload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 310
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->requestAppInstall(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    return-void
.end method

.method private requestManagedAppDownload_rState(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->attemptMandatoryDownloads()V

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM requestManagedAppDownload for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EMM requestManagedAppDownload Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 329
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->requestAppInstall(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    return-void
.end method

.method private requestMandatoryDownloads()V
    .locals 8

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    const-string v1, "EMM app requestMandatoryDownloads() Start"

    .line 334
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 337
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 338
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 339
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    sget-boolean v4, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EMM app id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " default "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EMM app status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_3
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EMM app managed info "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-boolean v4, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EMM app last attempt "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-wide/16 v4, 0x0

    .line 358
    iget-wide v6, v3, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-boolean v4, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EMM try download: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    .line 364
    new-instance v4, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;

    invoke-direct {v4, p0, v3}, Lcom/prompt/kiosk/slauncher/EmmManager$MandatoryDownloadResponseListener;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V

    invoke-virtual {v2, v1, v4}, Lcom/prompt/kiosk/slauncher/EmmConnection;->requestAppInstall(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private scheduleInfoUpdate()V
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 407
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 408
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    .line 409
    iget-wide v6, v5, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 410
    iget-wide v3, v5, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0x927c0

    add-long/2addr v3, v5

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateCmd:Ljava/lang/Runnable;

    .line 414
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInfoUpdateCmd:Ljava/lang/Runnable;

    .line 416
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public attemptMandatoryDownloads()V
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->initConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    const-string v1, "EMM attemptMandatoryDownloads() Start"

    .line 427
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 429
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 430
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/prompt/kiosk/slauncher/EmmManager$5;

    invoke-direct {v2, p0}, Lcom/prompt/kiosk/slauncher/EmmManager$5;-><init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EmmConnection;->getAppInfo(Ljava/util/Collection;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestMandatoryDownloads()V

    :goto_0
    return-void
.end method

.method public collectDeletedApps()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 510
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 511
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 512
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 513
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findAppInfo(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 505
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    return-object p1
.end method

.method public initConnection()Z
    .locals 9

    .line 213
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->setDeviceIdAgain()V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mHostUrl:Ljava/lang/String;

    const-string v3, "1"

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppId:Ljava/lang/String;

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/prompt/kiosk/slauncher/EmmConnection$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/prompt/kiosk/slauncher/EmmConnection;

    sget-object v2, Lcom/prompt/kiosk/slauncher/EmmManager;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/prompt/kiosk/slauncher/EmmConnection;-><init>(Lcom/prompt/kiosk/slauncher/EmmConnection$Config;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mConnection:Lcom/prompt/kiosk/slauncher/EmmConnection;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 201
    :goto_0
    invoke-static {}, Lcom/prompt/kiosk/utils/crypto/CryptoUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    sget-boolean v1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EMM isInitialized: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mHostActivity:Landroid/app/Activity;

    return-void
.end method

.method public registerManagedApp(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedShortcuts:Ljava/util/HashMap;

    .line 226
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestAppDownload(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAppDownload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->setDeviceIdAgain()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->initConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mManagedApps:Ljava/util/HashMap;

    .line 487
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInstallResponseListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    .line 490
    invoke-direct {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestManagedAppDownload(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mAppInstallResponseListener:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    .line 492
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->requestManagedAppDownload_rState(Ljava/lang/String;Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;)V

    sget-boolean v1, Lcom/prompt/kiosk/slauncher/EmmManager;->sLog:Z

    if-eqz v1, :cond_3

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMM requestAppDownload: No app info for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "EMM Connection Failed"

    const/4 v0, 0x3

    .line 499
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->debug(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setDeviceIdAgain()V
    .locals 7

    const-string v0, "setDeviceIdAgain agent library EMM mPrivateKey: [mask:L"

    const-string v1, "setDeviceIdAgain agent library EMM RsaKey: "

    const-string v2, "setDeviceIdAgain agent library EMM DeviceId: "

    const-string v3, "setDeviceIdAgain agent library EMM TenantId: "

    .line 156
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v4
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 158
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 162
    :try_start_1
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    sget-object v5, Lcom/prompt/kiosk/slauncher/EmmManager;->classSimpleName:Ljava/lang/String;

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mTenantId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getServerPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mRsaKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getClientPrivateKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    .line 172
    invoke-static {v1}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "setDeviceIdAgain agent library EMM mPrivateKey: [mask:L0]"

    .line 173
    invoke-static {v5, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->checkPrivateKeyConfig()V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager;->mPrivateKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
