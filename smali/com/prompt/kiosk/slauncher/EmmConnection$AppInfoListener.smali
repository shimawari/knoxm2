.class public interface abstract Lcom/prompt/kiosk/slauncher/EmmConnection$AppInfoListener;
.super Ljava/lang/Object;
.source "EmmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/EmmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppInfoListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/EmmAppInfo;",
            ">;)V"
        }
    .end annotation
.end method
