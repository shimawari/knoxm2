.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderHintAnimation"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;Landroid/view/View;IIIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object v8, p1

    iput-object v8, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2650
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v7

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->regionToCenterPoint(IIII[I)V

    .line 2651
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v2

    const/4 v9, 0x0

    aget v10, v2, v9

    .line 2652
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v2

    const/4 v11, 0x1

    aget v12, v2, v11

    .line 2653
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v7

    move-object v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->regionToCenterPoint(IIII[I)V

    .line 2654
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v2

    aget v2, v2, v9

    .line 2655
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$600(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)[I

    move-result-object v3

    aget v3, v3, v11

    sub-int/2addr v2, v10

    sub-int/2addr v3, v12

    const/4 v4, 0x0

    iput v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    iput v4, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    if-ne v2, v3, :cond_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    int-to-float v2, v2

    .line 2663
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$700(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    int-to-float v2, v3

    .line 2665
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$700(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto :goto_0

    :cond_2
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    float-to-double v4, v4

    .line 2667
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 2668
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v6, v2

    .line 2669
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$700(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)F

    move-result v2

    float-to-double v11, v2

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    mul-double/2addr v6, v9

    double-to-int v2, v6

    int-to-float v2, v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2670
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    .line 2671
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$700(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    .line 2674
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 2675
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 2676
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalScale:F

    .line 2677
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->initScale:F

    .line 2679
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setPivotY(F)V

    .line 2680
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setPivotX(F)V

    iput-object v1, v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    return-void
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V
    .locals 0

    .line 2638
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void
.end method

.method private cancel()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2730
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private completeAnimationImmediately()V
    .locals 8

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2736
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2739
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const-string v7, "scaleX"

    .line 2742
    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v4, v3, [F

    aput v6, v4, v5

    const-string v6, "scaleY"

    .line 2743
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v4, v3, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    const-string v7, "translationX"

    .line 2744
    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v3, v3, [F

    aput v6, v3, v5

    const-string v4, "translationY"

    .line 2745
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 2741
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    .line 2747
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2748
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2749
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method animate()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2685
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$800(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2686
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$800(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;

    .line 2687
    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->cancel()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2688
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$800(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2690
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void

    :cond_0
    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 2697
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    .line 2699
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 2700
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v2, 0x12c

    .line 2701
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2702
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2703
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$1;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2716
    new-instance v0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation$2;-><init>(Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->this$0:Lcom/prompt/kiosk/slauncher/AbstractCellLayout;

    .line 2724
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout;->access$800(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
