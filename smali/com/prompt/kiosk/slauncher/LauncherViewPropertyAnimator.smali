.class public Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationX:F

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 41
    const-class v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRunning:Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public alpha(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 262
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mAlpha:F

    return-object p0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 104
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 113
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 122
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 130
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rotationX(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 250
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRotationX:F

    return-object p0
.end method

.method public rotationY(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 256
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRotationY:F

    return-object p0
.end method

.method public scaleX(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 238
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mScaleX:F

    return-object p0
.end method

.method public scaleY(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 244
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mScaleY:F

    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 157
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 164
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 170
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1

    .line 176
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 191
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTranslationX:F

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 194
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTranslationY:F

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 197
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mScaleX:F

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 200
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRotationX:F

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 203
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mRotationY:F

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 206
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mScaleY:F

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 209
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mAlpha:F

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 212
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mStartDelay:J

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_7
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 215
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mDuration:J

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_8
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 218
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_9
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 221
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public translationX(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 226
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTranslationX:F

    return-object p0
.end method

.method public translationY(F)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 232
    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;->mTranslationY:F

    return-object p0
.end method
