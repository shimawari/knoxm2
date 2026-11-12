.class Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;
.super Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;
.source "FavoriteResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FavoriteResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInfoResolver"
.end annotation


# instance fields
.field mClassName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;-><init>(Lcom/prompt/kiosk/slauncher/FavoriteResolver$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method resolve(Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mClassName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mPackageName:Ljava/lang/String;

    .line 66
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v3, Landroid/content/ComponentName;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$PackageInfoResolver;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object p1, v1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object v1
.end method
