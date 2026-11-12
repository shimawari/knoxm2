.class public Lcom/prompt/kiosk/slauncher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;,
        Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sds.emm.kiosk.app2025071720122"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field public static final DATABASE_VERSION:I = 0x15

.field private static final LOGD:Z = true

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"


# instance fields
.field private mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sds.emm.kiosk.app2025071720122/appWidgetReset"

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->dbInsertAndCheck(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 803
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    const-string v2, " OR "

    .line 805
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 808
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dbInsertAndCheck(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 0

    const-string p0, "_id"

    .line 155
    invoke-virtual {p4, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-static {p1, p2, v0}, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    .line 163
    new-instance p2, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v0, p2, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static getRealApplication(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/LauncherApplication;
    .locals 3

    const-string v0, "LauncherProvider"

    .line 99
    instance-of v1, p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    if-eqz v1, :cond_0

    .line 101
    check-cast p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    goto :goto_2

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "realApplication"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 122
    :goto_1
    check-cast p0, Lcom/prompt/kiosk/slauncher/LauncherApplication;

    :goto_2
    return-object p0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "notify"

    .line 226
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .line 183
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 185
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 190
    iget-object v6, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    aget-object v7, p2, v4

    const/4 v8, 0x0

    invoke-static {v5, v1, v6, v8, v7}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->dbInsertAndCheck(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 196
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 200
    array-length p1, p2

    return p1

    :catchall_0
    move-exception p1

    .line 196
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 197
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 205
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 207
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 208
    iget-object p3, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p2, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method

.method public deleteFavorite()V
    .locals 3

    const-string v0, "LauncherProvider"

    const-string v1, "deleteFavorite()"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 242
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 243
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-static {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->access$000(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)I

    return-void
.end method

.method public generateNewId()J
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 233
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    iget-object p1, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.dir/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 169
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 171
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 172
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->dbInsertAndCheck(Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_0

    return-object v3

    .line 175
    :cond_0
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    const-string v0, "onCreate()"

    const-string v1, "LauncherProvider"

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 88
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->getRealApplication(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/LauncherApplication;

    move-result-object v0

    const-string v2, "call application.setLauncherProvider(this) in onCreate()"

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0, p0}, Lcom/prompt/kiosk/slauncher/LauncherApplication;->setLauncherProvider(Lcom/prompt/kiosk/slauncher/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 142
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    iget-object p3, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 146
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 147
    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 148
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 216
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 218
    invoke-virtual {p3}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 219
    iget-object p4, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p3, p4, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method

.method public updateMaxId()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LauncherProvider;->mOpenHelper:Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;

    .line 237
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherProvider$DatabaseHelper;->updateMaxId()V

    return-void
.end method
