.class public Lcom/prompt/kiosk/slauncher/KioskWebView;
.super Landroid/webkit/WebView;
.source "KioskWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "KioskWebView"


# instance fields
.field private mBackupContentDisposition:Ljava/lang/String;

.field private mBackupMimetype:Ljava/lang/String;

.field private mBackupUrl:Ljava/lang/String;

.field private mBackupUserAgent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadNotiFyIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mDownloadNotiFyIDList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mNotifyManager:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 65
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setupContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mDownloadNotiFyIDList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mNotifyManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 46
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setupContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mDownloadNotiFyIDList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mNotifyManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 54
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setupContextMenu()V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/KioskWebView;Ljava/lang/String;IILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/KioskWebView;->createIntent(Ljava/lang/String;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/KioskWebView;Landroid/view/MenuItem;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setonMenuItemClick(Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/KioskWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/prompt/kiosk/slauncher/KioskWebView;->downloadStartNormal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private backupDownloadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    return-void
.end method

.method private createIntent(Ljava/lang/String;IILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_ACTION_ID"

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_HIT_TEST_RESULT"

    .line 102
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_URL"

    .line 103
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private downloadStartNormal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    const-string p6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 180
    invoke-virtual {p5, p6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p5

    if-eqz p5, :cond_0

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/KioskWebView;->backupDownloadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 183
    check-cast p1, Landroid/app/Activity;

    filled-new-array {p6}, [Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2329

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 185
    move-object v0, p5

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setonMenuItemClick(Landroid/view/MenuItem;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebView$2;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebView;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setupContextMenu()V
    .locals 1

    .line 69
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebView$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebView$1;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebView;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method


# virtual methods
.method public clearBackupDownloadStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    return-void
.end method

.method public downloadStartNormal()V
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 192
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupUserAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupContentDisposition:Ljava/lang/String;

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mBackupMimetype:Ljava/lang/String;

    move-object v2, v6

    invoke-static/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebView;->classSimpleName:Ljava/lang/String;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadStart 1-1 url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentDisposition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mimetype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct/range {p0 .. p6}, Lcom/prompt/kiosk/slauncher/KioskWebView;->downloadStartNormal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public removeDownloadNotification()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mNotifyManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 204
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 206
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 207
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/KioskWebView;->mNotifyManager:Landroid/app/NotificationManager;

    .line 211
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
