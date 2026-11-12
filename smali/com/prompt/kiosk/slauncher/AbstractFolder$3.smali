.class Lcom/prompt/kiosk/slauncher/AbstractFolder$3;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/prompt/kiosk/slauncher/Alarm;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 490
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->isValidTargetCell()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 491
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mEmptyCell:[I

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$3;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$500(Lcom/prompt/kiosk/slauncher/AbstractFolder;)[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$600(Lcom/prompt/kiosk/slauncher/AbstractFolder;[I[I)V

    :cond_0
    return-void
.end method
