.class Lcom/prompt/kiosk/slauncher/FolderUtil;
.super Ljava/lang/Object;
.source "FolderUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeFolder(Lcom/prompt/kiosk/slauncher/AbstractFolder;Lcom/prompt/kiosk/slauncher/Launcher;Z)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getInfo()Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    .line 73
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/FolderUtil;->getViewForTag(Lcom/prompt/kiosk/slauncher/AbstractFolder;Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 76
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderUtil;->shrinkAndFadeInFolderIcon(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->closed(Z)V

    return-void
.end method

.method private static getViewForTag(Lcom/prompt/kiosk/slauncher/AbstractFolder;Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/FolderInfo;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspace()Lcom/prompt/kiosk/slauncher/Workspace;

    move-result-object p1

    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    invoke-virtual {p1, p0}, Lcom/prompt/kiosk/slauncher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static growAndFadeOutFolderIcon(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 92
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    const/high16 v4, 0x3fc00000    # 1.5f

    aput v4, v2, v3

    const-string v5, "scaleX"

    .line 93
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v0, [F

    aput v4, v5, v3

    const-string v4, "scaleY"

    .line 94
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    .line 96
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static isFolderOpen(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)Z
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    iget-boolean p0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    return p0
.end method

.method static openFolder(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragLayer;Lcom/prompt/kiosk/slauncher/DragController;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, p3, v0}, Lcom/prompt/kiosk/slauncher/FolderUtil;->openFolder(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragLayer;Lcom/prompt/kiosk/slauncher/DragController;Z)V

    return-void
.end method

.method static openFolder(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/DragLayer;Lcom/prompt/kiosk/slauncher/DragController;Z)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->mFolder:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 26
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInfo:Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;

    .line 27
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->updateButtons()V

    .line 29
    invoke-static {p1, p0}, Lcom/prompt/kiosk/slauncher/FolderUtil;->growAndFadeOutFolderIcon(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V

    const/4 p0, 0x1

    .line 30
    iput-boolean p0, v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->opened:Z

    .line 34
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_4

    if-eqz p4, :cond_3

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0b0003

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 39
    iput-object p0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimView:Landroid/view/View;

    if-eqz p0, :cond_2

    const p1, 0x7f090032

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    .line 42
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    const/16 p4, 0x8

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 46
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const p1, 0x7f090033

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTop2View:Landroid/view/View;

    .line 49
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTop2View:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTop2View:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_1
    invoke-virtual {p2, p0}, Lcom/prompt/kiosk/slauncher/DragLayer;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 54
    iput-object p0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTopView:Landroid/view/View;

    .line 55
    iput-object p0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDimTop2View:Landroid/view/View;

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Lcom/prompt/kiosk/slauncher/DragLayer;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p3, v0}, Lcom/prompt/kiosk/slauncher/DragController;->addDropTarget(Lcom/prompt/kiosk/slauncher/DropTarget;)V

    .line 60
    invoke-virtual {v0, p3}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setDragController(Lcom/prompt/kiosk/slauncher/DragController;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/prompt/kiosk/slauncher/FolderUtil;->TAG:Ljava/lang/String;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Opening folder ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") which already has a parent ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setInitialStateToView()V

    .line 67
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->animateOpen()V

    return-void
.end method

.method private static shrinkAndFadeInFolderIcon(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 103
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 104
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 105
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 107
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
