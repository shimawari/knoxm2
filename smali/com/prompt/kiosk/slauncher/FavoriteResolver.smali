.class public Lcom/prompt/kiosk/slauncher/FavoriteResolver;
.super Ljava/lang/Object;
.source "FavoriteResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;,
        Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;,
        Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;,
        Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FavoriteResolver"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_QUERY:Ljava/lang/String; = "query"

.field private static final TAG_RESOLVER:Ljava/lang/String; = "resolver"

.field private static final TAG_RESOLVERS:Ljava/lang/String; = "favorite_resolvers"


# instance fields
.field private mResolvers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->loadXml(Landroid/content/Context;I)V

    return-void
.end method

.method private loadXml(Landroid/content/Context;I)V
    .locals 12

    const-string v0, "Got exception parsing favorite_resolvers."

    const-string v1, "FavoriteResolver"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :try_start_0
    const-string v2, ""

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 139
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const-string v4, "favorite_resolvers"

    .line 140
    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 142
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 145
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 146
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_5

    :cond_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    sget-object v9, Lcom/prompt/kiosk/launcher/R$styleable;->FavoriteResolver:[I

    invoke-virtual {p1, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const-string v10, "resolver"

    .line 155
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v2, 0x6

    .line 156
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 161
    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v10, "package"

    .line 163
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 164
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 165
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 168
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 169
    new-instance v8, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;

    invoke-direct {v8, v5, v6}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v7, "query"

    .line 171
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 172
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    .line 174
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 178
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 179
    new-instance v11, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;

    invoke-direct {v11, v5, v6, v7, v8}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4
    :goto_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 189
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 187
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception p1

    .line 185
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 212
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public resolve(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver;->mResolvers:Ljava/util/HashMap;

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;

    .line 202
    invoke-virtual {v1, p2}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;->resolve(Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method
