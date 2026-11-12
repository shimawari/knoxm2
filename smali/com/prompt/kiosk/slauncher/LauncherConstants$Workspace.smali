.class public Lcom/prompt/kiosk/slauncher/LauncherConstants$Workspace;
.super Ljava/lang/Object;
.source "LauncherConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Workspace"
.end annotation


# static fields
.field static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field static CAMERA_DISTANCE:F = 6500.0f

.field public static CAMERA_DISTANCE_DEFAULT:F = 1280.0f

.field static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field static final DEFAULT_CELL_COUNT_X:I = 0x4

.field static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final REORDER_TIMEOUT:I = 0xfa

.field static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
