.class Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1914
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;Lcom/prompt/kiosk/slauncher/Launcher$1;)V
    .locals 0

    .line 1914
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 1917
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/Launcher;->closeSystemDialogs()V

    return-void
.end method
