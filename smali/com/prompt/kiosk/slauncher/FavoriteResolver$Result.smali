.class public Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;
.super Ljava/lang/Object;
.source "FavoriteResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/FavoriteResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FavoriteResolver$Result;->className:Ljava/lang/String;

    return-void
.end method
