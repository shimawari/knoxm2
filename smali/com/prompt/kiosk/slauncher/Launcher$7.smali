.class Lcom/prompt/kiosk/slauncher/Launcher$7;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private onAdvanceMessage()V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1130
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1300(Lcom/prompt/kiosk/slauncher/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1131
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1300(Lcom/prompt/kiosk/slauncher/Launcher;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    mul-int/lit16 v3, v1, 0xfa

    .line 1133
    new-instance v4, Lcom/prompt/kiosk/slauncher/Launcher$7$1;

    invoke-direct {v4, p0, v2}, Lcom/prompt/kiosk/slauncher/Launcher$7$1;-><init>(Lcom/prompt/kiosk/slauncher/Launcher$7;Landroid/view/View;)V

    int-to-long v2, v3

    invoke-virtual {p0, v4, v2, v3}, Lcom/prompt/kiosk/slauncher/Launcher$7;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    const-wide/16 v1, 0x4e20

    .line 1142
    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1400(Lcom/prompt/kiosk/slauncher/Launcher;J)V

    return-void
.end method

.method private onScreenSaverScreenOff()V
    .locals 5

    .line 1146
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->getScreensaverContentType()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-static {v0}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1148
    invoke-static {}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen Saver Start. Content Type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->isScreenSaverFileExist()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Image"

    .line 1150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x4000000

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_0

    .line 1151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1153
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1154
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "Video"

    .line 1155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/prompt/kiosk/slauncher/screensaver/VideoViewActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1158
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1159
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "Screen Saver File Not Exist"

    const/4 v1, 0x2

    .line 1162
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher$7;->onAdvanceMessage()V

    .line 1116
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x3138f

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1117
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->bindEMMAgent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1118
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1100(Lcom/prompt/kiosk/slauncher/Launcher;)Lcom/prompt/kiosk/slauncher/EmmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/EmmManager;->setDeviceIdAgain()V

    .line 1120
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x31385

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Launcher$7;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1121
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1000(Lcom/prompt/kiosk/slauncher/Launcher;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "AllowHideInfoIcon"

    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/EMMAgentUtils;->checkKioskPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/Launcher;->access$1200(Lcom/prompt/kiosk/slauncher/Launcher;Z)V

    .line 1123
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x31391

    if-ne p1, v0, :cond_3

    .line 1124
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Launcher$7;->onScreenSaverScreenOff()V

    :cond_3
    return-void
.end method
