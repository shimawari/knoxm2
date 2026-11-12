.class final enum Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;
.super Ljava/lang/Enum;
.source "LauncherViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum ALPHA:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum DURATION:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum INTERPOLATOR:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum ROTATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum ROTATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum START_DELAY:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;


# direct methods
.method private static synthetic $values()[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;
    .locals 10

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v2, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v3, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v4, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v5, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v6, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v7, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v8, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    sget-object v9, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    filled-new-array/range {v0 .. v9}, [Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 31
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 32
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_X"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 33
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_Y"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 34
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ROTATION_X"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_X:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 35
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ROTATION_Y"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 36
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ALPHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 37
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "START_DELAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 38
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "DURATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 39
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    const-string v1, "INTERPOLATOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 29
    invoke-static {}, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->$values()[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;
    .locals 1

    const-class v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 29
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    return-object p0
.end method

.method public static values()[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    .line 29
    invoke-virtual {v0}, [Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prompt/kiosk/slauncher/LauncherViewPropertyAnimator$Properties;

    return-object v0
.end method
