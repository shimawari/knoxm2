.class interface abstract Lcom/prompt/kiosk/slauncher/AbstractFolderInfo$FolderListener;
.super Ljava/lang/Object;
.source "AbstractFolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAddRemove(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemsChanged()V
.end method

.method public abstract onRemove(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/prompt/kiosk/slauncher/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract onUpdate(Lcom/prompt/kiosk/slauncher/IconInfo;)V
.end method

.method public abstract refreshFolder()V
.end method
