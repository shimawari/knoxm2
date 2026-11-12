.class Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;
.super Landroid/os/AsyncTask;
.source "LocaleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/prompt/kiosk/slauncher/LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/prompt/kiosk/slauncher/LocaleConfiguration;
    .locals 2

    .line 39
    new-instance p1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    invoke-direct {p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;-><init>()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 40
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->access$000(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->access$100(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->doInBackground([Ljava/lang/Void;)Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 46
    invoke-static {v0, p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->access$202(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->this$0:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 47
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->checkForLocaleChange()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->onPostExecute(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    return-void
.end method
