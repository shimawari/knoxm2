.class public abstract Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;
.super Landroid/database/ContentObserver;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/device/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusContentObserver"
.end annotation


# instance fields
.field protected mContentUris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;->mContentUris:[Landroid/net/Uri;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 194
    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {p1, v4, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterContentObserver(Landroid/content/ContentResolver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusContentObserver;->mContentUris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
