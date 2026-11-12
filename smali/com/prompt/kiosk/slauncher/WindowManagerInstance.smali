.class Lcom/prompt/kiosk/slauncher/WindowManagerInstance;
.super Ljava/lang/Object;
.source "WindowManagerInstance.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Landroid/view/WindowManager;
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->windowManager:Landroid/view/WindowManager;

    :cond_0
    sget-object v0, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/prompt/kiosk/slauncher/WindowManagerInstance;->applicationContext:Landroid/content/Context;

    return-void
.end method
