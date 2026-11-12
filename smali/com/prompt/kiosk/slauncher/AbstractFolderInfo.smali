.class public abstract Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;
.super Lcom/prompt/kiosk/slauncher/ItemInfo;
.source "AbstractFolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;
    }
.end annotation


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->add(Ljava/util/ArrayList;)V

    return-void
.end method

.method public add(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onAdd(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->itemsChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method addListener(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract addOrRemoveItems(Lcom/prompt/kiosk/slauncher/Launcher;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/Launcher;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public addRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_6

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->itemsChanged()V

    :cond_6
    return-void
.end method

.method clearListener()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public contains(Lcom/prompt/kiosk/slauncher/IconInfo;)Z
    .locals 3

    .line 155
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.prompt.kiosk.slauncher.intent.action.FIRE_DOWNLOAD_PROXY_SHORTCUT"

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 168
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public findItemAllByIntentDescription(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v3, "intent is null"

    const/4 v4, 0x3

    .line 195
    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->error(Ljava/lang/String;I)V

    .line 198
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prompt/kiosk/slauncher/IconInfo;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3

    .line 202
    iget-object v6, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 204
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 205
    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 208
    :cond_2
    iget-object v6, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_3
    iget-object v6, v5, Lcom/prompt/kiosk/slauncher/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public bridge synthetic getTableContentUri(JZ)Landroid/net/Uri;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTableUri(Z)Landroid/net/Uri;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTableUri(Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method itemsChanged()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onItemsChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    return-void
.end method

.method refreshFolder()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->refreshFolder()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->remove(Ljava/util/ArrayList;)V

    return-void
.end method

.method public remove(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->contents:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onRemove(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->itemsChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method removeListener(Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 120
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->unbind()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public update(Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->listeners:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;->onUpdate(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;->itemsChanged()V

    return-void
.end method
