.class Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Bulldoze;
.super Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;
.source "TransitionEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bulldoze"
.end annotation


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 10

    .line 172
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Bulldoze;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getPagedView()Lcom/prompt/kiosk/slauncher/PagedView;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 175
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {v0, p1, v3, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 178
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    .line 180
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v8, :cond_0

    int-to-float v4, v6

    mul-float v6, v4, v5

    sub-float/2addr v4, v6

    div-float v7, v4, v9

    goto :goto_1

    :cond_0
    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    int-to-float v4, v6

    mul-float v6, v4, v5

    sub-float/2addr v6, v4

    div-float v7, v6, v9

    .line 186
    :cond_1
    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 187
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
