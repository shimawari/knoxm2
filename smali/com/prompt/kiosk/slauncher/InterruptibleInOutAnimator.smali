.class public Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# static fields
.field private static final IN:I = 0x1

.field private static final OUT:I = 0x2

.field private static final STOPPED:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JFF)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mFirstRun:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v1

    aput p4, v2, v0

    .line 49
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalDuration:J

    iput p3, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalFromValue:F

    iput p4, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 54
    new-instance p1, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator$1;-><init>(Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    return p1
.end method

.method private animate(I)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 63
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalToValue:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalFromValue:F

    :goto_0
    iget-boolean v4, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->cancel()V

    iput p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    iget-wide v5, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v0, v5, v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    .line 77
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    aput v3, v0, v2

    .line 79
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mFirstRun:Z

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public animateOut()V
    .locals 1

    const/4 v0, 0x2

    .line 117
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mOriginalDuration:J

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-void
.end method
