.class Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;
.super Ljava/lang/Thread;
.source "LocaleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

.field final synthetic val$localeConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;->val$localeConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 72
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 75
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->access$000(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;->val$localeConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->access$300(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    return-void
.end method
