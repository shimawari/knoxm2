.class public Lcom/prompt/kiosk/slauncher/ShortcutInfo;
.super Lcom/prompt/kiosk/slauncher/IconInfo;
.source "ShortcutInfo.java"


# instance fields
.field appId:Ljava/lang/String;

.field appStatus:I

.field appType:Ljava/lang/String;

.field badgeCount:I

.field checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

.field className:Ljava/lang/String;

.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field isDefault:Z

.field packageName:Ljava/lang/String;

.field resolverTag:Ljava/lang/String;

.field userIcon:Z

.field userTitle:Z

.field usingFallbackIcon:Z

.field usingOriginalIcon:Z

.field version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>(Lcom/prompt/kiosk/slauncher/ApplicationInfo;)V

    .line 112
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    .line 125
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/IconInfo;-><init>(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V

    .line 91
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 93
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 95
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 96
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 99
    iget-boolean v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    .line 100
    iget-boolean v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    .line 102
    iget-object v0, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 104
    iget-object v1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 105
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   title=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " customIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p2, p2, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mCheckedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Lcom/prompt/kiosk/slauncher/IconCache;)Landroid/graphics/Bitmap;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 144
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getOriginalIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->appStatus:I

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->isDefault:Z

    return v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3

    .line 174
    invoke-super {p0, p1}, Lcom/prompt/kiosk/slauncher/IconInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 176
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "intent"

    .line 177
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userIcon:Z

    const-string v2, "iconType"

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->customIcon:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingOriginalIcon:Z

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 197
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_5

    const-string v1, "iconPackage"

    .line 199
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 201
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v1, "iconResource"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mCheckedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mCheckedIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->writeCheckedIconBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_6

    const-string v1, "checkedIconPackage"

    .line 210
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->checkedIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 212
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v1, "checkedIconResource"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->userTitle:Z

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "displayMode"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mCheckedIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOriginalIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutInfo(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
