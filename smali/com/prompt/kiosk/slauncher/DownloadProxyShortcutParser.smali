.class public Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;
.super Ljava/lang/Object;
.source "DownloadProxyShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProxyShortcutParser"

.field private static final TAG_ICON:Ljava/lang/String; = "icon"

.field private static final TAG_LINK:Ljava/lang/String; = "link"

.field private static final TAG_PROXY:Ljava/lang/String; = "downloadProxy"

.field private static final TAG_ROOT:Ljava/lang/String; = "downloadProxyFavorites"


# instance fields
.field private mDefaultStore:I

.field private mProxies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mDefaultStore:I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->loadXml(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mDefaultStore:I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->loadStringJSON(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private loadStringJSON(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 163
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->clear()V

    .line 166
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "link"

    .line 167
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 172
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "store"

    .line 173
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v6, "url"

    .line 174
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "default"

    .line 177
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_0

    :try_start_2
    iput v5, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mDefaultStore:I

    .line 184
    :catch_0
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "component"

    .line 187
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_2

    .line 191
    new-instance v2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;-><init>(Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$1;)V

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    .line 193
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->packageName:Ljava/lang/String;

    const-string v4, "className"

    .line 194
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->className:Ljava/lang/String;

    .line 195
    iput-object v0, v2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->links:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ref"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 201
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private loadXml(Landroid/content/Context;I)V
    .locals 11

    const-string v0, "Got exception parsing favorite_resolvers."

    .line 52
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->clear()V

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 58
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const-string v2, "downloadProxyFavorites"

    .line 59
    invoke-static {p2, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 61
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    move-object v4, v3

    .line 64
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 65
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_8

    :cond_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 72
    sget-object v9, Lcom/prompt/kiosk/launcher/R$styleable;->DownloadProxyFavorite:[I

    invoke-virtual {p1, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const-string v10, "downloadProxy"

    .line 74
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x5

    .line 75
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    new-instance v5, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;-><init>(Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$1;)V

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 78
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v10, "icon"

    .line 80
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 81
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    .line 83
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 85
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 86
    iput-object v5, v10, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->drawableId:Ljava/lang/String;

    if-nez v6, :cond_3

    move-object v6, v3

    .line 87
    :cond_3
    iput-object v6, v10, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->label:Ljava/lang/String;

    if-nez v8, :cond_4

    move-object v8, v3

    .line 88
    :cond_4
    iput-object v8, v10, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->packageName:Ljava/lang/String;

    if-nez v7, :cond_5

    move-object v7, v3

    .line 89
    :cond_5
    iput-object v7, v10, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->className:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v6, "link"

    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x6

    .line 91
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 92
    invoke-virtual {v9, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eqz v5, :cond_7

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    if-ltz v6, :cond_7

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 94
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 95
    iget-object v7, v7, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->links:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    :cond_7
    :goto_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->TAG:Ljava/lang/String;

    .line 106
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->TAG:Ljava/lang/String;

    .line 104
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->TAG:Ljava/lang/String;

    .line 102
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 154
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mDefaultStore:I

    return-void
.end method

.method public getDefaultStore()I
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mDefaultStore:I

    return v0
.end method

.method public getProxyClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 129
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->className:Ljava/lang/String;

    return-object p1
.end method

.method public getProxyCount()I
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getProxyIconId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 136
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->drawableId:Ljava/lang/String;

    return-object p1
.end method

.method public getProxyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 115
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->label:Ljava/lang/String;

    return-object p1
.end method

.method public getProxyPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 119
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 122
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method public getProxyUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 140
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 143
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->links:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProxyUrls(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser;->mProxies:Ljava/util/HashMap;

    .line 149
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;

    .line 150
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/DownloadProxyShortcutParser$DownloadProxyItem;->links:Landroid/util/SparseArray;

    return-object p1
.end method
