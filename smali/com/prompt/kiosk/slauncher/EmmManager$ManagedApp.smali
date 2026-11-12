.class Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;
.super Lcom/prompt/kiosk/slauncher/EmmAppInfo;
.source "EmmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedApp"
.end annotation


# instance fields
.field downloadRetried:Z

.field lastDownloadAttempt:J

.field lastInfoUpdate:J


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmAppInfo;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;-><init>(Lcom/prompt/kiosk/slauncher/EmmAppInfo;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    return-void
.end method

.method constructor <init>(Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;-><init>(Lcom/prompt/kiosk/slauncher/EmmAppInfo;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    .line 79
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    .line 80
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/EmmAppInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastDownloadAttempt:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->downloadRetried:Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/prompt/kiosk/slauncher/EmmManager$ManagedApp;->lastInfoUpdate:J

    return-void
.end method
