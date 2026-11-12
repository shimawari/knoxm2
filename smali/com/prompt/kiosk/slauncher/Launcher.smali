.class public final Lcom/prompt/kiosk/slauncher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;,
        Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;
    }
.end annotation


# static fields
.field private static final ADVANCE_MSG:I = 0x1

.field public static final APP_INSTALL_REQUEST_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field private static final mAdvanceInterval:I = 0x4e20

.field private static final mAdvanceStagger:I = 0xfa

.field private static mAppInstallTimer:Ljava/util/Timer; = null

.field private static final mRestoreScreenOrientationDelay:I = 0x1f4

.field public static mTimerWorking:Z = false

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolderIconWorkspacePreviewStyle:I = 0x0

.field private static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I = 0x2


# instance fields
.field private floatingViewController:Lcom/prompt/kiosk/slauncher/FloatingViewController;

.field public mAppDownProgress:Landroid/widget/ProgressBar;

.field private mAtomMenuPopup:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBackgroundColor:I

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mChangeTargetInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDragController:Lcom/prompt/kiosk/slauncher/DragController;

.field private mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

.field private mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

.field mEmmInitializeFail:Z

.field private mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

.field private mFolderIconScrollEnabled:Z

.field private mFolderInfo:Lcom/prompt/kiosk/slauncher/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHidePageDivider:Z

.field private mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field private mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsOriginal:Ljava/lang/String;

.field private mIsSingleKiosk:Ljava/lang/String;

.field private mIsWorkspaceEditLocked:Z

.field private final mLauncherActionIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLauncherHomeWidgetManager:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

.field private mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

.field private mLogoAsset:Ljava/lang/String;

.field private mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mPageDividerAlpha:F

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

.field private mPickedFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSingleKioskAppId:Ljava/lang/String;

.field private mSingleKioskAppType:Ljava/lang/String;

.field mSingleKioskAutoInstall:Z

.field public mSingleKioskGuide:Landroid/widget/TextView;

.field private mSingleKioskPackageName:Ljava/lang/String;

