.class Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;
.super Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;
.source "FavoriteResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FavoriteResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIntentResolver"
.end annotation


# instance fields
.field mQueryBlackList:Ljava/lang/String;

.field mQueryData:Ljava/lang/String;

.field mQueryIntent:Ljava/lang/String;

.field mQueryType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;-><init>(Lcom/prompt/kiosk/slauncher/FavoriteResolver$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryIntent:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryData:Ljava/lang/String;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryType:Ljava/lang/String;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryBlackList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method resolve(Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
    .locals 7

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryIntent:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryIntent:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryData:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 96
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 105
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryBlackList:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 106
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$QueryIntentResolver;->mQueryBlackList:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 111
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    .line 112
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    .line 113
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 117
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 118
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 119
    new-instance v0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    return-object v1
.end method
