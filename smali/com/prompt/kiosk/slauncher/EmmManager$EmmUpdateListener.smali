.class public interface abstract Lcom/prompt/kiosk/slauncher/EmmManager$EmmUpdateListener;
.super Ljava/lang/Object;
.source "EmmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmmUpdateListener"
.end annotation


# virtual methods
.method public abstract onEmmAppsUpdated(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;)V"
        }
    .end annotation
.end method
