.class public Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;
.super Landroid/app/Activity;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$FixedSpeedScroller;
    }
.end annotation


# static fields
.field public static final PERMISSION_REQUEST_CODE_READ_EXTERNAL_STORAGE:I = 0x31388

.field public static final PERMISSION_REQUEST_CODE_READ_MEDIA:I = 0x316a6

.field private static final classSimpleName:Ljava/lang/String; = "ViewPagerActivity"


# instance fields
.field files:[Ljava/io/File;

.field private final mAgentHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

.field mHandler:Landroid/os/Handler;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mThread:Ljava/lang/Thread;

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    .line 248
    new-instance v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$4;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mAgentHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->classSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->requestPermission()V

    return-void
.end method

.method private permissionCheckNImageRun()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 131
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x316a6

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 133
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x31388

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->runImage()V

    :goto_0
    return-void
.end method

.method private requestPermission()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0049

    const/4 v2, 0x1

    .line 103
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestFloatWindowPermission(Landroid/app/Activity;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 110
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->permissionCheckNImageRun()V

    :cond_2
    return-void
.end method

.method private runImage()V
    .locals 10

    const-string v0, "Type"

    const-string v1, "FilePath"

    .line 146
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v2
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 148
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 153
    :try_start_1
    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getContentManager()Lcom/sds/emm/emmagent/lib/content/ContentManager;

    move-result-object v2

    const-string v3, "KioskScreenSaver"

    invoke-virtual {v2, v3}, Lcom/sds/emm/emmagent/lib/content/ContentManager;->getContentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v2, :cond_2

    .line 155
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/io/File;

    iput-object v5, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    .line 157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 158
    new-instance v7, Ljava/io/File;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Image"

    .line 161
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 162
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    .line 163
    aput-object v7, v6, v5

    goto :goto_2

    :cond_0
    const-string v7, "Video"

    .line 164
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x2f

    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->classSimpleName:Ljava/lang/String;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "files.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    .line 179
    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 180
    new-instance v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    invoke-direct {v0, v2, v4, v3}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/lang/String;[Ljava/io/File;)V

    goto :goto_3

    .line 182
    :cond_3
    new-instance v2, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    invoke-direct {v2, v3, v0, v4}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/lang/String;[Ljava/io/File;)V

    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 186
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 188
    new-instance v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    const-string v0, "mThread is not null"

    .line 208
    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_4
    new-instance v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$2;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mThread:Ljava/lang/Thread;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 226
    new-instance v1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$3;-><init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0023

    .line 57
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680480

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f09007a

    .line 66
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 p1, 0x1

    const/4 v0, 0x2

    .line 73
    :try_start_0
    const-class v1, Landroid/support/v4/view/ViewPager;

    const-string v2, "mScroller"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    new-instance v2, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$FixedSpeedScroller;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$FixedSpeedScroller;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 76
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    .line 85
    :goto_0
    new-instance v0, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mAgentHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v1, v0, p1}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    const/4 v2, 0x0

    .line 245
    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const v0, 0x31388

    if-eq p1, v0, :cond_0

    const v0, 0x316a6

    if-ne p1, v0, :cond_2

    .line 119
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->runImage()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->finish()V

    .line 125
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->requestPermission()V

    return-void
.end method
