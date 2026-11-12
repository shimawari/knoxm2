.class public Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# static fields
.field public static final PERMISSION_REQUEST_CODE_READ_EXTERNAL_STORAGE:I = 0x31388

.field public static final PERMISSION_REQUEST_CODE_READ_MEDIA:I = 0x316a6

.field private static final classSimpleName:Ljava/lang/String; = "VideoViewActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

.field private final mHandler:Landroid/os/Handler;

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    .line 187
    new-instance v0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$4;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$4;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->classSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->requestPermission()V

    return-void
.end method

.method private permissionCheckNVideoRun()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 106
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x316a6

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 108
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x31388

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->runVideo()V

    :goto_0
    return-void
.end method

.method private requestPermission()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0049

    const/4 v2, 0x1

    .line 78
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestFloatWindowPermission(Landroid/app/Activity;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 85
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->permissionCheckNVideoRun()V

    :cond_2
    return-void
.end method

.method private runVideo()V
    .locals 7

    const-string v0, "Type"

    const-string v1, "FilePath"

    .line 119
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v2
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 121
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 126
    :try_start_1
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getContentManager()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v2

    const-string v3, "KioskScreenSaver"

    invoke-virtual {v2, v3}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->getContentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, ""

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 128
    new-instance v5, Ljava/io/File;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Image"

    .line 131
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "Video"

    .line 133
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->classSimpleName:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 145
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 148
    new-instance v1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 156
    new-instance v1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$2;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 165
    new-instance v1, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity$3;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 50
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->setContentView(I)V

    const p1, 0x7f090092

    .line 51
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    iput-object p0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680480

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 60
    new-instance p1, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 61
    invoke-static {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    const/4 v2, 0x0

    .line 184
    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const v0, 0x31388

    if-eq p1, v0, :cond_0

    const v0, 0x316a6

    if-ne p1, v0, :cond_2

    .line 94
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->runVideo()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->finish()V

    .line 100
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;->requestPermission()V

    return-void
.end method
