.class Lcom/prompt/kiosk/slauncher/AboutKioskView$2;
.super Ljava/lang/Object;
.source "AboutKioskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AboutKioskView;->blockMultiButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$2;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$2;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    const/4 v1, 0x1

    .line 145
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$100(Lcom/prompt/kiosk/slauncher/AboutKioskView;Z)V

    return-void
.end method
