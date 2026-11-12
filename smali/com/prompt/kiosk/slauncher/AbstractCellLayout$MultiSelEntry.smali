.class Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;
.super Ljava/lang/Object;
.source "AbstractCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiSelEntry"
.end annotation


# instance fields
.field left:I

.field marker:Landroid/graphics/Bitmap;

.field top:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap;)V
    .locals 0

    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->left:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->top:I

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/AbstractCellLayout$MultiSelEntry;->marker:Landroid/graphics/Bitmap;

    return-void
.end method
