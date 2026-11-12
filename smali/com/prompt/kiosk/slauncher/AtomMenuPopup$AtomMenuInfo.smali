.class public Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;
.super Ljava/lang/Object;
.source "AtomMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AtomMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomMenuInfo"
.end annotation


# instance fields
.field dialogResId:I

.field dialogStringId:I

.field id:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->id:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->dialogResId:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->dialogStringId:I

    return-void
.end method
