.class Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;
.super Ljava/lang/Object;
.source "EmmConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;

.field final synthetic val$resultList:Ljava/util/ArrayList;

.field final synthetic val$resultMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->val$resultList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->val$resultMsg:Ljava/lang/String;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->val$resultList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;

    .line 441
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->access$300(Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->val$resultMsg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;

    .line 443
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;->access$300(Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoCmd$1;->val$resultList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;->onSuccess(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
