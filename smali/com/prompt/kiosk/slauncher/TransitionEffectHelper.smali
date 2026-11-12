.class public Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;
.super Ljava/lang/Object;
.source "TransitionEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;,
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;,
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;,
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Cube;,
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Bulldoze;,
        Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Linear;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EFFECT_BULLDOZE:I = 0x3

.field public static final EFFECT_CARD_STACK:I = 0x1

.field public static final EFFECT_CORNER:I = 0x4

.field public static final EFFECT_COUNT:I = 0x5

.field public static final EFFECT_CUBE:I = 0x2

.field public static final EFFECT_LINEAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TransitionEffectHelper"


# instance fields
.field private mDensity:F

.field private mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

.field private mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mNEffect:I

.field private final mPagedView:Lcom/prompt/kiosk/slauncher/PagedView;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/PagedView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mPagedView:Lcom/prompt/kiosk/slauncher/PagedView;

    .line 33
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mDensity:F

    return-void
.end method


# virtual methods
.method public adjustEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;->adjust(I)V

    return-void
.end method

.method public getAlpha()F
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mPagedView:Lcom/prompt/kiosk/slauncher/PagedView;

    .line 70
    instance-of v0, v0, Lcom/prompt/kiosk/slauncher/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 71
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getWorkspaceOpacity()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mDensity:F

    return v0
.end method

.method public getEffect()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mNEffect:I

    return v0
.end method

.method public getPagedView()Lcom/prompt/kiosk/slauncher/PagedView;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mPagedView:Lcom/prompt/kiosk/slauncher/PagedView;

    return-object v0
.end method

.method public setEffect(I)V
    .locals 1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mNEffect:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Corner;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Bulldoze;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Bulldoze;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    goto :goto_0

    .line 46
    :cond_2
    new-instance p1, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Cube;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Cube;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$CardStack;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->mEffect:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;

    :goto_0
    return-void
.end method
