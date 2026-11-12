.class Lcom/prompt/kiosk/slauncher/DownloadHandler$1;
.super Ljava/lang/Thread;
.source "DownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$request:Landroid/app/DownloadManager$Request;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V
    .locals 0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DownloadHandler$1;->val$manager:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/DownloadHandler$1;->val$request:Landroid/app/DownloadManager$Request;

    .line 279
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadHandler$1;->val$manager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DownloadHandler$1;->val$request:Landroid/app/DownloadManager$Request;

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method
