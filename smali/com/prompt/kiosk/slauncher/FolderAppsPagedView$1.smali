.class Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;
.super Ljava/lang/Object;
.source "FolderAppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->syncAppsPageItems(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

.field final synthetic val$s:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;->this$0:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;->val$s:Landroid/animation/Animator;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView$1;->val$s:Landroid/animation/Animator;

    .line 378
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
