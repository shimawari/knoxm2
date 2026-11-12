.class Lcom/prompt/kiosk/slauncher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/ITitled;


# static fields
.field static final NO_ID:I = -0x1

.field static final RESIZE_BOTH:I = 0x3

.field static final RESIZE_HORIZONTAL:I = 0x1

.field static final RESIZE_NONE:I = 0x0

.field static final RESIZE_VERTICAL:I = 0x2


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field ctime:J

.field id:J

.field itemType:I

.field minSpanX:I

.field minSpanY:I

.field requiresDbUpdate:Z

.field resizeMode:I

.field screen:I

.field spanX:I

.field spanY:I

.field title:Ljava/lang/CharSequence;

.field userSpanX:I

.field userSpanY:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->resizeMode:I

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->requiresDbUpdate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Lcom/prompt/kiosk/slauncher/ItemInfo;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->userSpanY:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->resizeMode:I

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->requiresDbUpdate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 140
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    .line 141
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 142
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 143
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 144
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 145
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 146
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    .line 147
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 148
    iget v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->resizeMode:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->resizeMode:I

    .line 149
    iget-wide v0, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    iput-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    .line 150
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 177
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 179
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 181
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Favorite"

    const-string v0, "Could not write icon"

    .line 184
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "icon"

    .line 192
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method static writeCheckedIconBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "checkedIcon"

    .line 199
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTableContentUri(JZ)Landroid/net/Uri;
    .locals 0

    .line 226
    invoke-static {p1, p2, p3}, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getTableUri(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_0

    .line 223
    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 134
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "title"

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ctime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " span="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ctime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/prompt/kiosk/slauncher/ItemInfo;->ctime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    return-void
.end method
