.class Lcom/prompt/kiosk/slauncher/EmmManager$1;
.super Ljava/lang/Object;
.source "EmmManager.java"

# interfaces
.implements Lcom/sds/emm/emmagent/lib/EMMServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/EmmManager;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 7

    const-string v0, "EmmManager Constructor agent library EMM mPrivateKey: [mask:L"

    const-string v1, "EmmManager Constructor agent library EMM RsaKey: "

    const-string v2, "EmmManager Constructor agent library EMM DeviceId: "

    const-string v3, "EmmManager Constructor agent library EMM TenantId: "

    :try_start_0
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 117
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$002(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 119
    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$000(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v6}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$200(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$102(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$200(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$100(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 123
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$000(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$200(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getServerPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$402(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$400(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 126
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$000(Lcom/prompt/kiosk/slauncher/EmmManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getProvisionManager()Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sds/emm/emmagent/lib/provision/ProvisionManager;->getClientPrivateKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$502(Lcom/prompt/kiosk/slauncher/EmmManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 127
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$500(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmmManager Constructor agent library EMM mPrivateKey: [mask:L0]"

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$500(Lcom/prompt/kiosk/slauncher/EmmManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    .line 134
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/EmmManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0c0000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Agent can not bind service"

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$1;->this$0:Lcom/prompt/kiosk/slauncher/EmmManager;

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/EmmManager;->access$002(Lcom/prompt/kiosk/slauncher/EmmManager;Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-void
.end method
