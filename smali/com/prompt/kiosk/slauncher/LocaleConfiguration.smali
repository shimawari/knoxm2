.class public Lcom/prompt/kiosk/slauncher/LocaleConfiguration;
.super Ljava/lang/Object;
.source "LocaleConfiguration.java"


# static fields
.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static final TAG:Ljava/lang/String; = "LocaleConfiguration"


# instance fields
.field public locale:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

.field public mcc:I

.field public mnc:I

.field private sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/IconCache;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->readConfiguration(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$202(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)Lcom/prompt/kiosk/slauncher/LocaleConfiguration;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    return-object p1
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->writeConfiguration(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    return-void
.end method

.method private readConfiguration(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 84
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->locale:Ljava/lang/String;

    .line 86
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    .line 87
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :catch_2
    :cond_0
    throw p1

    :catch_3
    :goto_1
    if-eqz v0, :cond_1

    .line 95
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    :goto_3
    if-eqz v0, :cond_1

    goto :goto_2

    :catch_5
    :cond_1
    :goto_4
    return-void
.end method

.method private writeConfiguration(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V
    .locals 4

    const-string v0, "launcher.preferences"

    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v1, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 109
    iget v1, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget p2, p2, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 116
    :catch_2
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 120
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 125
    :catch_3
    :cond_0
    throw p1

    :catch_4
    :goto_3
    if-eqz v1, :cond_1

    goto :goto_1

    :catch_5
    :cond_1
    :goto_4
    return-void
.end method


# virtual methods
.method public checkForLocaleChange()V
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;-><init>(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 49
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 54
    iget-object v1, v1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->locale:Ljava/lang/String;

    .line 55
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 57
    iget v3, v3, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    .line 58
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 59
    iget v5, v5, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I

    .line 60
    iget v6, v0, Landroid/content/res/Configuration;->mnc:I

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v4, v3, :cond_1

    if-eq v6, v5, :cond_2

    :cond_1
    sget-object v1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->TAG:Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Locale Changed. locale = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / mcc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / mnc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prompt/kiosk/utils/KioskLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 66
    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->locale:Ljava/lang/String;

    .line 67
    iput v4, v0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mcc:I

    .line 68
    iput v6, v0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mnc:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->mIconCache:Lcom/prompt/kiosk/slauncher/IconCache;

    .line 69
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/IconCache;->flush()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LocaleConfiguration;->sLocaleConfiguration:Lcom/prompt/kiosk/slauncher/LocaleConfiguration;

    .line 72
    new-instance v1, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;

    const-string v2, "WriteLocaleConfiguration"

    invoke-direct {v1, p0, v2, v0}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;-><init>(Lcom/prompt/kiosk/slauncher/LocaleConfiguration;Ljava/lang/String;Lcom/prompt/kiosk/slauncher/LocaleConfiguration;)V

    .line 77
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LocaleConfiguration$2;->start()V

    :cond_2
    return-void
.end method
