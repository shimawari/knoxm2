.class Lcom/prompt/kiosk/slauncher/KioskWebActivity$2;
.super Ljava/lang/Object;
.source "KioskWebActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/KioskWebActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/KioskWebActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    .line 85
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/KioskWebActivity;->access$100(Lcom/prompt/kiosk/slauncher/KioskWebActivity;)Lcom/prompt/kiosk/slauncher/KioskWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/KioskWebView;->reload()V

    return-void
.end method
