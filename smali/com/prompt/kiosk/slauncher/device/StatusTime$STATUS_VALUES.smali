.class public final enum Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;
.super Ljava/lang/Enum;
.source "StatusTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/device/StatusTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS_VALUES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

.field public static final enum TIME:Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;


# direct methods
.method private static synthetic $values()[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->TIME:Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    filled-new-array {v0}, [Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    const-string v1, "TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->TIME:Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    .line 16
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->$values()[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->$VALUES:[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;
    .locals 1

    const-class v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    return-object p0
.end method

.method public static values()[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->$VALUES:[Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    .line 16
    invoke-virtual {v0}, [Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/device/StatusTime$STATUS_VALUES;

    return-object v0
.end method
