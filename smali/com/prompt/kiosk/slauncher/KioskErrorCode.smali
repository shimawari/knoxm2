.class public final enum Lcom/prompt/kiosk/slauncher/KioskErrorCode;
.super Ljava/lang/Enum;
.source "KioskErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prompt/kiosk/slauncher/KioskErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

.field public static final enum SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;


# instance fields
.field public final errorCode:Ljava/lang/String;

.field public final errorMsg:I

.field public final errorTitle:I


# direct methods
.method private static synthetic $values()[Lcom/prompt/kiosk/slauncher/KioskErrorCode;
    .locals 6

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    sget-object v1, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    sget-object v2, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    sget-object v3, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    sget-object v4, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    sget-object v5, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    filled-new-array/range {v0 .. v5}, [Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 7
    new-instance v6, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v1, "APP_CANNOT_EXECUTED"

    const/4 v2, 0x0

    const-string v3, "KIO_CODE_001"

    const v4, 0x7f0c002e

    const v5, 0x7f0c001c

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_CANNOT_EXECUTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 8
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v8, "APP_NOT_FOUND"

    const/4 v9, 0x1

    const-string v10, "KIO_CODE_002"

    const v11, 0x7f0c002e

    const v12, 0x7f0c001f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 9
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v2, "APP_TERMINATED"

    const/4 v3, 0x2

    const-string v4, "KIO_CODE_003"

    const v5, 0x7f0c002e

    const v6, 0x7f0c001b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_TERMINATED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 10
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v8, "SINGLE_NOT_MANAGED_APP"

    const/4 v9, 0x3

    const-string v10, "KIO_CODE_004"

    const v11, 0x7f0c002f

    const v12, 0x7f0c0047

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_NOT_MANAGED_APP:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 11
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v2, "SINGLE_APP_NOT_FOUND"

    const/4 v3, 0x4

    const-string v4, "KIO_CODE_005"

    const v5, 0x7f0c0045

    const v6, 0x7f0c0044

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->SINGLE_APP_NOT_FOUND:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 12
    new-instance v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    const-string v8, "APP_NOT_EXPORTED"

    const/4 v9, 0x5

    const-string v10, "KIO_CODE_006"

    const v11, 0x7f0c002e

    const v12, 0x7f0c001e

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 5
    invoke-static {}, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->$values()[Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->$VALUES:[Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorCode:Ljava/lang/String;

    iput p4, p0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorTitle:I

    iput p5, p0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->errorMsg:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/KioskErrorCode;
    .locals 1

    const-class v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/prompt/kiosk/slauncher/KioskErrorCode;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/KioskErrorCode;->$VALUES:[Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    .line 5
    invoke-virtual {v0}, [Lcom/prompt/kiosk/slauncher/KioskErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/KioskErrorCode;

    return-object v0
.end method
