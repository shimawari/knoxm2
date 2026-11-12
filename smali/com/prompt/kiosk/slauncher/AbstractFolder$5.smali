.class Lcom/prompt/kiosk/slauncher/AbstractFolder$5;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->onAdd(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

.field final synthetic val$runnableItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;->val$runnableItems:Ljava/util/ArrayList;

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;->val$runnableItems:Ljava/util/ArrayList;

    .line 1038
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/IconInfo;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1039
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v2

    iput v2, v1, Lcom/prompt/kiosk/slauncher/IconInfo;->screen:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$5;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1041
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->setupContentForNumItems(I)V

    return-void
.end method
