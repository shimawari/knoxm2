.class public Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;
.super Ljava/lang/Object;
.source "AbstractIconTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractIconTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTextSetting"
.end annotation


# instance fields
.field private mScale:F

.field private mShadowEnabled:Z

.field private mTextColor:I

.field private mTextEnabled:Z

.field private mTextStyle:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextEnabled:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mShadowEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mScale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextStyle:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mScale:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextColor:I

    return v0
.end method

.method public getTextStyle()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mShadowEnabled:Z

    return v0
.end method

.method public isTextEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextEnabled:Z

    return v0
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mScale:F

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mShadowEnabled:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextColor:I

    return-void
.end method

.method public setTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextEnabled:Z

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractIconTextView$IconTextSetting;->mTextStyle:Landroid/graphics/Typeface;

    return-void
.end method
