.class public Lcom/prompt/kiosk/slauncher/FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderRingAnimator.java"


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field public static sPreviewPadding:I = -0x1

.field public static sPreviewSize:I = -0x1


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private mCellLayout:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

.field public mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mInnerRingHeight:F

.field public mInnerRingWidth:F

.field private mIsBusy:Z

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mOuterRingHeight:F

.field public mOuterRingWidth:F

.field public mScale:F

.field public mSpanX:I

.field public mSpanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mIsBusy:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mScale:F

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mFolderIcon:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 45
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    sget-boolean v1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->sStaticValuesDirty:Z

    if-eqz v1, :cond_0

    const v1, 0x7f07001f

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewSize:I

    const v1, 0x7f07001e

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->sPreviewPadding:I

    .line 54
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResourceManager()Lcom/prompt/kiosk/slauncher/ResourceManager;

    move-result-object p1

    const p2, 0x7f08002f

    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getFilteredDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 55
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->sStaticValuesDirty:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellLayout:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mIsBusy:Z

    return p1
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mIsBusy:Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 64
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 66
    new-instance v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$1;-><init>(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 90
    new-instance v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$2;-><init>(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 107
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 109
    new-instance v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$3;-><init>(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 138
    new-instance v1, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator$4;-><init>(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getInnerRingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInnerRingHeight()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingHeight:F

    return v0
.end method

.method public getInnerRingWidth()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mInnerRingWidth:F

    return v0
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mIsBusy:Z

    return v0
.end method

.method public setCell(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellY:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanX:I

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanY:I

    return-void
.end method

.method public setCellLayout(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mCellLayout:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mScale:F

    return-void
.end method

.method public setSpan(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanX:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->mSpanY:I

    return-void
.end method
