.class public interface abstract Lcom/prompt/kiosk/slauncher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationInDragLayer([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/prompt/kiosk/slauncher/DropTarget$DragObject;)V
.end method
