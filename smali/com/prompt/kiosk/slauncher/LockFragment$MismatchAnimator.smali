.class Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;
.super Landroid/animation/ValueAnimator;
.source "LockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MismatchAnimator"
.end annotation


# static fields
.field private static final DURATION:J = 0x1f4L


# instance fields
.field private mRange:F

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LockFragment;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->this$0:Lcom/prompt/kiosk/slauncher/LockFragment;

    .line 67
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->mRange:F

    const-wide/16 v0, 0x1f4

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->setFloatValues([F)V

    .line 71
    new-instance v0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;

    invoke-direct {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$1;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;Lcom/prompt/kiosk/slauncher/LockFragment;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    new-instance v0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;

    invoke-direct {v0, p0, p1}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator$2;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;Lcom/prompt/kiosk/slauncher/LockFragment;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->mRange:F

    return p0
.end method


# virtual methods
.method init(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->mRange:F

    return-void
.end method
