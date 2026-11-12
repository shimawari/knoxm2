.class public Lcom/prompt/kiosk/slauncher/UploadHandler;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FILECHOOSER_RESULTCODE:I = 0x7ee

.field private static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = ".fileprovider"

.field public static audioMimeType:Ljava/lang/String; = "audio/*"

.field private static final classSimpleName:Ljava/lang/String; = "UploadHandler"

.field public static imageMimeType:Ljava/lang/String; = "image/*"

.field private static mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler; = null

.field public static videoMimeType:Ljava/lang/String; = "video/*"


# instance fields
.field private mCapturedMedia:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mHandled:Z

.field private mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private saveCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private savefileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mCapturedMedia:Landroid/net/Uri;

    .line 287
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 288
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "output"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mCapturedMedia:Landroid/net/Uri;

    .line 289
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mCapturedMedia:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-object p1

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private createCaptureIntent(Z)[Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 229
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    array-length v2, v0

    if-lez v2, :cond_0

    .line 231
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "*/*"

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/prompt/kiosk/slauncher/UploadHandler;->imageMimeType:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, ".jpg"

    if-eqz p1, :cond_1

    new-array p1, v2, [Landroid/content/Intent;

    .line 237
    invoke-direct {p0, v3}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createTempFileContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createCameraIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prompt/kiosk/slauncher/UploadHandler;->videoMimeType:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v2, [Landroid/content/Intent;

    .line 240
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prompt/kiosk/slauncher/UploadHandler;->audioMimeType:Ljava/lang/String;

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v2, [Landroid/content/Intent;

    .line 243
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/content/Intent;

    .line 246
    invoke-direct {p0, v3}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createTempFileContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createCameraIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    .line 247
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x2

    .line 248
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/prompt/kiosk/slauncher/UploadHandler;->audioMimeType:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :cond_5
    new-array p1, v2, [Landroid/content/Intent;

    .line 258
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p1, v1

    :goto_1
    return-object p1
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createTempFileContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const-string v0, "createTempFileContentUri 1-2 mediaFile = "

    const-string v1, "createTempFileContentUri 1-1 mediaPath = "

    .line 266
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "captured_media"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mediaPath.exists() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mediaPath.mkdir() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Folder cannot be created."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {v1, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/UploadHandler;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/prompt/kiosk/slauncher/UploadHandler;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/UploadHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler;

    :cond_0
    sget-object p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler;

    return-object p0
.end method

.method private parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 186
    :cond_1
    new-array v0, p2, [Landroid/net/Uri;

    :goto_0
    if-ge v1, p2, :cond_2

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v2, -0x1

    if-eqz p2, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_2

    :cond_5
    :goto_1
    move-object p2, v0

    :goto_2
    if-nez p2, :cond_6

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mCapturedMedia:Landroid/net/Uri;

    if-eqz p1, :cond_6

    move-object p2, p1

    :cond_6
    if-eqz p2, :cond_7

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/net/Uri;

    aput-object p2, v0, v1

    :cond_7
    return-object v0
.end method

.method public static removeInstance()V
    .locals 2

    sget-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    const-string v1, "removeInstance 1-1 "

    .line 78
    invoke-static {v0, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUHL:Lcom/prompt/kiosk/slauncher/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "startActivity 1-1 intent.getAction() = "

    :try_start_0
    sget-object v1, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    .line 219
    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x7ee

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    const-string v1, "ActivityNotFoundException"

    .line 223
    invoke-static {v0, v1, p1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->eLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mContext:Landroid/content/Context;

    const-string v0, "Upload disable"

    const/4 v1, 0x1

    .line 224
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method handled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mHandled:Z

    return v0
.end method

.method public onResult(ILandroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/UploadHandler;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 103
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mHandled:Z

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mUploadMessage:Landroid/webkit/ValueCallback;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->mParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 136
    invoke-direct {p0, p3}, Lcom/prompt/kiosk/slauncher/UploadHandler;->createCaptureIntent(Z)[Landroid/content/Intent;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v3, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openFileChooser 1-1 captureIntents.length = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasCameraPermission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v1

    .line 146
    :goto_1
    array-length v3, p1

    if-ge p3, v3, :cond_2

    sget-object v3, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openFileChooser 1-1-1 captureIntents[i].getAction() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, p3

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    array-length p3, p1

    if-ne p3, v2, :cond_3

    sget-object p2, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    const-string p3, "openFileChooser 1-2"

    .line 156
    invoke-static {p2, p3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    aget-object p1, p1, v1

    goto :goto_2

    :cond_3
    sget-object p3, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    const-string v1, "openFileChooser 1-3"

    .line 159
    invoke-static {p3, v1}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 161
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 163
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.extra.INTENT"

    .line 164
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, p3

    .line 166
    :goto_2
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openFileChooser(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/prompt/kiosk/slauncher/UploadHandler;->classSimpleName:Ljava/lang/String;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openFileChooser 1-1 grentPermission.get(i) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prompt/kiosk/utils/KioskLogUtils;->iLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission.CAMERA"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->saveCallback:Landroid/webkit/ValueCallback;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->savefileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Z)V

    return-void
.end method

.method public saveParam(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->saveCallback:Landroid/webkit/ValueCallback;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/UploadHandler;->savefileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-void
.end method
