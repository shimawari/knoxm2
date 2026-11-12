.class public Lcom/prompt/kiosk/slauncher/LauncherConfig$Folder;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Folder"
.end annotation


# static fields
.field public static final ENABLE_EMPTY_FOLDER:Z = false

.field public static final ENABLE_FOLDERICON_SCROLL:Z = true

.field public static final ENABLE_FOLDER_SIZE_X_ALWAYS_MAX:Z = false

.field public static final ENABLE_REOPEN_FOLDER_AFTER_APP_CHOOSER:Z = false

.field public static final MAX_FOLDER_CONTENTS_INVALID:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
