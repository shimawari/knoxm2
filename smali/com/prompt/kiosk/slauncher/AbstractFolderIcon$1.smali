.class Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;
.super Ljava/lang/Object;
.source "AbstractFolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->performCreateAnimation(Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Lcom/prompt/kiosk/slauncher/IconInfo;Landroid/view/View;Landroid/graphics/Rect;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

.field final synthetic val$destInfo:Lcom/prompt/kiosk/slauncher/IconInfo;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;Lcom/prompt/kiosk/slauncher/IconInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;->val$destInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon$1;->val$destInfo:Lcom/prompt/kiosk/slauncher/IconInfo;

    .line 333
    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolderIcon;->addItem(Lcom/prompt/kiosk/slauncher/IconInfo;)V

    return-void
.end method
