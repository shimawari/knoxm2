.class Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;
.super Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;
.source "TransitionEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardStack"
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 6500.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.74f


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mZInterpolator:Lcom/prompt/kiosk/slauncher/ZInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    .line 110
    new-instance p1, Lcom/prompt/kiosk/slauncher/ZInterpolator;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, v0}, Lcom/prompt/kiosk/slauncher/ZInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mZInterpolator:Lcom/prompt/kiosk/slauncher/ZInterpolator;

    .line 113
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    const v0, 0x3f666666    # 0.9f

    invoke-direct {p1, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 114
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 12

    .line 122
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getPagedView()Lcom/prompt/kiosk/slauncher/PagedView;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 125
    invoke-virtual {v0, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 127
    invoke-virtual {v0, p1, v4, v3}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mZInterpolator:Lcom/prompt/kiosk/slauncher/ZInterpolator;

    const/4 v7, 0x0

    .line 130
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/prompt/kiosk/slauncher/ZInterpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v6

    sget v10, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v6, v10

    add-float/2addr v9, v6

    .line 133
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v6, v10

    cmpg-float v7, v5, v7

    if-gez v7, :cond_0

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 139
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v8, v5

    .line 138
    invoke-virtual {v7, v8}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float/2addr v8, v5

    .line 142
    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    .line 145
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getDensity()F

    move-result v5

    sget v7, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->CAMERA_DISTANCE:F

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/view/View;->setCameraDistance(F)V

    .line 146
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleX(F)V

    .line 148
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    .line 149
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    const v5, 0x3caaaaab

    cmpg-float v5, v8, v5

    if-gez v5, :cond_2

    const/4 v5, 0x4

    .line 154
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 155
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
