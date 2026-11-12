.class Lcom/prompt/kiosk/slauncher/DigitalClock$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$1;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onReceive(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$1;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    const/4 v0, 0x0

    .line 224
    aget-object p2, p2, v0

    check-cast p2, Ljava/util/Calendar;

    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->access$000(Lcom/prompt/kiosk/slauncher/DigitalClock;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
