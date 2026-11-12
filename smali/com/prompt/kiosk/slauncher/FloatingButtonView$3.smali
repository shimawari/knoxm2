.class Lcom/prompt/kiosk/slauncher/FloatingButtonView$3;
.super Ljava/util/TimerTask;
.source "FloatingButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FloatingButtonView;->setFloatingButtonTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FloatingButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FloatingButtonView$3;->this$0:Lcom/prompt/kiosk/slauncher/FloatingButtonView;

    .line 231
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 234
    invoke-static {}, Lcom/prompt/kiosk/slauncher/FloatingViewController;->hideFloatingButtonOnUIThread()V

    const/4 v0, 0x0

    .line 235
    sput-boolean v0, Lcom/prompt/kiosk/slauncher/FloatingButtonView;->changing:Z

    return-void
.end method
