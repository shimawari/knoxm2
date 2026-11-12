.class public Lcom/prompt/kiosk/slauncher/LauncherConfig$ScreenOrientation;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenOrientation"
.end annotation


# static fields
.field public static final ORIENTATION_AUTO:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x3

.field public static final ORIENTATION_NONE:I = 0x0

.field public static final ORIENTATION_PORTRAIT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
