.class Lcom/prompt/kiosk/slauncher/AbstractFolder$4;
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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$4;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/prompt/kiosk/slauncher/Alarm;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$4;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 708
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->completeDragExit()V

    return-void
.end method
