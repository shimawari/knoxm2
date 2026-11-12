.class Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;
.super Ljava/lang/Object;
.source "DownloadProxyShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadProxyItem"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field drawableId:Ljava/lang/String;

.field label:Ljava/lang/String;

.field links:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->links:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;-><init>()V

    return-void
.end method
