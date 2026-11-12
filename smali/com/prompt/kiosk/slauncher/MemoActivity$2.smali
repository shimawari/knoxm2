.class Lcom/prompt/kiosk/slauncher/MemoActivity$2;
.super Ljava/lang/Object;
.source "MemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/MemoActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/MemoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 152
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$200(Lcom/prompt/kiosk/slauncher/MemoActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 153
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$300(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$2;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$202(Lcom/prompt/kiosk/slauncher/MemoActivity;Z)Z

    return-void
.end method
