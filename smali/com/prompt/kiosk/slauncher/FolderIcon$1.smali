.class Lcom/prompt/kiosk/slauncher/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FolderIcon;->onDrop(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FolderIcon;

.field final synthetic val$item:Lcom/prompt/kiosk/slauncher/IconInfo;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FolderIcon;Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderIcon$1;->this$0:Lcom/prompt/kiosk/slauncher/FolderIcon;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderIcon$1;->val$item:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderIcon$1;->this$0:Lcom/prompt/kiosk/slauncher/FolderIcon;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/FolderIcon$1;->val$item:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 147
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/FolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    return-void
.end method
