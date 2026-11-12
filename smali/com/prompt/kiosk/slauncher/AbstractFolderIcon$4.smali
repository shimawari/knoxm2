.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 999
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->invalidate()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$4;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    .line 1000
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->requestLayout()V

    return-void
.end method
