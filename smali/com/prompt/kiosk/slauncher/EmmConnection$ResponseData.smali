.class Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;
.super Ljava/lang/Object;
.source "EmmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponseData"
.end annotation


# instance fields
.field result:Z

.field resultCode:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;->result:Z

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/EmmConnection$ResponseData;->resultCode:Ljava/lang/String;

    return-void
.end method