.field private mTmpAddItemCellCoordinates:[I

.field private mUnlockScreenOrientationRunnable:Ljava/lang/Runnable;

.field private mUpdateWallpaperCmd:Ljava/lang/Runnable;

.field private mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/prompt/kiosk/slauncher/BubbleTextView;

.field private mWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

.field private mWallpaperMode:I

.field private mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

.field private mWorkspaceDefaultScreen:I

.field private mWorkspaceLoading:Z

.field private mWorkspaceOpacity:I

.field private mWorkspacePageLooping:Z

.field private mWorkspaceScreenCount:I

.field private mWorkspaceTransitionEffect:I

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolderIconWorkspacePreviewStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher$LauncherActionIntentReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherActionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mTmpAddItemCellCoordinates:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceRunning:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPaused:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUserPresent:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mVisible:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAttached:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceTimeLeft:J

    .line 136
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 151
    new-instance v3, Lcom/prompt/kiosk/slauncher/Launcher$1;

    invoke-direct {v3, p0}, Lcom/prompt/kiosk/slauncher/Launcher$1;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const/16 v3, 0x64

    iput v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceOpacity:I

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspacePageLooping:Z

    iput-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderIconScrollEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPageDividerAlpha:F

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHidePageDivider:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsWorkspaceEditLocked:Z

    .line 177
    new-instance v2, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-direct {v2}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;-><init>()V

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLogoAsset:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAutoInstall:Z

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    .line 1028
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$6;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$6;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1109
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$7;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$7;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 2534
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$14;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$14;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUnlockScreenOrientationRunnable:Ljava/lang/Runnable;

    .line 2917
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$15;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$15;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUpdateWallpaperCmd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/EmmManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/prompt/kiosk/slauncher/Launcher;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->toggleInfoButton(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/prompt/kiosk/slauncher/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/prompt/kiosk/slauncher/Launcher;J)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/prompt/kiosk/slauncher/Launcher;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->recreateLauncher(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/IconCache;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/prompt/kiosk/slauncher/Launcher;)Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/Workspace;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->resetWallpaperView()V

    return-void
.end method

.method static synthetic access$2100(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/WallpaperView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LockManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/prompt/kiosk/slauncher/Launcher;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/DragLayer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$800(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateWallpaperView()V

    return-void
.end method

.method private addPreDrawListener()V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 483
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 489
    new-instance v2, Lcom/prompt/kiosk/slauncher/Launcher$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/prompt/kiosk/slauncher/Launcher$3;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private applySpeedLockPolicy()V
    .locals 2

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sds.emm.emmagent.intent.action.SPEED_LOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sds.emm.cloud.knox.samsung"

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private bindAppOrShortcutItems(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2168
    move-object v2, v1

    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 2170
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->isDialerPackage(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "needCheckDiallerPermission"

    if-eqz v3, :cond_0

    .line 2171
    invoke-static/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2173
    :cond_0
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2174
    invoke-static/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    sget-object v3, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2178
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bind Shortcut. packageName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || appType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2179
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || isInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2178
    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EX"

    .line 2180
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " || mandatory: "

    const-string v6, " || appId: "

    const-string v7, "This is EMM Managed App. title: "

    if-eqz v4, :cond_2

    .line 2181
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2182
    iget-wide v8, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    invoke-virtual {v0, v8, v9}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object v9

    .line 2183
    iget-wide v10, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iget v12, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iget v13, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v14, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v17}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2184
    iget-object v1, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2186
    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->registerManagedApp(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    .line 2187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2193
    :cond_2
    iget-wide v8, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    invoke-virtual {v0, v8, v9}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object v9

    .line 2194
    iget-wide v10, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iget v12, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iget v13, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v14, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v17}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2195
    iget-object v1, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2197
    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->registerManagedApp(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    .line 2198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private bindHomeWidget(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2233
    iget v1, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    .line 2235
    invoke-static {p0, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2236
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tp"

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherHomeWidgetManager:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

    .line 2238
    invoke-virtual {v2, p0, v1, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->createView(Landroid/content/Context;ILcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    iput-object v2, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2239
    iget-object v2, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2240
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2242
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->container:J

    iget v4, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->screen:I

    iget v5, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->cellX:I

    iget v6, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->cellY:I

    iget v7, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanX:I

    iget v8, p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    return-void
.end method

.method private checkInitWorkspace(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "launcher.last_orientation"

    .line 848
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v0, "Orientation Changed"

    .line 850
    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 855
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->initWorkspace()V

    :goto_0
    return-void
.end method

.method private completeAdd(Lcom/prompt/kiosk/slauncher/PendingAddArguments;)V
    .locals 5

    .line 294
    iget v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->requestCode:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "homeWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 296
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v3, "homeWidgetType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 297
    iget-wide v3, p1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->container:J

    long-to-int v3, v3

    iget p1, p1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->screen:I

    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->completeAddHomeWidget(IIII)V

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherHomeWidgetManager:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

    .line 300
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->syncHomeWidgetId(I)V

    :cond_0
    return-void
.end method

.method private computeMaxScales(Landroid/content/SharedPreferences;)V
    .locals 6

    .line 860
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 861
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 864
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 865
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 867
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 868
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 870
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingTop()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 872
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 873
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingTop()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v0

    :goto_0
    sub-int/2addr v2, v0

    .line 876
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result v0

    .line 877
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v4

    if-eqz v0, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x7f070000

    .line 881
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 882
    div-int/2addr v3, v0

    .line 883
    div-int/2addr v2, v4

    sub-int/2addr v2, v1

    .line 885
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Utilities;->getIconSize()I

    move-result v0

    const-string v1, "kiosk.icon_scale"

    const v4, 0x3f4ccccd    # 0.8f

    .line 886
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, p1

    int-to-float v2, v2

    div-float/2addr v2, v0

    mul-float/2addr v2, p1

    .line 887
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setScale(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private computeWorkspaceCells()V
    .locals 1

    const/16 v0, 0x9

    .line 895
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateWorkspaceLayoutMaxCells(I)V

    return-void
.end method

.method private disableDeletedApps()V
    .locals 6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2452
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->collectDeletedApps()Ljava/util/Collection;

    move-result-object v0

    .line 2453
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2454
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findShortcutByAppId(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2456
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2457
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableDeletedApps() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2458
    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 2459
    iput v3, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    .line 2460
    iget v4, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_status"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, ""

    .line 2461
    invoke-static {p0, v2, v1, v4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    .line 2462
    invoke-virtual {p0, v1, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doActionFireDownloadProxyShortcut(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "com.prompt.kiosk.slauncher.intent.extra.proxyTag"

    .line 1249
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ref"

    .line 1252
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1254
    new-instance v0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;

    invoke-direct {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "ref0"

    goto :goto_0

    .line 1257
    :cond_0
    new-instance p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;

    const v1, 0x7f0f0001

    invoke-direct {p1, p0, v1}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;-><init>(Landroid/content/Context;I)V

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_0
    const/4 v1, 0x0

    .line 1261
    invoke-virtual {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->getProxyUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-direct {p0, v2, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->startDownloadLink(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 1268
    :cond_1
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->getDefaultStore()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1270
    invoke-virtual {v0, p1, v2}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->getProxyUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1271
    invoke-direct {p0, v3, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->startDownloadLink(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 1277
    :cond_2
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->getProxyUrls(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 1279
    :cond_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_5

    .line 1281
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1282
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->getDefaultStore()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1283
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/prompt/kiosk/slauncher/Launcher;->startDownloadLink(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private doActionMain(Landroid/content/Intent;)V
    .locals 3

    .line 1224
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeSystemDialogs()V

    .line 1225
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1227
    :goto_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1229
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->isTouchActive()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1233
    invoke-virtual {p1, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollingIndicatorEnabled(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1234
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->moveToDefaultScreen(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1235
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setScrollingIndicatorEnabled(Z)V

    .line 1238
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    .line 1239
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->showWorkspace(Z)V

    .line 1241
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "input_method"

    .line 1243
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1244
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method private findCellSpan(Lcom/prompt/kiosk/slauncher/CellLayout;[I[I)Z
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1460
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1461
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1462
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    aput p1, p3, v1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1463
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    aput p1, p3, v2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1464
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    aput p1, p2, v1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1465
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    aput p1, p2, v2

    goto :goto_0

    .line 1468
    :cond_0
    aget v5, p2, v1

    aget v6, p2, v2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget v7, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget v8, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/prompt/kiosk/slauncher/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v2

    goto :goto_0

    .line 1472
    :cond_1
    aget v0, p2, v1

    aget p2, p2, v2

    invoke-virtual {p1, p3, v0, p2}, Lcom/prompt/kiosk/slauncher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    :goto_0
    return v2
.end method

.method private finishMultiKioskBindingItems()V
    .locals 7

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "finishBindingItems() request download"

    .line 2276
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2277
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->attemptMandatoryDownloads()V

    .line 2280
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "needCheckDiallerPermission"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2282
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "dialerPermissionRequested"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 2284
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->isAndroidGo(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkNotificationPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0c0034

    .line 2285
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2286
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestNotificationPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 2288
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestDialerPermission(Landroid/app/Activity;)V

    .line 2290
    :goto_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string v1, "finishBindingItems() update badge count"

    .line 2295
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateBadgeCount()V

    .line 2299
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kiosk.need_lock_update_app_list"

    .line 2301
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "KioskLauncherAppList"

    .line 2302
    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->isKioskInventoryEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2303
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findLauncherPackage()Ljava/util/ArrayList;

    move-result-object v4

    .line 2304
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Sending kiosk launcher app list."

    .line 2305
    invoke-static {v0, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sds.emm.emmagent.intent.action.KIOSK_LAUNCHER_APP_LIST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sds.emm.cloud.knox.samsung"

    .line 2307
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.sds.emm.emmagent.extra.EXTRA_LAUNCHER_PACKAGE_NAME"

    .line 2308
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.sds.emm.emmagent.extra.EXTRA_LAUNCHER_APP_LIST"

    .line 2309
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2310
    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2311
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_3
    const-string v1, "Kiosk launcher\'s runnable package is empty."

    .line 2313
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private finishSingleKioskBindingItems()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2320
    invoke-static {v0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0049

    const/4 v1, 0x1

    .line 2321
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2322
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "calledFloatWindowPermission"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestFloatWindowPermission(Landroid/app/Activity;)V

    .line 2325
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    .line 2330
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAutoInstall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppId:Ljava/lang/String;

    .line 2332
    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Request Single Kiosk App Download"

    .line 2333
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2334
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->attemptMandatoryDownloads()V

    goto :goto_0

    :cond_1
    const-string v0, "EX"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppType:Ljava/lang/String;

    .line 2335
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2336
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->showManualInstallGuide()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Single Kiosk Already Installed"

    .line 2340
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->hideInstallGuide()V

    .line 2342
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->stopAppInstallRequestTimer()V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleFolderClick(Lcom/prompt/kiosk/slauncher/FolderIcon;)V
    .locals 5

    .line 1792
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/FolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    check-cast v0, Lcom/prompt/kiosk/slauncher/FolderInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1793
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/prompt/kiosk/slauncher/Folder;

    move-result-object v1

    .line 1797
    iget-boolean v2, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    sget-object v2, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1798
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1800
    iput-boolean v2, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->opened:Z

    .line 1803
    :cond_0
    iget-boolean v0, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->opened:Z

    if-nez v0, :cond_1

    .line 1805
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    .line 1807
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->openFolder(Lcom/prompt/kiosk/slauncher/FolderIcon;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1812
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    .line 1814
    invoke-virtual {p0, v1, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Z)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1815
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1817
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    .line 1819
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->openFolder(Lcom/prompt/kiosk/slauncher/FolderIcon;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initWallpaperView()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    .line 2882
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    .line 2883
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    .line 2885
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Wallpaper init failed"

    .line 2888
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    .line 2891
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/graphics/drawable/Drawable;)V

    .line 2894
    :goto_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kiosk.background_color"

    const/4 v2, -0x1

    .line 2895
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBackgroundColor:I

    const-string v1, "kiosk.is_original"

    const-string v2, ""

    .line 2897
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsOriginal:Ljava/lang/String;

    const-string v1, "ORIGINAL"

    .line 2899
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    const/4 v1, 0x1

    .line 2900
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaperScaleType(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    const/4 v1, 0x2

    .line 2902
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaperScaleType(I)V

    :goto_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBackgroundColor:I

    .line 2905
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    .line 2906
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setWallpaperView(Lcom/prompt/kiosk/slauncher/WallpaperView;)V

    return-void
.end method

.method private isDialerOrSms(Landroid/content/Intent;)Z
    .locals 2

    .line 1711
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1712
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/BadgeUtils;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSingleKiosk()Z
    .locals 2

    const-string v0, "true"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsSingleKiosk:Ljava/lang/String;

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadWorkspaceCells()V
    .locals 4

    .line 899
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountX()I

    move-result v0

    .line 900
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getCellCountY()I

    move-result v1

    .line 902
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "workspace.cellcount_x"

    .line 903
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "workspace.cellcount_y"

    .line 904
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 907
    invoke-virtual {v2, v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->setCellCount(II)V

    .line 908
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateWorkspaceLayoutCells(II)V

    :cond_0
    return-void
.end method

.method private loadWorkspacePrefs()V
    .locals 3

    .line 913
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "workspace.screencount"

    const/4 v2, 0x5

    .line 914
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceScreenCount:I

    const-string v1, "workspace.screen_default"

    const/4 v2, 0x2

    .line 915
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceDefaultScreen:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceScreenCount:I

    if-gt v1, v0, :cond_0

    .line 917
    div-int/2addr v1, v2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceDefaultScreen:I

    :cond_0
    return-void
.end method

.method private recreateLauncher(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1394
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->resetLoader()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    const/4 v0, 0x1

    .line 1397
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->update(Z)V

    .line 1401
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->recreate()V

    return-void
.end method

.method private resetWallpaperView()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    const/4 v1, 0x0

    .line 2910
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2912
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher.current_screen"

    const/4 v1, -0x1

    .line 583
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 585
    invoke-virtual {v2, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setCurrentPage(I)V

    :cond_1
    const-string v0, "launcher.add_id"

    const-wide/16 v2, -0x1

    .line 588
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "launcher.add_container"

    .line 589
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "launcher.add_screen"

    .line 590
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    cmp-long v8, v4, v2

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 593
    iput-wide v4, v8, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    :cond_2
    const-string v4, "launcher.picked_apps_array"

    .line 596
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPickedFolderApps:Ljava/util/ArrayList;

    :cond_3
    cmp-long v2, v6, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 602
    iput-wide v6, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 603
    iput v0, v1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    const-string v1, "launcher.add_cell_x"

    .line 604
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    const-string v1, "launcher.add_cell_y"

    .line 605
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    :cond_4
    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x0

    .line 610
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "launcher.rename_folder_id"

    .line 612
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    sget-object v4, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 613
    invoke-virtual {v2, p0, v4, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderInfo:Lcom/prompt/kiosk/slauncher/FolderInfo;

    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    :cond_5
    const-string v0, "launcher.change_target_id"

    .line 617
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mChangeTargetInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-nez p1, :cond_6

    .line 619
    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/ItemInfo;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mChangeTargetInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    :cond_6
    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 1087
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 1088
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceSentTime:J

    return-void
.end method

.method private setBeforeFinishBindingItems()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v0, :cond_0

    .line 2349
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2350
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2358
    :try_start_0
    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2360
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    :goto_2
    sget-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 2369
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 2370
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->completeAdd(Lcom/prompt/kiosk/slauncher/PendingAddArguments;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 2372
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 2375
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2376
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->replaceFolderIfNeeded(Lcom/prompt/kiosk/slauncher/Workspace;)V

    :cond_4
    return-void
.end method

.method private setButtonSettings(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 723
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 724
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v0

    const-string v1, "kiosk.password_hash"

    const-string v2, ""

    .line 725
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f090017

    .line 728
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 730
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 731
    new-instance v2, Lcom/prompt/kiosk/slauncher/Launcher$4;

    invoke-direct {v2, p0}, Lcom/prompt/kiosk/slauncher/Launcher$4;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const v1, 0x7f090018

    if-lez p1, :cond_1

    .line 742
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 744
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getPointColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v0, 0x0

    .line 745
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 746
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$5;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$5;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 757
    :cond_1
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 759
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setEmmAppsProperties(Lcom/prompt/kiosk/slauncher/EmmAppInfo;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/ContentValues;)V
    .locals 4

    .line 2495
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2497
    invoke-static {v0, p2}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getIntentFromShortcut(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2498
    invoke-static {v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getResolveInfo(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2500
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2501
    iput-object v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    .line 2502
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onEmmAppsUpdated() exists "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const/4 v3, 0x0

    .line 2506
    invoke-virtual {v2, v0, v1, v3}, Lcom/prompt/kiosk/slauncher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2507
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2508
    invoke-static {p3, v1, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->isNewerVersion(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p3, v2, p2, v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->drawIcon(Ljava/lang/String;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/graphics/Bitmap;Z)V

    .line 2509
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2511
    invoke-static {p1, p3, p2}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getIconFromPackageManager(Ljava/lang/String;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2512
    invoke-static {p3, v0, p2, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->setIcon(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherModel;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string p3, "onEmmAppsUpdated() expired/disabled "

    .line 2515
    invoke-static {p1, p3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2516
    iget-object p3, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFallbackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 2517
    iput p1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    :goto_0
    return-void
.end method

.method private setLogoSettings()V
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLogoAsset:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0x7f09004f

    .line 708
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLogoAsset:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/Utilities;->loadAssetImage(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 712
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v6}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/prompt/kiosk/slauncher/Workspace;->setPadding(IIII)V

    .line 713
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Utilities;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 714
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading logo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLogoAsset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static setScreen(I)V
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 284
    monitor-enter v0

    :try_start_0
    sput p0, Lcom/prompt/kiosk/slauncher/Launcher;->sScreen:I

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setupConfigs(Landroid/os/Bundle;)V
    .locals 7

    .line 776
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/KioskConfig;->loadKioskConfig(Landroid/content/Context;)V

    .line 777
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->checkInitWorkspace(Landroid/os/Bundle;)V

    .line 778
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->computeWorkspaceCells()V

    .line 779
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "workspace.opacity"

    const/16 v2, 0x64

    .line 782
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceOpacity:I

    const-string v1, "workspace.looping"

    const/4 v3, 0x1

    .line 785
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspacePageLooping:Z

    const-string v1, "workspace.wallpaper_mode"

    const/4 v4, 0x0

    .line 788
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperMode:I

    const-string v1, "kiosk.screen_orientation"

    if-eqz p1, :cond_1

    const-string v5, "launcher.orientation"

    .line 791
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 795
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 797
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->setupKioskOrientation(Landroid/app/Activity;I)V

    goto :goto_1

    .line 793
    :cond_1
    :goto_0
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 792
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->setupKioskOrientation(Landroid/app/Activity;I)V

    :goto_1
    const-string p1, "workspace.transition_effect"

    .line 801
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceTransitionEffect:I

    const-string p1, "foldericon.scroll"

    .line 804
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderIconScrollEnabled:Z

    const-string p1, "foldericon.style"

    .line 808
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "foldericon.workspace.style"

    .line 809
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/prompt/kiosk/slauncher/Launcher;->sFolderIconWorkspacePreviewStyle:I

    const-string p1, "page.divider.hide"

    .line 812
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHidePageDivider:Z

    const-string p1, "workspace.edit_lock"

    .line 815
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsWorkspaceEditLocked:Z

    const-string p1, "workspace.icon.size"

    .line 818
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    .line 819
    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setScale(F)V

    const-string p1, "workspace.icon.text.color"

    const/4 v1, -0x1

    .line 822
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    .line 823
    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextColor(I)V

    const-string p1, "workspace.icon.text.hide"

    .line 826
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    xor-int/2addr p1, v3

    .line 827
    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextEnabled(Z)V

    const-string p1, "workspace.icon.text.shadow"

    .line 830
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    .line 831
    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setShadowEnabled(Z)V

    const-string p1, "workspace.icon.text.style"

    .line 834
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    .line 835
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->setTextStyle(Landroid/graphics/Typeface;)V

    const-string p1, "kiosk.logo_asset"

    const-string v1, ""

    .line 837
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLogoAsset:Ljava/lang/String;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 838
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->setPointColor()V

    .line 840
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getWallpaperManager()Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    return-void
.end method

.method private setupViews()V
    .locals 6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    const v1, 0x7f090036

    .line 629
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/DragLayer;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    const v2, 0x7f090095

    .line 630
    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/Workspace;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 633
    invoke-virtual {v1, p0, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->setup(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragController;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 634
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->setViewTranslucentStatusAndNavigation(Lcom/prompt/kiosk/slauncher/DragLayer;)V

    .line 636
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 639
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->loadWorkspacePrefs()V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    const/4 v3, 0x0

    .line 640
    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 641
    invoke-virtual {v2, p0}, Lcom/prompt/kiosk/slauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 642
    invoke-virtual {v2, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setup(Lcom/prompt/kiosk/slauncher/DragController;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 643
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragController;->addDragListener(Lcom/prompt/kiosk/slauncher/DragController$DragListener;)V

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceScreenCount:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 645
    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->addPage()Lcom/prompt/kiosk/slauncher/CellLayout;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceDefaultScreen:I

    .line 647
    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->setDefaultScreen(I)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget-boolean v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspacePageLooping:Z

    .line 648
    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->setWrapMode(Z)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperMode:I

    .line 649
    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->setWallpaperMode(I)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceTransitionEffect:I

    .line 650
    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->setTransitionEffect(I)V

    const-string v2, "kiosk.is_single_kiosk"

    const-string v4, "false"

    .line 653
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsSingleKiosk:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    const v4, 0x7f090085

    .line 654
    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    const-string v2, "kiosk.single_kiosk_guide"

    const v4, 0x7f0c0046

    .line 655
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskGuide:Landroid/widget/TextView;

    .line 656
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    const v5, 0x7f090010

    .line 657
    invoke-virtual {v4, v5}, Lcom/prompt/kiosk/slauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAppDownProgress:Landroid/widget/ProgressBar;

    const v5, 0x7f0c0048

    if-ne v2, v5, :cond_1

    .line 659
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 662
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v2

    const v4, 0x7f09007d

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 666
    invoke-virtual {p0, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/prompt/kiosk/slauncher/PositionMarker;

    invoke-virtual {v2, v4}, Lcom/prompt/kiosk/slauncher/Workspace;->setPositionMarker(Lcom/prompt/kiosk/slauncher/PositionMarker;)V

    .line 668
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->hideInstallGuide()V

    .line 671
    :goto_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->loadWorkspaceCells()V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 674
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragController;->setDragScoller(Lcom/prompt/kiosk/slauncher/DragScroller;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 675
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragController;->setScrollView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 676
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragController;->setMoveTarget(Landroid/view/View;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 677
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragController;->addDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    .line 679
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->setStatusBarSettings(Landroid/content/SharedPreferences;Landroid/view/Window;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHidePageDivider:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0xff

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPageDividerAlpha:F

    .line 684
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setLogoSettings()V

    .line 686
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->computeMaxScales(Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 688
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getScrollingIndicator()Landroid/widget/ImageView;

    move-result-object v0

    .line 689
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 690
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/Workspace;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/prompt/kiosk/slauncher/Workspace;->setPadding(IIII)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 693
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 694
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 698
    :cond_5
    :goto_3
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->setButtonSettings(Landroid/content/SharedPreferences;)V

    .line 700
    new-instance v0, Lcom/prompt/kiosk/slauncher/WallpaperView;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 701
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/prompt/kiosk/slauncher/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 703
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->initWallpaperView()V

    return-void
.end method

.method private startActivityFromDialog(Landroid/content/Intent;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V
    .locals 0

    .line 1745
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1746
    instance-of p1, p3, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz p1, :cond_0

    .line 1747
    check-cast p3, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResume:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    const/4 p1, 0x1

    .line 1748
    invoke-virtual {p3, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setStayPressed(Z)V

    :cond_0
    return-void
.end method

.method private startDownloadLink(Ljava/lang/String;I)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1292
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1294
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 1295
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t launch appstore for download target app"

    .line 1297
    invoke-static {v0, v1, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download link not available for appStore "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method private startLockTaskMode()V
    .locals 2

    .line 2391
    :try_start_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/prompt/kiosk/utils/AppUtils;->isLockTaskModeRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "startLockTask() onResume()"

    .line 2392
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->startLockTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "startLockTask - Invalid task, not in foreground"

    .line 2396
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private toggleInfoButton(Z)V
    .locals 1

    const v0, 0x7f090017

    .line 511
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 513
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private unbindWorkspaceItems()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->unbindWorkspaceItems()V

    :cond_0
    return-void
.end method

.method private updateBadgeCount()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2381
    invoke-static {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->updateDialerSmsBadgeCount(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2382
    invoke-static {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->updateGeneralAppBadgeCount(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    return-void
.end method

.method private updateRunning()V
    .locals 9

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 1093
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v3, :cond_4

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceRunning:Z

    const-wide/16 v3, 0x4e20

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v0

    .line 1098
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->sendAdvanceMessage(J)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 1100
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAutoAdvanceTimeLeft:J

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 1103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 1104
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateWallpaperView()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperView:Lcom/prompt/kiosk/slauncher/WallpaperView;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUpdateWallpaperCmd:Ljava/lang/Runnable;

    .line 2933
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/WallpaperView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private whenSingleKioskInstalled()V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->hideInstallGuide()V

    .line 418
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->isAndroidGoAndCannotFloatWindow(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Android Go, Q or Higher Device. Does not automatically launch the single kiosk app."

    .line 424
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "power"

    .line 429
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 434
    invoke-static {v1}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.MAIN"

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    const-string v1, "android.intent.category.HOME"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x0

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start Kiosk App = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 446
    invoke-static {v0}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->toggleInfoButton(Z)V

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 451
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->showSingleKioskFloatingButton(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Single Kiosk App Error (powerManager is null or not interactive)"

    .line 453
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private whenSingleKioskNotInstalled()V
    .locals 6

    const-string v0, "IA"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppType:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAutoInstall:Z

    goto :goto_0

    :cond_0
    const-string v0, "PA"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppType:Ljava/lang/String;

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAutoInstall:Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->showManualInstallGuide()V

    goto :goto_0

    .line 472
    :cond_2
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "showedError"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;-><init>()V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, v2, v4, v5}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    .line 475
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const v0, 0x7f0c0044

    .line 477
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->showErrorGuide(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method addFolder(Lcom/prompt/kiosk/slauncher/CellLayout;JIII)Lcom/prompt/kiosk/slauncher/FolderIcon;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x0

    if-nez v9, :cond_0

    return-object v0

    .line 1480
    :cond_0
    new-instance v10, Lcom/prompt/kiosk/slauncher/FolderInfo;

    invoke-direct {v10}, Lcom/prompt/kiosk/slauncher/FolderInfo;-><init>()V

    const v1, 0x7f0c000a

    .line 1481
    invoke-virtual {v8, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v10, Lcom/prompt/kiosk/slauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    if-ltz p5, :cond_2

    if-gez p6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, p5

    move/from16 v17, p6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    .line 1486
    invoke-virtual {v9, v1, v2, v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Launcher;->showOutOfSpaceMessage()V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    aget v0, v1, v0

    aget v1, v1, v2

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v17

    .line 1495
    invoke-static/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 1496
    iget-wide v1, v10, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0b0007

    iget-object v1, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 1499
    invoke-static {v0, v8, v9, v10, v1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->fromXml(ILcom/prompt/kiosk/slauncher/Launcher;Landroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/FolderInfo;Lcom/prompt/kiosk/slauncher/IconCache;)Lcom/prompt/kiosk/slauncher/FolderIcon;

    move-result-object v0

    iget-object v11, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    const/16 v18, 0x1

    const/16 v19, 0x1

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-object v12, v0

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v20}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    return-object v0
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 2209
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setLoadOnResume()Z

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 2210
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 2211
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2213
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2214
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2215
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    .line 2216
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 2217
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 2218
    instance-of v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 2219
    check-cast v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 2220
    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2222
    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->registerManagedApp(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .line 2134
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setLoadOnResume()Z

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v10, :cond_5

    :goto_0
    if-ge p2, p3, :cond_4

    .line 2139
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 2141
    iget-wide v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2142
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->updateItemSpanXYIfNeeded(Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    .line 2145
    :cond_0
    iget v1, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->convertItemTypeToDefaultIfNeeded(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 2159
    :cond_1
    check-cast v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->bindHomeWidget(Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V

    goto :goto_1

    .line 2154
    :cond_2
    invoke-virtual {v10}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v0

    check-cast v2, Lcom/prompt/kiosk/slauncher/FolderInfo;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    const v4, 0x7f0b0007

    .line 2153
    invoke-static {v4, p0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/FolderIcon;->fromXml(ILcom/prompt/kiosk/slauncher/Launcher;Landroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/FolderInfo;Lcom/prompt/kiosk/slauncher/IconCache;)Lcom/prompt/kiosk/slauncher/FolderIcon;

    move-result-object v1

    .line 2155
    iget-wide v2, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iget v4, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iget v5, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v6, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iget v7, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iget v8, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 2149
    :cond_3
    invoke-direct {p0, v10, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->bindAppOrShortcutItems(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2163
    :cond_4
    invoke-virtual {v10}, Lcom/prompt/kiosk/slauncher/Workspace;->requestLayout()V

    :cond_5
    return-void
.end method

.method public bindPackagesUpdated([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelDragByModelReloading()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 2523
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 2524
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragController;->cancelDrag()V

    :cond_0
    return-void
.end method

.method public closeFolder()V
    .locals 1

    const/4 v0, 0x1

    .line 1837
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder(Z)V

    return-void
.end method

.method closeFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Z)V
    .locals 0

    .line 1841
    invoke-static {p1, p0, p2}, Lcom/prompt/kiosk/slauncher/FolderUtil;->closeFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Lcom/prompt/kiosk/slauncher/Launcher;Z)V

    return-void
.end method

.method closeFolder(Z)V
    .locals 1

    .line 1845
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Z)V

    :cond_0
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .line 1201
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    return-void
.end method

.method completeAddHomeWidget(IIII)V
    .locals 21

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 1419
    invoke-static/range {p0 .. p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidget(Landroid/content/Context;I)Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    move-result-object v10

    move/from16 v0, p3

    int-to-long v13, v0

    move/from16 v15, p4

    .line 1422
    invoke-virtual {v8, v13, v14, v15}, Lcom/prompt/kiosk/slauncher/Launcher;->getCellLayout(JI)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v6

    const/4 v1, 0x0

    .line 1424
    iget v2, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    iget v3, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[ILcom/prompt/kiosk/slauncher/CellLayout;)[I

    move-result-object v0

    iget-object v11, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1430
    invoke-direct {v8, v6, v0, v11}, Lcom/prompt/kiosk/slauncher/Launcher;->findCellSpan(Lcom/prompt/kiosk/slauncher/CellLayout;[I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Launcher;->showOutOfSpaceMessage()V

    return-void

    .line 1438
    :cond_0
    iput v9, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    move/from16 v1, p1

    .line 1439
    iput v1, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    const/4 v12, 0x0

    .line 1440
    aget v1, v0, v12

    iput v1, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanX:I

    const/16 v16, 0x1

    .line 1441
    aget v0, v0, v16

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanY:I

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1442
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanX:I

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minSpanX:I

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1443
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanY:I

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minSpanY:I

    .line 1445
    aget v5, v11, v12

    aget v6, v11, v16

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v13

    move/from16 v4, p4

    invoke-static/range {v0 .. v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ItemInfo;JIIIZ)V

    iget-boolean v0, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherHomeWidgetManager:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

    .line 1449
    invoke-virtual {v0, v8, v9, v10}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->createView(Landroid/content/Context;ILcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    iput-object v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1450
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1451
    iget-object v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v10}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1453
    iget-object v1, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v2, v11, v12

    aget v17, v11, v16

    iget v3, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanX:I

    iget v4, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanY:I

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-object v11, v0

    move-object v12, v1

    move/from16 v15, p4

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 1453
    invoke-virtual/range {v11 .. v20}, Lcom/prompt/kiosk/slauncher/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    :cond_1
    return-void
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 952
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    if-eqz p4, :cond_0

    .line 953
    invoke-virtual {p4}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p3, p2, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->applyFromShortcutInfo(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/IconCache;F)V

    .line 954
    invoke-virtual {p1, p0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setBubbleEnabled(Z)V

    .line 956
    invoke-virtual {p1, p4}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    return-object p1
.end method

.method createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method createShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0004

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1546
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1547
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "debug.launcher2.dumpstate"

    const/4 v1, 0x0

    .line 1551
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1552
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->dumpState()V

    :cond_1
    return v2

    .line 1557
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_3

    return v2

    .line 1560
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 2562
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object p1, Lcom/prompt/kiosk/slauncher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 2563
    invoke-static {p3, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public dumpState()V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWorkspaceLoading="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRestoring="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWaitingForResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSavedInstanceState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sFolders.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2556
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->dumpState()V

    const-string v1, "END launcher2 dump state"

    .line 2557
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishBindingItems()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWallpaperManager:Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;

    const/4 v1, 0x1

    .line 2253
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWallpaperManager;->setUpdate(Z)V

    .line 2254
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateWallpaperView()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "finishBindingItems() EMM init fail: finish"

    .line 2257
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->finish()V

    return-void

    .line 2261
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setLoadOnResume()Z

    .line 2262
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setBeforeFinishBindingItems()V

    .line 2268
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2269
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->finishSingleKioskBindingItems()V

    goto :goto_0

    .line 2271
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->finishMultiKioskBindingItems()V

    :goto_0
    return-void
.end method

.method getCellLayout(JI)Lcom/prompt/kiosk/slauncher/CellLayout;
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1890
    invoke-virtual {p1, p3}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    return-object p1
.end method

.method public getDragController()Lcom/prompt/kiosk/slauncher/DragController;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    return-object v0
.end method

.method getFolderInfo(J)Lcom/prompt/kiosk/slauncher/FolderInfo;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 1541
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/FolderInfo;

    return-object p1
.end method

.method public getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    return-object v0
.end method

.method public getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
    .locals 2

    const-wide/16 v0, -0x64

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModel()Lcom/prompt/kiosk/slauncher/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    return-object v0
.end method

.method getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;
    .locals 5

    .line 1598
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1601
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1602
    instance-of v4, v3, Lcom/prompt/kiosk/slauncher/AbstractFolder;

    if-eqz v4, :cond_0

    .line 1603
    check-cast v3, Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1604
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    return-object v0
.end method

.method public getScaleForContainer(J)F
    .locals 2

    const-wide/16 v0, -0x64

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    .line 2991
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getScale()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II[ILcom/prompt/kiosk/slauncher/CellLayout;)[I
    .locals 1

    const/4 p4, 0x0

    .line 996
    invoke-static {p0, p1, p4}, Lcom/prompt/kiosk/slauncher/Utilities;->AppWidgetHostView_getDefaultPaddingForWidget_compat(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 999
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    .line 1000
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p1

    if-eqz p5, :cond_0

    .line 1003
    invoke-virtual {p5, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/CellLayout;->rectToCell(II[I)[I

    move-result-object p1

    return-object p1

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object p1

    return-object p1
.end method

.method getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    return-object v0
.end method

.method public getWorkspaceOpacity()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceOpacity:I

    return v0
.end method

.method public hideInstallGuide()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 2017
    new-instance v1, Lcom/prompt/kiosk/slauncher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/Launcher$10;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isFolderIconScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderIconScrollEnabled:Z

    return v0
.end method

.method public isWorkspaceEditLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsWorkspaceEditLocked:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public lockScreenOrientation()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "lockScreenOrientation"

    .line 2529
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUnlockScreenOrientationRunnable:Ljava/lang/Runnable;

    .line 2530
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2531
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->mapConfigurationOriActivityInfoOri(Landroid/app/Activity;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 310
    invoke-static {p0}, Lcom/prompt/kiosk/utils/PermissionUtils;->requestDialerPermission(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 317
    iget-wide v0, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 318
    new-instance p2, Lcom/prompt/kiosk/slauncher/PendingAddArguments;

    invoke-direct {p2}, Lcom/prompt/kiosk/slauncher/PendingAddArguments;-><init>()V

    .line 319
    iput p1, p2, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->requestCode:I

    .line 320
    iput-object p3, p2, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->intent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 321
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iput-wide v0, p2, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->container:J

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 322
    iget p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iput p1, p2, Lcom/prompt/kiosk/slauncher/PendingAddArguments;->screen:I

    .line 325
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prompt/kiosk/slauncher/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->completeAdd(Lcom/prompt/kiosk/slauncher/PendingAddArguments;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1050
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1053
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1054
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 1055
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1056
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1057
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAttached:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mVisible:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1565
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getOpenFolder()Lcom/prompt/kiosk/slauncher/AbstractFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1569
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->showOutlinesTemporarily()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1726
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1727
    instance-of v1, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 1728
    check-cast v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    invoke-virtual {p0, v0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->onClickShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1729
    :cond_1
    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-eqz v0, :cond_2

    .line 1730
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_2

    .line 1731
    check-cast p1, Lcom/prompt/kiosk/slauncher/FolderIcon;

    .line 1732
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->handleFolderClick(Lcom/prompt/kiosk/slauncher/FolderIcon;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickShortcut(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V
    .locals 5

    .line 1627
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskDialog;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/KioskDialog;-><init>()V

    .line 1629
    iget v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    if-nez v1, :cond_7

    .line 1631
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getShortcutIntent(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v1

    .line 1638
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->isDialerOrSms(Landroid/content/Intent;)Z

    move-result v2

    .line 1641
    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sds.emm.client.ui.CONTENTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p1, 0x13

    .line 1642
    invoke-static {p1}, Lcom/prompt/kiosk/utils/UIUtils;->getKMSubActivity(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 1643
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1645
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1647
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1649
    :cond_0
    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sds.emm.client.ui.CLEAR_APP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1650
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sds.emm.emmagent.activity.CLEAR_APP_DATA"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x14208000

    .line 1651
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1653
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 1655
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1657
    :cond_1
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 1663
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1665
    invoke-static {v2}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkNotificationPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/prompt/kiosk/utils/PermissionUtils;->isAndroidGo(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1666
    sget-object p2, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_NOTIFICATION_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto/16 :goto_0

    .line 1668
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivityFromDialog(Landroid/content/Intent;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1671
    :cond_3
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1676
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1678
    invoke-static {v2}, Lcom/prompt/kiosk/utils/PermissionUtils;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1679
    sget-object p2, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_FLOAT_WINDOW_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 1681
    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivityFromDialog(Landroid/content/Intent;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1692
    :cond_5
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v2, "AppIconType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bookmark"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1693
    invoke-static {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getBrowserIntent(Landroid/content/Context;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1694
    invoke-direct {p0, v0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivityFromDialog(Landroid/content/Intent;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1696
    :cond_6
    invoke-direct {p0, v1, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivityFromDialog(Landroid/content/Intent;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1699
    :cond_7
    iget p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 1700
    invoke-virtual {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showNotInstallDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    goto :goto_0

    .line 1701
    :cond_8
    iget p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_9

    .line 1702
    sget-object p2, Lcom/prompt/kiosk/slauncher/DialogType;->UPDATE:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 1703
    :cond_9
    iget p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    .line 1704
    sget-object p2, Lcom/prompt/kiosk/slauncher/DialogType;->EXPIRED:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 1705
    :cond_a
    iget p2, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    .line 1706
    sget-object p2, Lcom/prompt/kiosk/slauncher/DialogType;->INEXECUTABLE:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    :cond_b
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    iput-object p0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 202
    invoke-static {p0}, Lcom/prompt/kiosk/utils/ContextStore;->setContext(Landroid/content/Context;)V

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getResourceManager(Z)Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 208
    invoke-virtual {v1, p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->setLauncher(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 209
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getIconCache()Lcom/prompt/kiosk/slauncher/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 210
    new-instance v1, Lcom/prompt/kiosk/slauncher/DragController;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/DragController;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 211
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 212
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAtomMenuPopup:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 213
    new-instance v1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherHomeWidgetManager:Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;

    .line 219
    new-instance v1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    invoke-direct {v1, p0, v3}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;-><init>(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/IconCache;)V

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->checkForLocaleChange()V

    .line 221
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->setupConfigs(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->setWindowStatusAndNavigation(Landroid/view/Window;)V

    const v1, 0x7f0b000a

    .line 223
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->setContentView(I)V

    .line 224
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->setupViews()V

    .line 226
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    new-instance v3, Lcom/prompt/kiosk/slauncher/LockManager;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "kiosk.password_salt"

    const-string v6, ""

    .line 228
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "kiosk.password_hash"

    .line 229
    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "kiosk.password_type"

    const/4 v8, 0x0

    .line 230
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/prompt/kiosk/slauncher/LockManager;-><init>(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 231
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getSifIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/prompt/kiosk/slauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "kiosk.is_single_kiosk"

    const-string v4, "false"

    .line 233
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIsSingleKiosk:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->floatingViewController:Lcom/prompt/kiosk/slauncher/FloatingViewController;

    if-nez v1, :cond_0

    const-string v1, "Floating Button Init Complete"

    .line 236
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->getNewInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/FloatingViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->floatingViewController:Lcom/prompt/kiosk/slauncher/FloatingViewController;

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "showedError"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 243
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    if-nez p1, :cond_2

    const-string p1, "call mModel.startLoader() in onCreate()"

    .line 250
    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 251
    invoke-virtual {p1, p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    :cond_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherActionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->getConfigIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$2;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 264
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    if-eqz v0, :cond_3

    .line 265
    check-cast p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->getEmmManager()Lcom/prompt/kiosk/slauncher/EmmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    if-eqz p1, :cond_3

    .line 267
    invoke-virtual {p1, p0}, Lcom/prompt/kiosk/slauncher/EmmManager;->onActivityCreated(Landroid/app/Activity;)V

    .line 271
    :cond_3
    new-instance p1, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 272
    invoke-static {v0, p1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    .line 1352
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1356
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setWallpaperDimension()V

    .line 1358
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1361
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 1362
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 1363
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 1370
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1372
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1374
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->unbindWorkspaceItems()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 1376
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLauncherActionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1377
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 1378
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 1380
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->clearAllUserAnimationViews()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1382
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1383
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mResManager:Lcom/prompt/kiosk/slauncher/ResourceManager;

    .line 1387
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->clearCache()V

    .line 1388
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->resetWallpaperView()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEMMAgentReceiver:Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;

    .line 1390
    invoke-static {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;->setEMMAgentBroadcast(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/EMMAgentReceiver;Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1065
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mVisible:Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    .line 1067
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/DragLayer;->clearAllUserAnimationViews()V

    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1070
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAttached:Z

    .line 1073
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateRunning()V

    return-void
.end method

.method public onEmmAppsUpdated(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2469
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2470
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->findShortcutByAppId(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2472
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onEmmAppsUpdated() updating "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2474
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 2476
    iget-object v4, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2477
    iput-object v2, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 2478
    iput-object v3, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->className:Ljava/lang/String;

    .line 2480
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2481
    invoke-direct {p0, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->setEmmAppsProperties(Lcom/prompt/kiosk/slauncher/EmmAppInfo;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/content/ContentValues;)V

    .line 2483
    iget v0, v1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "app_status"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2484
    invoke-static {p0, v2, v1, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/prompt/kiosk/slauncher/ItemInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2486
    invoke-virtual {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 2488
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No app with id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2491
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->disableDeletedApps()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 558
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x52

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAtomMenuPopup:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 562
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->isMenuPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAtomMenuPopup:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 563
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->dismissMenuPopupWindow()V

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 566
    sget-object p2, Lcom/prompt/kiosk/slauncher/LockFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mAtomMenuPopup:Lcom/prompt/kiosk/slauncher/AtomMenuPopup;

    .line 567
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->showWorkspaceMenuPopup()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1852
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1853
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isWorkspaceEditLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1855
    :cond_1
    instance-of v0, p1, Lcom/prompt/kiosk/slauncher/CellLayout;

    if-nez v0, :cond_2

    .line 1856
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1859
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;

    if-nez p1, :cond_3

    return v2

    .line 1865
    :cond_3
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1866
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/Workspace;->allowLongPress()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 1867
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/DragController;->isDragging()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1869
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentDropLayout()Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v0

    iget v3, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellX:I

    iget p1, p1, Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v3, p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1872
    invoke-virtual {p1, v1, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->performHapticFeedback(II)Z

    goto :goto_0

    .line 1877
    :cond_4
    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/Folder;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1879
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/Workspace;->startDrag(Lcom/prompt/kiosk/slauncher/CellLayout$CellInfo;)V

    :cond_5
    :goto_0
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1209
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1210
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->setIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewIntent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). launchedByHomeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Utilities;->isLaunchedByHomeKey(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    .line 1214
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->doActionMain(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.prompt.kiosk.slauncher.intent.action.FIRE_DOWNLOAD_PROXY_SHORTCUT"

    .line 1217
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->doActionFireDownloadProxyShortcut(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    .line 525
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPaused:Z

    .line 528
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->onPause()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 529
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/DragController;->cancelDrag()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method protected onResume()V
    .locals 4

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    .line 352
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPaused:Z

    .line 355
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->onResume()V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspaceLoading:Z

    const-string v2, "call mModel.startLoader() in onResume() if (mRestoring || mOnResumeNeedsLoad)"

    .line 358
    invoke-static {v0, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 359
    invoke-virtual {v2, p0, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mRestoring:Z

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mOnResumeNeedsLoad:Z

    :cond_1
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResume:Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setStayPressed(Z)V

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->addPreDrawListener()V

    .line 370
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->startLockTaskMode()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    const-string v2, "AllowHideInfoIcon"

    .line 373
    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->checkKioskPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->toggleInfoButton(Z)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    const-string v2, "EnableSpeedLock"

    .line 376
    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->checkKioskPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->applySpeedLockPolicy()V

    .line 380
    :cond_3
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->isSingleKiosk()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kiosk.single_kiosk_package_name"

    const-string v3, ""

    .line 383
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    const-string v2, "kiosk.single_kiosk_app_type"

    .line 384
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppType:Ljava/lang/String;

    const-string v2, "kiosk.single_kiosk_app_id"

    .line 385
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppId:Ljava/lang/String;

    .line 386
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->mAppInstallTimer:Ljava/util/Timer;

    const-string v1, "Kiosk Launcher is running in Single Kiosk Mode."

    .line 388
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package Name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / App ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / App Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskAppType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / Launcher Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-static {}, Lcom/prompt/kiosk/utils/AppUtils;->launcherVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    .line 394
    invoke-static {v1}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mSingleKioskPackageName:Ljava/lang/String;

    .line 395
    invoke-static {v0}, Lcom/prompt/kiosk/utils/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->whenSingleKioskInstalled()V

    goto :goto_0

    .line 400
    :cond_4
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->whenSingleKioskNotInstalled()V

    goto :goto_0

    :cond_5
    const-string v1, "Single kiosk package is null"

    .line 403
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kiosk Launcher is running in Multi Kiosk Mode. / Launcher Version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prompt/kiosk/utils/AppUtils;->launcherVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 410
    invoke-static {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->updateDialerSmsBadgeCount(Lcom/prompt/kiosk/slauncher/Launcher;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherModel;)V

    :goto_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 535
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->stopLoader()V

    .line 536
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSaveInstanceState("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 1315
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v0

    const-string v1, "launcher.current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "launcher.last_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1317
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1321
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->closeFolder()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1323
    iget-wide v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1324
    iget-wide v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    const-string v4, "launcher.add_id"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPickedFolderApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v1, "launcher.picked_apps_array"

    .line 1328
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1331
    iget-wide v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1332
    iget-wide v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-string v2, "launcher.add_container"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1333
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    const-string v1, "launcher.add_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1334
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    const-string v1, "launcher.add_cell_x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPendingAddInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    .line 1335
    iget v0, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    const-string v1, "launcher.add_cell_y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderInfo:Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_3

    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    .line 1339
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mFolderInfo:Lcom/prompt/kiosk/slauncher/FolderInfo;

    .line 1340
    iget-wide v0, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    const-string v2, "launcher.rename_folder_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mChangeTargetInfo:Lcom/prompt/kiosk/slauncher/ItemInfo;

    if-eqz v0, :cond_4

    const-string v1, "launcher.change_target_id"

    .line 1344
    iget-wide v2, v0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 1347
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/LockManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    .line 337
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmInitializeFail:Z

    return-void

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "kiosk.need_lock"

    const/4 v3, 0x0

    .line 344
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 345
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/LockManager;->setLockState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 347
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LockManager;->lockScreen()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 1740
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->showWorkspace(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1077
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mVisible:Z

    .line 1082
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateRunning()V

    return-void
.end method

.method public onWorkspaceMenuPopup(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1582
    :pswitch_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "kiosk.password_hash"

    const-string v1, ""

    .line 1583
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1586
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/LockManager;->setLockState(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mLockManager:Lcom/prompt/kiosk/slauncher/LockManager;

    .line 1587
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LockManager;->lockScreen()V

    goto :goto_0

    .line 1576
    :pswitch_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 1577
    new-instance v0, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;-><init>()V

    const-string v1, "InfoDialog"

    .line 1578
    invoke-virtual {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/AboutKioskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090071
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openFolder(Lcom/prompt/kiosk/slauncher/FolderIcon;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragLayer:Lcom/prompt/kiosk/slauncher/DragLayer;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mDragController:Lcom/prompt/kiosk/slauncher/DragController;

    .line 1833
    invoke-static {p1, p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderUtil;->openFolder(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragLayer;Lcom/prompt/kiosk/slauncher/DragController;)V

    return-void
.end method

.method removeFolder(Lcom/prompt/kiosk/slauncher/FolderInfo;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->sFolders:Ljava/util/HashMap;

    .line 1537
    iget-wide v1, p1, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveCurrentGuide(I)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mContext:Landroid/content/Context;

    .line 2055
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2057
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kiosk.single_kiosk_guide"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "setLoadOnResume"

    .line 2077
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mOnResumeNeedsLoad:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showErrorGuide(I)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 2030
    new-instance v1, Lcom/prompt/kiosk/slauncher/Launcher$11;

    invoke-direct {v1, p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher$11;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showInstallProgress()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 2043
    new-instance v1, Lcom/prompt/kiosk/slauncher/Launcher$12;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/Launcher$12;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showManualInstallGuide()V
    .locals 2

    const-string v0, "showManualInstallGuide"

    const/4 v1, 0x5

    .line 2003
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->debug(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 2004
    new-instance v1, Lcom/prompt/kiosk/slauncher/Launcher$9;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/Launcher$9;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showOutOfSpaceMessage()V
    .locals 2

    const v0, 0x7f0c0035

    .line 1193
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showUpgradePopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 2939
    :cond_0
    invoke-static {p0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getUpgradeInfoPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.show.popup.searchbar_guide"

    const/4 v2, 0x0

    .line 2940
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2941
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method showWorkspace(Z)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUserPresent:Z

    .line 1900
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateRunning()V

    .line 1903
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWaitingForResult:Z

    .line 1411
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 2

    .line 1753
    sget-object p2, Lcom/prompt/kiosk/slauncher/Utilities;->sShortcutIntentActionSubstitutions:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1754
    sget-object p2, Lcom/prompt/kiosk/slauncher/Utilities;->sShortcutIntentActionSubstitutions:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1756
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    :cond_0
    const/high16 p2, 0x10000000

    .line 1758
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1761
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error launching activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "not exported"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1769
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskDialog;

    invoke-direct {p2}, Lcom/prompt/kiosk/slauncher/KioskDialog;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1771
    sget-object p1, Lcom/prompt/kiosk/slauncher/DialogType;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p2, p0, v0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    goto :goto_0

    .line 1773
    :cond_1
    sget-object p1, Lcom/prompt/kiosk/slauncher/DialogType;->NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    invoke-virtual {p2, p0, v0, p1}, Lcom/prompt/kiosk/slauncher/KioskDialog;->showKioskDialog(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/DialogType;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method startAppInstallRequestTimer()V
    .locals 4

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    .line 1979
    new-instance v0, Lcom/prompt/kiosk/slauncher/Launcher$8;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/Launcher$8;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->timerTask:Ljava/util/TimerTask;

    sget-object v1, Lcom/prompt/kiosk/slauncher/Launcher;->mAppInstallTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    .line 1987
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v0, :cond_0

    .line 2106
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->clearDropTargets()V

    .line 2107
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2110
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2111
    invoke-virtual {v3}, Lcom/prompt/kiosk/slauncher/CellLayout;->removeAllViewsInLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 2114
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method stopAppInstallRequestTimer()V
    .locals 2

    sget-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "Stop App Install Request Timer"

    .line 1994
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->timerTask:Ljava/util/TimerTask;

    .line 1995
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->timerTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/prompt/kiosk/slauncher/Launcher;->mTimerWorking:Z

    :cond_0
    return-void
.end method

.method public unlockScreenOrientation()V
    .locals 4

    sget-object v0, Lcom/prompt/kiosk/slauncher/Launcher;->TAG:Ljava/lang/String;

    const-string v1, "unlockScreenOrientation"

    .line 2541
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mUnlockScreenOrientationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    .line 2542
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2427
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/Launcher;->updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Z)V

    return-void
.end method

.method public updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Z)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mEmmManager:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 2431
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->findAppInfo(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/EmmAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 2433
    :cond_0
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mWorkspace:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2434
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherUtils;->findShortcutView(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/BubbleTextView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2436
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    new-instance v0, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 2438
    invoke-virtual {p1, v1}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconTextSetting:Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getScale()F

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/ScaleFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    const/4 p1, 0x0

    .line 2437
    invoke-virtual {p2, p1, v0, p1, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 2442
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    invoke-virtual {p2, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getFolderInfo(J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2444
    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/FolderInfo;->update(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateViewIfNeeded(JLandroid/view/View;)V
    .locals 2

    .line 2968
    instance-of v0, p3, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-eqz v0, :cond_1

    .line 2969
    move-object v0, p3

    check-cast v0, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v1

    .line 2970
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object p1

    if-eq v1, p1, :cond_2

    .line 2973
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Launcher;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    if-eqz p1, :cond_0

    .line 2974
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->getScale()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2973
    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->applyFromShortcutInfo(Lcom/prompt/kiosk/slauncher/ShortcutInfo;Lcom/prompt/kiosk/slauncher/IconCache;F)V

    .line 2975
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/BubbleTextView;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    goto :goto_1

    .line 2977
    :cond_1
    instance-of v0, p3, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v0, :cond_2

    .line 2978
    check-cast p3, Lcom/prompt/kiosk/slauncher/FolderIcon;

    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/FolderIcon;->getIconTextSetting()Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v0

    .line 2979
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getIconTextSetting(J)Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2982
    invoke-virtual {p3, v1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setIconTextSetting(Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;)V

    .line 2983
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/Launcher;->getScaleForContainer(J)F

    move-result p1

    invoke-virtual {p3, p1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->setPreviewScale(F)V

    :cond_2
    :goto_1
    return-void
.end method
