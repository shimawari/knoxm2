.class Lcom/prompt/kiosk/slauncher/PagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/PagedView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView$2;->this$0:Lcom/prompt/kiosk/slauncher/PagedView;

    .line 2418
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/PagedView$2;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/PagedView$2;->this$0:Lcom/prompt/kiosk/slauncher/PagedView;

    .line 2426
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/PagedView;->access$100(Lcom/prompt/kiosk/slauncher/PagedView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
