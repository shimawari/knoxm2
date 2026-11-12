.class Lcom/prompt/kiosk/slauncher/SmoothPagedView$WorkspaceOvershootInterpolator;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkspaceOvershootInterpolator"
.end annotation


# static fields
.field private static final DEFAULT_TENSION:F = 1.3f


# instance fields
.field private mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    add-float v3, v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method

.method public setDistance(I)V
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    if-lez p1, :cond_0

    int-to-float p1, p1

    div-float/2addr v0, p1

    :cond_0
    iput v0, p0, Lcom/prompt/kiosk/slauncher/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method
