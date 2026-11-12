.class Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;
.super Ljava/lang/Object;
.source "HomeTextWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/HomeTextWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextContent"
.end annotation


# instance fields
.field color:I

.field gravity:I

.field style:I

.field text:Ljava/lang/String;

.field textSize:F


# direct methods
.method constructor <init>(Ljava/lang/String;IIFI)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->color:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->style:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->textSize:F

    iput p5, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->gravity:I

    return-void
.end method

.method private replaceText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "kiosk.emm."

    const-string v1, "Get Kiosk User Information. "

    const-string v2, ""

    .line 99
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-static {}, Lcom/sds/emm/emmagent/lib/BindManager;->obtainManager()Lcom/sds/emm/emmagent/lib/EMMAgentManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/EMMAgentManager;->getKioskManager()Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sds/emm/emmagent/lib/kiosk/KioskManager;->getKioskUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent$1;

    invoke-direct {v5, p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent$1;-><init>(Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;)V

    invoke-virtual {v5}, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/prompt/kiosk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    invoke-static {}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get Kiosk User Information exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "${"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/prompt/kiosk/utils/StringUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method apply(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5

    .line 76
    invoke-static {}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "${"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0, p2, v1}, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->replaceText(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->text:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->color:I

    if-eqz p2, :cond_2

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->style:I

    if-eqz v0, :cond_3

    .line 88
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget p2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->textSize:F

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->gravity:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x1

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
