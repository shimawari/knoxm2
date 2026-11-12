.class public final Lcom/prompt/kiosk/utils/ContextStore;
.super Ljava/lang/Object;
.source "ContextStore.java"


# static fields
.field private static final classSimpleName:Ljava/lang/String; = "ContextStore"

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/utils/ContextStore;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-class v0, Lcom/prompt/kiosk/utils/ContextStore;

    .line 12
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/prompt/kiosk/utils/ContextStore;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Kiosk : Context: "

    const-class v1, Lcom/prompt/kiosk/utils/ContextStore;

    .line 21
    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/prompt/kiosk/utils/ContextStore;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    sput-object p0, Lcom/prompt/kiosk/utils/ContextStore;->context:Landroid/content/Context;

    sget-object v2, Lcom/prompt/kiosk/utils/ContextStore;->classSimpleName:Ljava/lang/String;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", AppContext: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {v2, p0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->dLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
