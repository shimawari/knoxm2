.class public Lcom/prompt/kiosk/slauncher/WallpaperView;
.super Landroid/view/View;
.source "WallpaperView.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/Insettable;


# static fields
.field public static final ALIGN_BOTTOM:I = 0x50

.field public static final ALIGN_CENTER:I = 0x11

.field public static final ALIGN_TOP:I = 0x30

.field public static final SCALETYPE_CENTER:I = 0x0

.field public static final SCALETYPE_FIT_CENTER_XY:I = 0x1

.field public static final SCALETYPE_FIT_CENTER_XY_CROP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WallpaperView"

.field private static final UNINITIALIZED_VALUE:I = -0x64


# instance fields
.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWallpaperAlign:I

.field private mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mWallpaperOffsetX:F

.field private mWallpaperScaleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mTempRect:Landroid/graphics/Rect;

    const/16 p1, -0x64

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mStatusBarHeight:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperOffsetX:F

    const/16 p1, 0x11

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperAlign:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperScaleType:I

    return-void
.end method

.method private checkLayoutChanged()V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mStatusBarHeight:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mStatusBarHeight:I

    .line 91
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    :cond_0
    return-void
.end method

.method private drawWallpaper(Landroid/graphics/Canvas;IIII)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperScaleType:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    sub-int v4, p4, p2

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    sub-int v7, p5, p3

    int-to-float v7, v7

    int-to-float v8, v3

    div-float/2addr v7, v8

    .line 113
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    mul-float/2addr v5, v4

    float-to-int v2, v5

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 118
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :cond_3
    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr v2, p4

    if-ltz v2, :cond_5

    iget p2, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperScaleType:I

    if-ne p2, v6, :cond_4

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperOffsetX:F

    goto :goto_2

    :cond_5
    :goto_1
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_2
    neg-int p4, v2

    int-to-float p4, p4

    mul-float/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr v3, p5

    iget p2, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperAlign:I

    const/16 p5, 0x30

    if-eq p2, p5, :cond_7

    const/16 p5, 0x31

    if-eq p2, p5, :cond_9

    const/16 p5, 0x50

    if-eq p2, p5, :cond_6

    const/16 p5, 0x51

    if-eq p2, p5, :cond_8

    .line 147
    div-int/2addr v3, v6

    :cond_6
    :goto_3
    sub-int/2addr p3, v3

    :cond_7
    :goto_4
    int-to-float p2, p3

    goto :goto_5

    :cond_8
    sub-int/2addr p3, v3

    .line 143
    div-int/lit8 v3, v3, 0x4

    add-int/2addr p3, v3

    goto :goto_4

    .line 140
    :cond_9
    div-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 149
    :goto_5
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p3, p4

    neg-float p2, p2

    .line 151
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    return-void
.end method


# virtual methods
.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->checkLayoutChanged()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mTempRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    :try_start_0
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/prompt/kiosk/slauncher/WallpaperView;->drawWallpaper(Landroid/graphics/Canvas;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WallpaperView"

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 58
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/16 p1, -0x64

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mStatusBarHeight:I

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setWallpaper(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 164
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWallpaper(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->invalidate()V

    return-void
.end method

.method public setWallpaperAlign(I)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperAlign:I

    .line 178
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->invalidate()V

    return-void
.end method

.method public setWallpaperOffsetX(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 172
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperOffsetX:F

    .line 173
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->invalidate()V

    return-void
.end method

.method public setWallpaperScaleType(I)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperScaleType:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->setWallpaper(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput p1, p0, Lcom/prompt/kiosk/slauncher/WallpaperView;->mWallpaperScaleType:I

    .line 186
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/WallpaperView;->invalidate()V

    return-void
.end method
