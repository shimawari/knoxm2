.class Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mSkipWorkspaceIfPossible:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherModel;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1224
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$502(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Z)Z
    .locals 0

    .line 1213
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 14

    .line 1704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1708
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-nez v2, :cond_0

    .line 1711
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1717
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$2;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1726
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$000(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1729
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1730
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start Binding Items. size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v7, v3

    :goto_0
    if-ge v7, v10, :cond_2

    add-int/lit8 v11, v7, 0x6

    if-gt v11, v10, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :cond_1
    sub-int v3, v10, v7

    :goto_1
    move v8, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1734
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v12

    new-instance v13, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;

    move-object v3, v13

    move-object v4, p0

    move-object v5, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$3;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    invoke-virtual {v12, v13}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    move v7, v11

    goto :goto_0

    .line 1745
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1746
    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$4;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1755
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$5;

    invoke-direct {v4, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$5;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1768
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;

    invoke-direct {v4, p0, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$6;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1777
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$7;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;J)V

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkItemPlacement([[[Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/ItemInfo;)Z
    .locals 6

    .line 1397
    iget v0, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 1398
    iget-wide v1, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 1404
    :cond_0
    iget v1, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    :goto_0
    iget v3, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 1405
    iget v3, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    :goto_1
    iget v4, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iget v5, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 1406
    aget-object v4, p1, v0

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 1407
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading shortcut "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into cell ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget p2, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ") occupied by "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p1, p1, v0

    aget-object p1, p1, v1

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    :cond_3
    iget v1, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    :goto_2
    iget v3, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 1417
    iget v3, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    :goto_3
    iget v4, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iget v5, p2, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_4

    .line 1418
    aget-object v4, p1, v0

    aget-object v4, v4, v1

    aput-object p2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method private debugCode(J[[[Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 5

    .line 1681
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded workspace in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "workspace layout: "

    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    .line 1683
    :goto_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1300()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    .line 1685
    :goto_1
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$900()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_0

    const-string v2, " | "

    .line 1687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v2, p1

    .line 1689
    :goto_2
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1400()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1690
    array-length v3, p3

    if-ge v1, v3, :cond_2

    aget-object v3, p3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    array-length v4, v3

    if-ge p2, v4, :cond_2

    .line 1691
    aget-object v3, v3, p2

    if-eqz v3, :cond_1

    const-string v3, "#"

    goto :goto_3

    :cond_1
    const-string v3, "."

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1695
    :cond_4
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .line 1238
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$400(Lcom/prompt/kiosk/slauncher/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mSkipWorkspaceIfPossible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1241
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$400(Lcom/prompt/kiosk/slauncher/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipping workspace binding"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1249
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$400(Lcom/prompt/kiosk/slauncher/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1250
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 1251
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_1

    .line 1253
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    const/4 v1, 0x1

    .line 1255
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$402(Lcom/prompt/kiosk/slauncher/LauncherModel;Z)Z

    .line 1256
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1260
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->bindWorkspace()V

    return-void
.end method

.method private loadWorkspace()V
    .locals 59

    move-object/from16 v1, p0

    const-string v2, "Workspace is not loaded correctly"

    .line 1426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v15, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1429
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1430
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1432
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1433
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1434
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1435
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1437
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    sget-object v6, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "itemType<?"

    const/16 v0, 0x64

    .line 1442
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v14

    .line 1440
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1448
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$900()I

    move-result v0

    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1000()I

    move-result v5

    const/4 v12, 0x1

    add-int/2addr v5, v12

    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1000()I

    move-result v6

    add-int/2addr v6, v12

    filled-new-array {v0, v5, v6}, [I

    move-result-object v0

    const-class v5, Lcom/prompt/kiosk/slauncher/ItemInfo;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[[Lcom/prompt/kiosk/slauncher/ItemInfo;

    :try_start_0
    const-string v0, "_id"

    .line 1451
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "intent"

    .line 1453
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "title"

    .line 1455
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "iconType"

    .line 1456
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v0, "icon"

    .line 1458
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "iconPackage"

    .line 1459
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v0, "iconResource"

    .line 1461
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v0, "checkedIcon"

    .line 1463
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v0, "checkedIconPackage"

    .line 1464
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v0, "checkedIconResource"

    .line 1466
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v0, "container"

    .line 1468
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "itemType"

    .line 1470
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v0, "appWidgetId"

    .line 1472
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v0, "screen"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v26, v2

    .line 1474
    :try_start_1
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v0, "cellX"

    move-wide/from16 v27, v3

    .line 1477
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v0, "cellY"

    .line 1479
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v0, "userSpanX"

    move-object/from16 v17, v14

    .line 1481
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v0, "userSpanY"

    move-object/from16 v29, v15

    .line 1483
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "spanX"

    move/from16 v30, v7

    .line 1485
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "spanY"

    move/from16 v31, v9

    .line 1486
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "uri"

    .line 1488
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    const-string v0, "displayMode"

    .line 1489
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v0, "asset"

    move/from16 v33, v8

    .line 1490
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "app_id"

    move-object/from16 v34, v11

    .line 1491
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "app_type"

    move/from16 v35, v11

    .line 1492
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "is_default"

    move/from16 v36, v11

    .line 1493
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "app_status"

    .line 1494
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    const-string v0, "package_name"

    move/from16 v38, v11

    .line 1495
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "class_name"

    move/from16 v39, v11

    .line 1496
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "resolver_tag"

    move/from16 v40, v11

    .line 1497
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "app_version"

    move/from16 v41, v11

    .line 1498
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    :goto_0
    iget-boolean v0, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v42, v11

    if-nez v0, :cond_d

    .line 1507
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v0, :cond_d

    .line 1509
    :try_start_2
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1511
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->convertItemTypeToDefaultIfNeeded(I)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1f
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v44, v5

    if-eqz v11, :cond_6

    const/4 v5, 0x1

    if-eq v11, v5, :cond_6

    const/4 v5, 0x2

    if-eq v11, v5, :cond_3

    const/16 v5, 0x32

    if-eq v11, v5, :cond_0

    move/from16 v16, v2

    move/from16 v45, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move/from16 v47, v10

    move-object v5, v13

    move/from16 v8, v30

    move/from16 v30, v31

    move-object/from16 v2, v34

    move/from16 v11, v35

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move v9, v3

    move v10, v4

    move/from16 v34, v6

    move/from16 v35, v12

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v12, v36

    :goto_1
    move/from16 v15, v40

    :goto_2
    move/from16 v40, v14

    move/from16 v14, v39

    goto/16 :goto_17

    .line 1615
    :cond_0
    :try_start_3
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v46, v12

    .line 1616
    :try_start_4
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 v47, v10

    .line 1618
    :try_start_5
    new-instance v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    invoke-direct {v10}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;-><init>()V

    .line 1619
    iput v5, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    .line 1620
    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    .line 1621
    iput-wide v11, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->id:J

    .line 1622
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->screen:I

    .line 1623
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->cellX:I

    .line 1624
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->cellY:I

    .line 1625
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanX:I

    .line 1626
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->spanY:I

    .line 1627
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->userSpanX:I

    .line 1628
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->userSpanY:I

    .line 1629
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    .line 1631
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v5, -0x64

    if-eq v0, v5, :cond_1

    .line 1633
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Widget found where container != CONTAINER_DESKTOP - ignoring!"

    invoke-static {v0, v5}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v11, v42

    move/from16 v5, v44

    move/from16 v12, v46

    move/from16 v10, v47

    goto/16 :goto_0

    .line 1637
    :cond_1
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    iput-wide v11, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->container:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v12, v34

    .line 1640
    :try_start_6
    invoke-direct {v1, v12, v10}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v16, v2

    move v10, v4

    move/from16 v34, v6

    move/from16 v45, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move-object v2, v12

    move-object v5, v13

    move/from16 v8, v30

    move/from16 v30, v31

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v35, v46

    move v9, v3

    :goto_3
    move/from16 v41, v15

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 1643
    :cond_2
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v34, v12

    :try_start_7
    iget-wide v11, v10, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v16, v2

    move v10, v4

    move/from16 v45, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move-object v5, v13

    move/from16 v8, v30

    move/from16 v30, v31

    move-object/from16 v2, v34

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v35, v46

    move v9, v3

    move/from16 v34, v6

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v34, v12

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v47, v10

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v47, v10

    move/from16 v46, v12

    :goto_4
    move/from16 v16, v2

    move v10, v4

    move/from16 v45, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move-object v5, v13

    move/from16 v8, v30

    move/from16 v30, v31

    move-object/from16 v2, v34

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v35, v46

    move v9, v3

    move/from16 v34, v6

    move/from16 v41, v15

    move-object/from16 v3, v17

    goto/16 :goto_1b

    :cond_3
    move/from16 v46, v12

    .line 1581
    :try_start_8
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1582
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-static {v0, v11, v12}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v5, v33

    move/from16 v33, v8

    .line 1584
    :try_start_9
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1585
    iput-wide v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    .line 1586
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v11, v8

    .line 1587
    iput-wide v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->container:J

    .line 1588
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->screen:I

    .line 1589
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellX:I

    .line 1590
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->cellY:I

    .line 1591
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->spanX:I

    .line 1592
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->spanY:I

    .line 1596
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->userSpanX:I

    .line 1597
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->userSpanY:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v12, v34

    .line 1600
    :try_start_a
    invoke-direct {v1, v12, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result v11

    if-nez v11, :cond_4

    move/from16 v16, v2

    move/from16 v34, v6

    move/from16 v45, v7

    move/from16 v49, v9

    move/from16 v47, v10

    move-object v2, v12

    move/from16 v8, v30

    move/from16 v30, v31

    move/from16 v48, v33

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v35, v46

    move v9, v3

    move v10, v4

    move/from16 v33, v5

    move-object v5, v13

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v13, v38

    goto/16 :goto_1

    :cond_4
    const/16 v11, -0x64

    if-eq v8, v11, :cond_5

    goto :goto_5

    .line 1605
    :cond_5
    sget-object v8, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    :goto_5
    sget-object v8, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move/from16 v45, v5

    move/from16 v34, v6

    :try_start_b
    iget-wide v5, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    sget-object v5, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move v8, v7

    :try_start_c
    iget-wide v6, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v16, v2

    move/from16 v49, v9

    move/from16 v47, v10

    move-object v2, v12

    move-object v5, v13

    move/from16 v48, v33

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v33, v45

    move/from16 v35, v46

    move v9, v3

    move v10, v4

    move/from16 v45, v8

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v8, v30

    move/from16 v30, v31

    move/from16 v15, v40

    move/from16 v31, v44

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v45, v5

    move/from16 v34, v6

    goto :goto_6

    :catch_7
    move-exception v0

    move/from16 v45, v5

    move v8, v7

    move-object/from16 v12, v34

    move/from16 v34, v6

    goto :goto_7

    :catch_8
    move-exception v0

    move/from16 v45, v33

    move-object/from16 v12, v34

    move/from16 v34, v6

    move/from16 v33, v8

    :goto_6
    move v8, v7

    :goto_7
    move/from16 v16, v2

    move/from16 v49, v9

    move/from16 v47, v10

    move-object v2, v12

    move-object v5, v13

    move/from16 v48, v33

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v33, v45

    move/from16 v35, v46

    move v9, v3

    move v10, v4

    move/from16 v45, v8

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v8, v30

    move/from16 v30, v31

    move/from16 v15, v40

    move/from16 v31, v44

    goto/16 :goto_1c

    :cond_6
    move/from16 v46, v12

    move/from16 v45, v33

    move-object/from16 v12, v34

    const/16 v0, -0x64

    move/from16 v34, v6

    move/from16 v33, v8

    move v8, v7

    move/from16 v7, v31

    .line 1515
    :try_start_d
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1e
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-nez v5, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_8

    :cond_7
    const/4 v6, 0x0

    .line 1517
    :try_start_e
    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    :catch_9
    const/4 v5, 0x0

    :goto_8
    if-nez v11, :cond_8

    :try_start_f
    iget-object v11, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    iget-object v0, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v43, v5

    move/from16 v31, v44

    move/from16 v16, v45

    const/16 v44, 0x1

    move-object v5, v11

    move/from16 v11, v34

    move/from16 v34, v6

    move-object/from16 v6, v18

    move/from16 v45, v8

    move/from16 v8, v30

    move/from16 v30, v7

    move-object/from16 v7, v43

    move/from16 v47, v8

    move/from16 v48, v33

    move/from16 v33, v16

    move-object/from16 v8, v29

    move/from16 v49, v9

    move-object v9, v13

    move/from16 v50, v4

    move v4, v10

    move/from16 v10, v47

    move/from16 v34, v3

    move v3, v11

    move/from16 v51, v35

    move/from16 v52, v38

    move/from16 v53, v40

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v11, v33

    move-object/from16 v56, v12

    move/from16 v35, v46

    move-object v12, v0

    move-object/from16 v38, v13

    move/from16 v13, v20

    move/from16 v40, v14

    move-object/from16 v57, v17

    move/from16 v14, v32

    move/from16 v41, v15

    move/from16 v15, v36

    move/from16 v16, v37

    move/from16 v17, v39

    .line 1523
    :try_start_10
    invoke-virtual/range {v5 .. v17}, Lcom/prompt/kiosk/slauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;IIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1d
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v38, v13

    :goto_9
    move-object/from16 v2, v26

    move-object/from16 v5, v38

    goto/16 :goto_20

    :catch_a
    move-exception v0

    move/from16 v50, v4

    move/from16 v49, v9

    move v4, v10

    move-object/from16 v56, v12

    move-object/from16 v57, v17

    move/from16 v47, v30

    move/from16 v48, v33

    move/from16 v51, v35

    move/from16 v52, v38

    move/from16 v53, v40

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v33, v45

    move/from16 v35, v46

    move/from16 v30, v7

    move/from16 v45, v8

    move-object/from16 v38, v13

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v58, v34

    move/from16 v34, v3

    move/from16 v3, v58

    goto/16 :goto_18

    :cond_8
    move/from16 v50, v4

    move-object/from16 v43, v5

    move/from16 v49, v9

    move v4, v10

    move-object/from16 v56, v12

    move-object/from16 v57, v17

    move/from16 v47, v30

    move/from16 v48, v33

    move/from16 v51, v35

    move/from16 v52, v38

    move/from16 v53, v40

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v33, v45

    move/from16 v35, v46

    move/from16 v30, v7

    move/from16 v45, v8

    move-object/from16 v38, v13

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v58, v34

    move/from16 v34, v3

    move/from16 v3, v58

    :try_start_11
    iget-object v5, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    move-object/from16 v6, v38

    move-object/from16 v7, v29

    move-object/from16 v8, v43

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v47

    move/from16 v13, v33

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v23

    .line 1526
    invoke-static/range {v5 .. v16}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1100(Lcom/prompt/kiosk/slauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;IIIIIIII)Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_a
    if-eqz v0, :cond_c

    move-object/from16 v5, v43

    .line 1532
    :try_start_12
    iput-object v5, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v5, v38

    .line 1533
    :try_start_13
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->id:J

    .line 1534
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v7, v6

    .line 1535
    iput-wide v7, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    .line 1536
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->screen:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move/from16 v9, v34

    .line 1537
    :try_start_14
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move/from16 v10, v50

    .line 1538
    :try_start_15
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move/from16 v11, v51

    .line 1539
    :try_start_16
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move/from16 v12, v36

    .line 1540
    :try_start_17
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move/from16 v13, v52

    .line 1541
    :try_start_18
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    move v14, v15

    goto :goto_b

    :cond_9
    const/4 v14, 0x0

    :goto_b
    iput-boolean v14, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move/from16 v14, v39

    .line 1542
    :try_start_19
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move/from16 v16, v2

    move/from16 v15, v53

    .line 1543
    :try_start_1a
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->className:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move/from16 v34, v3

    move/from16 v2, v54

    .line 1544
    :try_start_1b
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->resolverTag:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    move/from16 v54, v2

    move/from16 v3, v55

    .line 1545
    :try_start_1c
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->version:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-object/from16 v2, v56

    .line 1548
    :try_start_1d
    invoke-direct {v1, v2, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/prompt/kiosk/slauncher/ItemInfo;Lcom/prompt/kiosk/slauncher/ItemInfo;)Z

    move-result v17
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-nez v17, :cond_a

    move/from16 v55, v3

    move/from16 v8, v47

    move-object/from16 v3, v57

    move/from16 v47, v4

    goto/16 :goto_17

    :cond_a
    move/from16 v55, v3

    const/16 v3, -0x64

    if-eq v6, v3, :cond_b

    .line 1558
    :try_start_1e
    sget-object v3, Lcom/prompt/kiosk/slauncher/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 1559
    invoke-static {v3, v7, v8}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/prompt/kiosk/slauncher/FolderInfo;

    move-result-object v3

    .line 1560
    invoke-virtual {v3, v0}, Lcom/prompt/kiosk/slauncher/FolderInfo;->add(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_c

    :catch_b
    move-exception v0

    move/from16 v8, v47

    move-object/from16 v3, v57

    move/from16 v47, v4

    goto/16 :goto_1d

    .line 1554
    :cond_b
    :try_start_1f
    sget-object v3, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    :goto_c
    sget-object v3, Lcom/prompt/kiosk/slauncher/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1567
    sget-object v6, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    move/from16 v7, v47

    :try_start_20
    invoke-virtual {v3, v6, v0, v5, v7}, Lcom/prompt/kiosk/slauncher/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/prompt/kiosk/slauncher/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    move/from16 v47, v4

    move v8, v7

    move-object/from16 v3, v57

    goto/16 :goto_17

    :catch_c
    move-exception v0

    goto/16 :goto_16

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    move/from16 v55, v3

    :goto_d
    move/from16 v7, v47

    goto/16 :goto_16

    :catch_f
    move-exception v0

    move/from16 v55, v3

    goto :goto_e

    :catch_10
    move-exception v0

    move/from16 v54, v2

    goto :goto_e

    :catch_11
    move-exception v0

    move/from16 v34, v3

    :goto_e
    move/from16 v7, v47

    goto :goto_14

    :catch_12
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    goto :goto_f

    :catch_13
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    move/from16 v14, v39

    :goto_f
    move/from16 v7, v47

    goto :goto_13

    :catch_14
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    goto :goto_10

    :catch_15
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    move/from16 v12, v36

    :goto_10
    move/from16 v14, v39

    move/from16 v7, v47

    goto :goto_12

    :catch_16
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    move/from16 v12, v36

    move/from16 v14, v39

    move/from16 v7, v47

    goto :goto_11

    :catch_17
    move-exception v0

    move/from16 v16, v2

    move/from16 v34, v3

    move/from16 v12, v36

    move/from16 v14, v39

    move/from16 v7, v47

    move/from16 v10, v50

    :goto_11
    move/from16 v11, v51

    :goto_12
    move/from16 v13, v52

    :goto_13
    move/from16 v15, v53

    :goto_14
    move-object/from16 v2, v56

    goto :goto_16

    :catch_18
    move-exception v0

    move/from16 v16, v2

    move/from16 v9, v34

    move/from16 v12, v36

    goto :goto_15

    :catch_19
    move-exception v0

    move/from16 v16, v2

    move/from16 v9, v34

    move/from16 v12, v36

    move-object/from16 v5, v38

    :goto_15
    move/from16 v14, v39

    move/from16 v7, v47

    move/from16 v10, v50

    move/from16 v11, v51

    move/from16 v13, v52

    move/from16 v15, v53

    move-object/from16 v2, v56

    move/from16 v34, v3

    :goto_16
    move/from16 v47, v4

    move v8, v7

    goto/16 :goto_1a

    :cond_c
    move/from16 v16, v2

    move/from16 v9, v34

    move/from16 v12, v36

    move-object/from16 v5, v38

    move/from16 v14, v39

    move/from16 v8, v47

    move/from16 v10, v50

    move/from16 v11, v51

    move/from16 v13, v52

    move/from16 v15, v53

    move-object/from16 v2, v56

    move/from16 v34, v3

    .line 1573
    :try_start_21
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1574
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move/from16 v47, v4

    :try_start_22
    const-string v4, "Error loading shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1575
    invoke-static {v6, v7, v0}, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1b
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    move-object/from16 v3, v57

    const/4 v4, 0x0

    :try_start_23
    invoke-virtual {v3, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :goto_17
    move-object/from16 v17, v3

    move v3, v9

    move v4, v10

    move/from16 v36, v12

    move/from16 v38, v13

    move/from16 v39, v14

    move/from16 v6, v34

    move/from16 v12, v35

    move/from16 v14, v40

    move/from16 v7, v45

    move/from16 v10, v47

    move/from16 v9, v49

    move-object/from16 v34, v2

    move-object v13, v5

    move/from16 v35, v11

    move/from16 v40, v15

    move/from16 v2, v16

    move/from16 v5, v31

    move/from16 v15, v41

    move/from16 v41, v54

    move/from16 v11, v55

    move/from16 v31, v30

    move/from16 v30, v8

    move/from16 v8, v48

    goto/16 :goto_0

    :catch_1a
    move-exception v0

    goto/16 :goto_1d

    :catch_1b
    move-exception v0

    goto :goto_1a

    :catch_1c
    move-exception v0

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object/from16 v5, v38

    goto/16 :goto_1f

    :catch_1d
    move-exception v0

    :goto_18
    move/from16 v16, v2

    move/from16 v9, v34

    move/from16 v12, v36

    move-object/from16 v5, v38

    move/from16 v14, v39

    move/from16 v8, v47

    move/from16 v10, v50

    move/from16 v11, v51

    move/from16 v13, v52

    move/from16 v15, v53

    move-object/from16 v2, v56

    move/from16 v34, v3

    :goto_19
    move/from16 v47, v4

    :goto_1a
    move-object/from16 v3, v57

    goto/16 :goto_1d

    :catch_1e
    move-exception v0

    move/from16 v16, v2

    move/from16 v49, v9

    move/from16 v47, v10

    move-object v2, v12

    move-object v5, v13

    move/from16 v48, v33

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v38

    move/from16 v54, v41

    move/from16 v55, v42

    move/from16 v31, v44

    move/from16 v33, v45

    move/from16 v35, v46

    move v9, v3

    move v10, v4

    move/from16 v45, v8

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v8, v30

    move/from16 v15, v40

    move/from16 v30, v7

    goto :goto_1c

    :catch_1f
    move-exception v0

    move/from16 v16, v2

    move/from16 v45, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move/from16 v47, v10

    move/from16 v8, v30

    move/from16 v30, v31

    move-object/from16 v2, v34

    move/from16 v11, v35

    move/from16 v54, v41

    move/from16 v55, v42

    move v9, v3

    move v10, v4

    move/from16 v31, v5

    move/from16 v34, v6

    move/from16 v35, v12

    move-object v5, v13

    move/from16 v41, v15

    move-object/from16 v3, v17

    move/from16 v12, v36

    move/from16 v13, v38

    :goto_1b
    move/from16 v15, v40

    :goto_1c
    move/from16 v40, v14

    move/from16 v14, v39

    .line 1648
    :goto_1d
    :try_start_24
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Desktop items loading interrupted:"

    invoke-static {v4, v6, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto/16 :goto_17

    :catchall_3
    move-exception v0

    goto/16 :goto_1f

    :cond_d
    move-object v5, v13

    move-object/from16 v3, v17

    move-object/from16 v2, v34

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz v5, :cond_f

    .line 1655
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1658
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 1659
    sget-object v5, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 1662
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1664
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removed id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :try_start_25
    invoke-static {v6, v7, v0}, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8, v4, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_20

    goto :goto_1e

    .line 1671
    :catch_20
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not remove id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_e
    move-wide/from16 v3, v27

    .line 1676
    invoke-direct {v1, v3, v4, v2}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->debugCode(J[[[Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    return-void

    .line 1653
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    move-object/from16 v2, v26

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v5, v13

    :goto_1f
    move-object/from16 v2, v26

    goto :goto_20

    :catchall_5
    move-exception v0

    move-object v5, v13

    :goto_20
    if-nez v5, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1655
    :cond_10
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1656
    throw v0
.end method

.method private waitForIdle()V
    .locals 6

    .line 1267
    monitor-enter p0

    .line 1268
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1270
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$600(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask$1;-><init>(Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :catch_0
    :goto_0
    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1284
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1290
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms for previous step to finish binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .line 1788
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mContext="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mStopped="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItems size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prompt/kiosk/slauncher/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 6

    const-string v0, "Setting thread priority to "

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1305
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1307
    :try_start_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_0

    const-string v3, "DEFAULT"

    goto :goto_0

    :cond_0
    const-string v3, "BACKGROUND"

    .line 1308
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    invoke-static {v2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1309
    :goto_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1312
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading workspace"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1322
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v1, :cond_3

    .line 1325
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v1, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1328
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1329
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->waitForIdle()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1332
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1333
    :try_start_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1334
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1340
    :goto_2
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Comparing loaded icons to database icons"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1342
    move-object v4, v1

    check-cast v4, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    sget-object v5, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v3, v4, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/ShortcutInfo;[B)V

    goto :goto_3

    .line 1344
    :cond_4
    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1350
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1352
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$800(Lcom/prompt/kiosk/slauncher/LauncherModel;)Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    move-result-object v1

    if-ne v1, p0, :cond_5

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1353
    invoke-static {v1, v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$802(Lcom/prompt/kiosk/slauncher/LauncherModel;Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;)Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;

    .line 1355
    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1334
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 1328
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 1311
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method setSkipWorkspaceIfPossible()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mSkipWorkspaceIfPossible:Z

    return-void
.end method

.method public stopLocked()V
    .locals 1

    .line 1359
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    .line 1361
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;)Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1373
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$700(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1375
    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1378
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1379
    monitor-exit v0

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherModel$LoaderTask;->this$0:Lcom/prompt/kiosk/slauncher/LauncherModel;

    .line 1382
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$100(Lcom/prompt/kiosk/slauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;

    if-eq v1, p1, :cond_2

    .line 1384
    monitor-exit v0

    return-object v2

    :cond_2
    if-nez v1, :cond_3

    .line 1387
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherModel;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v1, "no mCallbacks"

    invoke-static {p1, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->wLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    monitor-exit v0

    return-object v2

    .line 1391
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
