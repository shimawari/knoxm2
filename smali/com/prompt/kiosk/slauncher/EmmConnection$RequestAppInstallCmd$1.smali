.class Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;
.super Ljava/lang/Object;
.source "EmmConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

.field final synthetic val$result:Z

.field final synthetic val$resultCode:Ljava/lang/String;

.field final synthetic val$resultMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$result:Z

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$resultMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$resultCode:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$result:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

    .line 599
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->access$800(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->access$700(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->this$1:Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;

    .line 601
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;->access$800(Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd;)Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$resultMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$RequestAppInstallCmd$1;->val$resultCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/EmmConnection$AppInstallResponseListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
