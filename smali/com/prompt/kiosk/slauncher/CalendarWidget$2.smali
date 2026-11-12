.class Lcom/prompt/kiosk/slauncher/CalendarWidget$2;
.super Ljava/lang/Object;
.source "CalendarWidget.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/CalendarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/CalendarWidget;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/CalendarWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget$2;->this$0:Lcom/prompt/kiosk/slauncher/CalendarWidget;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onReceive(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$AbsStatus;[Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget$2;->this$0:Lcom/prompt/kiosk/slauncher/CalendarWidget;

    .line 141
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->access$100(Lcom/prompt/kiosk/slauncher/CalendarWidget;)V

    return-void
.end method
