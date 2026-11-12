.class public Lcom/prompt/kiosk/slauncher/KioskWebActivity;
.super Landroid/app/Activity;
.source "KioskWebActivity.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "KioskWebActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWebChromeClient:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

.field private mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

.field private mWebViewClient:Lcom/prompt/kiosk/slauncher/KioskWebViewClient;

.field private refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebViewClient:Lcom/prompt/kiosk/slauncher/KioskWebViewClient;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebChromeClient:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    .line 37
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Lcom/prompt/kiosk/slauncher/KioskWebView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    return-object p0
.end method

.method private initWebViewSetting(Landroid/content/Context;Landroid/webkit/WebView;Lcom/prompt/kiosk/slauncher/KioskWebViewClient;Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)V
    .locals 0

    .line 266
    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 267
    invoke-virtual {p2, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 269
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p3, 0x1

    .line 271
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 275
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 p4, -0x1

    .line 276
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 278
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 280
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 281
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 282
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 283
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 p4, 0x0

    .line 284
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 287
    invoke-direct {p0, p2}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->setWebViewAccess(Landroid/webkit/WebView;)V

    .line 289
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 290
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method private loadFromIntent(Landroid/content/Intent;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setWebViewAccess(Landroid/webkit/WebView;)V
    .locals 2

    .line 294
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 295
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->setWebViewAllowContentAccess(Landroid/webkit/WebView;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->setWebViewAccessFromFileURLs(Landroid/webkit/WebView;)V

    return-void
.end method

.method private setWebViewAccessFromFileURLs(Landroid/webkit/WebView;)V
    .locals 2

    .line 304
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 305
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method private setWebViewAllowContentAccess(Landroid/webkit/WebView;)V
    .locals 1

    .line 300
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method


# virtual methods
.method public disableLongClick()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 193
    new-instance v1, Lcom/prompt/kiosk/slauncher/KioskWebActivity$4;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity$4;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->classSimpleName:Ljava/lang/String;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult 1-1-0 requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x7ee

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult 1-1 UploadHandler.FILECHOOSER_RESULTCODE"

    .line 164
    invoke-static {v0, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/UploadHandler;->onResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;

    invoke-static {}, Lcom/prompt/kiosk/slauncher/UploadHandler;->removeInstance()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iput-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/prompt/kiosk/slauncher/WindowInsetsCallback;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/WindowInsetsCallback;-><init>()V

    .line 65
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0b0025

    .line 73
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->setContentView(I)V

    const p1, 0x7f090030

    .line 74
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const p1, 0x7f090094

    .line 75
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/KioskWebView;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz p1, :cond_1

    .line 78
    new-instance p1, Lcom/prompt/kiosk/slauncher/KioskWebViewClient;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWebViewClient;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebViewClient:Lcom/prompt/kiosk/slauncher/KioskWebViewClient;

    .line 79
    new-instance p1, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1, v2}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebChromeClient:Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebViewClient:Lcom/prompt/kiosk/slauncher/KioskWebViewClient;

    .line 80
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->initWebViewSetting(Landroid/content/Context;Landroid/webkit/WebView;Lcom/prompt/kiosk/slauncher/KioskWebViewClient;Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 82
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity$2;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity$3;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->loadFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->removeDownloadNotification()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->stopLoading()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 137
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->clearAnimation()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 138
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 139
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 140
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 141
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 143
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 144
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->clearHistory()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 145
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->destroy()V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const v2, 0x30f9a

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x30f99

    .line 151
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x30f98

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 185
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 189
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->setIntent(Landroid/content/Intent;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->loadFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->classSimpleName:Ljava/lang/String;

    const-string v1, "onPause"

    .line 104
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz v1, :cond_0

    const-string v1, "wv is not null"

    .line 108
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 109
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->classSimpleName:Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestPermissionsResult 1-1 requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", permissions.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2328

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2329

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 227
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_4

    aget v0, p3, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 229
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->downloadStartNormal()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 230
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->clearBackupDownloadStatus()V

    goto :goto_2

    .line 206
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_4

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->classSimpleName:Ljava/lang/String;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRequestPermissionsResult 1-2 i = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissions = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", grantResults = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    aget v2, p3, v1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->openFileChooser(Ljava/util/ArrayList;)V

    .line 254
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->classSimpleName:Ljava/lang/String;

    const-string v1, "onResume"

    .line 115
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    if-eqz v1, :cond_0

    const-string v1, "wv is not null"

    .line 119
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->mWebView:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 120
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->onResume()V

    :cond_0
    return-void
.end method
