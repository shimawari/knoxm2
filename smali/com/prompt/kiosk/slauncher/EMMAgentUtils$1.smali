.class Lcom/prompt/kiosk/slauncher/EMMAgentUtils$1;
.super Ljava/lang/Object;
.source "EMMAgentUtils.java"

# interfaces
.implements Lcom/sds/emm/emmagent/lib/EMMServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->bindEMMAgent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .line 39
    :try_start_0
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected. Binding EMM Agent Complete."

    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->access$002(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;
    :try_end_0
    .catch Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Lcom/sds/emm/emmagent/lib/exception/EMMAgentLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->access$002(Lcom/sds/emm/emmagent/lib/EMMAgentManager;)Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    return-void
.end method
