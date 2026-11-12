.class Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 296
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;->this$0:Lcom/prompt/kiosk/slauncher/DigitalClock;

    .line 301
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->access$100(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    return-void
.end method
