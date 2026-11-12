.class public Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;
.super Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 733
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
