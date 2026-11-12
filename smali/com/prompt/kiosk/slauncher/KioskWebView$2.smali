.class Lcom/prompt/kiosk/slauncher/KioskWebView$2;
.super Ljava/lang/Object;
.source "KioskWebView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebView;->setonMenuItemClick(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13

    const-string v0, "attachment; filename="

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, -0x1

    const-string v4, "EXTRA_HIT_TEST_RESULT"

    const-string v5, "EXTRA_URL"

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 127
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 128
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/KioskWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-static {v7}, Lcom/prompt/kiosk/slauncher/DownloadUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    :try_start_0
    invoke-static {v7}, Lcom/prompt/kiosk/slauncher/DownloadUtils;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string p1, "attachment; "

    :goto_0
    move-object v9, p1

    const-wide/16 v11, 0x0

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 139
    invoke-static/range {v6 .. v12}, Lcom/prompt/kiosk/slauncher/KioskWebView;->access$200(Lcom/prompt/kiosk/slauncher/KioskWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebView$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebView;

    .line 121
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
