.class public abstract Lcom/prompt/kiosk/slauncher/IconInfo;
.super Lcom/prompt/kiosk/slauncher/ItemInfo;
.source "IconInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field mCheckedIcon:Landroid/graphics/Bitmap;

.field mIcon:Landroid/graphics/Bitmap;

.field mOriginalIcon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>(Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>(Lcom/prompt/kiosk/slauncher/ItemInfo;)V

    return-void
.end method


# virtual methods
.method public abstract getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;
.end method

.method public bridge synthetic getTableContentUri(JZ)Landroid/net/Uri;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTableUri(Z)Landroid/net/Uri;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableUri(Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
