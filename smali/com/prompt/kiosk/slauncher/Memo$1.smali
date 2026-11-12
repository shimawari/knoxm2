.class Lcom/prompt/kiosk/slauncher/Memo$1;
.super Ljava/lang/Object;
.source "Memo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/Memo;->onApplyThemeResource(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Memo;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Memo;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/prompt/kiosk/slauncher/MemoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 107
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Memo;->access$100(Lcom/prompt/kiosk/slauncher/Memo;)I

    move-result v0

    const-string v1, "homeWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "homeWidgetType"

    const/16 v1, 0x37

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 110
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Memo;->access$200(Lcom/prompt/kiosk/slauncher/Memo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "homeWidgetPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 111
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Memo;->getWidth()I

    move-result v0

    const-string v1, "w"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 112
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Memo;->getHeight()I

    move-result v0

    const-string v1, "h"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo$1;->this$0:Lcom/prompt/kiosk/slauncher/Memo;

    .line 113
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
