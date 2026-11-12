.class public final enum Lcom/prompt/kiosk/slauncher/DialogType;
.super Ljava/lang/Enum;
.source "DialogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prompt/kiosk/slauncher/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum EMM_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum EXPIRED:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum INEXECUTABLE:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum PLAYSTORE_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum REQUEST_FLOAT_WINDOW_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum REQUEST_NOTIFICATION_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum SINGLE_NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum SINGLE_NOT_MGP:Lcom/prompt/kiosk/slauncher/DialogType;

.field public static final enum UPDATE:Lcom/prompt/kiosk/slauncher/DialogType;


# direct methods
.method private static synthetic $values()[Lcom/prompt/kiosk/slauncher/DialogType;
    .locals 11

    sget-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->EMM_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v1, Lcom/prompt/kiosk/slauncher/DialogType;->PLAYSTORE_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v2, Lcom/prompt/kiosk/slauncher/DialogType;->UPDATE:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v3, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_MGP:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v4, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v5, Lcom/prompt/kiosk/slauncher/DialogType;->INEXECUTABLE:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v6, Lcom/prompt/kiosk/slauncher/DialogType;->NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v7, Lcom/prompt/kiosk/slauncher/DialogType;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v8, Lcom/prompt/kiosk/slauncher/DialogType;->EXPIRED:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v9, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_NOTIFICATION_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    sget-object v10, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_FLOAT_WINDOW_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    filled-new-array/range {v0 .. v10}, [Lcom/prompt/kiosk/slauncher/DialogType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "EMM_DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->EMM_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 5
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "PLAYSTORE_DOWNLOAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->PLAYSTORE_DOWNLOAD:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 6
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->UPDATE:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 7
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "SINGLE_NOT_MGP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_MGP:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 8
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "SINGLE_NOT_FOUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->SINGLE_NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 9
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "INEXECUTABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->INEXECUTABLE:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 10
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->NOT_FOUND:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 11
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "APP_NOT_EXPORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->APP_NOT_EXPORTED:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 12
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "EXPIRED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->EXPIRED:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 13
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "REQUEST_NOTIFICATION_PERMISSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_NOTIFICATION_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 14
    new-instance v0, Lcom/prompt/kiosk/slauncher/DialogType;

    const-string v1, "REQUEST_FLOAT_WINDOW_PERMISSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->REQUEST_FLOAT_WINDOW_PERMISSION:Lcom/prompt/kiosk/slauncher/DialogType;

    .line 3
    invoke-static {}, Lcom/prompt/kiosk/slauncher/DialogType;->$values()[Lcom/prompt/kiosk/slauncher/DialogType;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->$VALUES:[Lcom/prompt/kiosk/slauncher/DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/DialogType;
    .locals 1

    const-class v0, Lcom/prompt/kiosk/slauncher/DialogType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/DialogType;

    return-object p0
.end method

.method public static values()[Lcom/prompt/kiosk/slauncher/DialogType;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/DialogType;->$VALUES:[Lcom/prompt/kiosk/slauncher/DialogType;

    .line 3
    invoke-virtual {v0}, [Lcom/prompt/kiosk/slauncher/DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/DialogType;

    return-object v0
.end method
