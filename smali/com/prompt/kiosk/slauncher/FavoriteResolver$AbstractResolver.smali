.class abstract Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;
.super Ljava/lang/Object;
.source "FavoriteResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FavoriteResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prompt/kiosk/slauncher/FavoriteResolver$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/FavoriteResolver$AbstractResolver;-><init>()V

    return-void
.end method


# virtual methods
.method abstract resolve(Landroid/content/pm/PackageManager;)Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
.end method
