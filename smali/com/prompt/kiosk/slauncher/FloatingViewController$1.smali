.class Lcom/prompt/kiosk/slauncher/FloatingViewController$1;
.super Ljava/lang/Object;
.source "FloatingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButtonOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 95
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButton()V

    return-void
.end method
