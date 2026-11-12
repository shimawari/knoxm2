.class public final enum Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;
.super Ljava/lang/Enum;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/device/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LIFE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

.field public static final enum NONE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

.field public static final enum PAUSE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

.field public static final enum RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;


# direct methods
.method private static synthetic $values()[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;
    .locals 3

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->NONE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    sget-object v1, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    sget-object v2, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->PAUSE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    filled-new-array {v0, v1, v2}, [Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->NONE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    new-instance v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    const-string v1, "RESUME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->RESUME:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    new-instance v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    const-string v1, "PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->PAUSE:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    .line 21
    invoke-static {}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->$values()[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->$VALUES:[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;
    .locals 1

    const-class v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    .line 21
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->$VALUES:[Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    .line 21
    invoke-virtual {v0}, [Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/device/DeviceStatus$LIFE_STATE;

    return-object v0
.end method
