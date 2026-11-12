.class public interface abstract Lcom/prompt/kiosk/slauncher/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindFolders(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/prompt/kiosk/slauncher/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract bindPackagesUpdated([Ljava/lang/String;)V
.end method

.method public abstract cancelDragByModelReloading()V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method

.method public abstract updateChild(Lcom/prompt/kiosk/slauncher/ShortcutInfo;)V
.end method
