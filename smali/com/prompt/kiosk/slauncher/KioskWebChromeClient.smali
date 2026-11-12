.class public Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "KioskWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$FullscreenHolder;
    }
.end annotation


# static fields
.field private static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final HANDLER_MSG_PROGRESS:I = 0x325

.field private static final PROGRESS_WAIT_TIME:I = 0x1388

.field private static final classSimpleName:Ljava/lang/String; = "KioskWebChromeClient"

.field private static mLastProgress:I


# instance fields
.field private mAlertTitle:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mKWContext:Landroid/content/Context;

.field private mKioskWebHandler:Landroid/os/Handler;

.field private mLocalHandler:Landroid/os/Handler;

.field private mOriginalOrientation:I

.field public mProgress:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 370
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKioskWebHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mProgress:Landroid/widget/ProgressBar;

    .line 51
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$1;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLocalHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mWebView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKioskWebHandler:Landroid/os/Handler;

    .line 80
    check-cast p1, Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    const p2, 0x7f090081

    invoke-virtual {p1, p2}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLastProgress:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    return-object p0
.end method

.method private setFullscreen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 379
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 383
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 384
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 386
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 387
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 389
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->webLog(Landroid/webkit/ConsoleMessage;)V

    .line 91
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .line 280
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p4

    .line 281
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 282
    invoke-virtual {p4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p4

    const-string v0, "url"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateWindow isDialog = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUserGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", url = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 285
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/KioskWebUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 291
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/KioskWebUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKioskWebHandler:Landroid/os/Handler;

    .line 295
    invoke-static {p2, p1, p4}, Lcom/prompt/kiosk/slauncher/KioskWebUtils;->openUrl(Landroid/os/Handler;Landroid/webkit/WebView;Ljava/lang/String;)V

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGeolocationPermissionsShowPrompt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->setFullscreen(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 431
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mCustomView:Landroid/view/View;

    .line 432
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 436
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 437
    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    const-string p2, "onJsAlert"

    .line 101
    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 110
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$2;

    invoke-direct {p2, p0, p4}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$2;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$3;

    invoke-direct {p2, p0, p4}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$3;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    const-string p2, "onJsConfirm"

    .line 137
    invoke-static {p1, p2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    :cond_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$4;

    invoke-direct {p2, p0, p4}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$4;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;

    invoke-direct {p2, p0, p4}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$5;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;

    invoke-direct {p2, p0, p4}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$6;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    sget-object p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    const-string v0, "onJsPrompt"

    .line 180
    invoke-static {p2, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mAlertTitle:Ljava/lang/String;

    .line 185
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    :cond_0
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p3, 0x0

    .line 189
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 191
    new-instance p3, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    .line 193
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 195
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p4, 0x0

    .line 196
    invoke-virtual {p3, p4, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 197
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 199
    :cond_1
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    new-instance p4, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;

    invoke-direct {p4, p0, p5, p3}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$7;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    const p3, 0x104000a

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    new-instance p3, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$8;

    invoke-direct {p3, p0, p5}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$8;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsPromptResult;)V

    const/high16 p4, 0x1040000

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    new-instance p3, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$9;

    invoke-direct {p3, p0, p5}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient$9;-><init>(Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 4

    .line 232
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPermissionRequest request.getResources()[i] = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPermissionRequestCanceled request.getResources().length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 336
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    sput p2, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLastProgress:I

    .line 338
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->setProgress(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLocalHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x325

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLocalHandler:Landroid/os/Handler;

    .line 341
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mLocalHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    .line 343
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p3}, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    sget-object p1, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShowFileChooser 1-1 isCaptureEnabled() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getFilenameHint() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getTitle() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->classSimpleName:Ljava/lang/String;

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onShowFileChooser 1-2 type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    const-string v0, "android.permission.CAMERA"

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 322
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/UploadHandler;->saveParam(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 323
    check-cast p1, Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2328

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mKWContext:Landroid/content/Context;

    .line 325
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V

    :goto_1
    return v1
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    .line 353
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebChromeClient;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
