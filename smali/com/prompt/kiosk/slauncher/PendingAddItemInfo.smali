.class public Lcom/prompt/kiosk/slauncher/PendingAddItemInfo;
.super Lcom/prompt/kiosk/slauncher/ItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTableContentUri(JZ)Landroid/net/Uri;
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTableUri(Z)Landroid/net/Uri;
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableUri(Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
