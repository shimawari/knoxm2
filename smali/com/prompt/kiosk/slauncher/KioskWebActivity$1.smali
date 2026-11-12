.class Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;
.super Landroid/os/Handler;
.source "KioskWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/KioskWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 50
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 41
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->access$000(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30f98
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
