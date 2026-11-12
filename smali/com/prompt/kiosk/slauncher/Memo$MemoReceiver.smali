.class Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Memo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Memo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Memo;


# direct methods
.method private constructor <init>(Lcom/prompt/kiosk/slauncher/Memo;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 203
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/Memo;Lcom/prompt/kiosk/slauncher/Memo$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Memo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "homeWidgetId"

    const/4 v1, -0x1

    .line 206
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 207
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Memo;->access$100(Lcom/prompt/kiosk/slauncher/Memo;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 209
    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/Memo;->onApplyThemeResource(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method
