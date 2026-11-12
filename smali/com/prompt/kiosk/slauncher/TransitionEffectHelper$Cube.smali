.class Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Cube;
.super Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;
.source "TransitionEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cube"
.end annotation


# static fields
.field static final CUBE_ROTATAION_DEFAULT:I = -0x5a


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$TransitionEffect;-><init>(Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 10

    .line 203
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper$Cube;->mHelper:Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/TransitionEffectHelper;->getPagedView()Lcom/prompt/kiosk/slauncher/PagedView;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 206
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {v0, p1, v3, v2}, Lcom/prompt/kiosk/slauncher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-lez v9, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v5, v4, v8

    if-gez v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    .line 216
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 217
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    mul-float/2addr v4, v5

    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->setRotationY(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
