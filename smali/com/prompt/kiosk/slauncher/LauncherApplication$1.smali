.class Lcom/prompt/kiosk/slauncher/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/LauncherApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication$1;->this$0:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 129
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication$1;->this$0:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    .line 132
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/LauncherApplication;->mModel:Lcom/prompt/kiosk/slauncher/LauncherModel;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication$1;->this$0:Lcom/prompt/kiosk/slauncher/LauncherApplication;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    return-void
.end method
