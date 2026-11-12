.class public Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ConnectedRelativeLayout.java"


# static fields
.field static final DEFAULT_COLOR:I = -0x929293

.field private static final TAG:Ljava/lang/String; = "ConnectedRelativeLayout"


# instance fields
.field private mConnections:[I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    const p2, -0x929293

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    .line 37
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawConnections(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    if-eqz v0, :cond_4

    .line 64
    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    .line 69
    array-length v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_2

    .line 70
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v4, v1

    move v5, v2

    move v6, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    :goto_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    .line 78
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 79
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iget-object v9, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v7, v2

    move v8, v1

    .line 83
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v1

    move v5, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->drawConnections(Landroid/graphics/Canvas;)V

    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setConnectionColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setConnections(I)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    .line 53
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public setConnections([I)V
    .locals 1

    .line 44
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->mConnections:[I

    return-void
.end method
