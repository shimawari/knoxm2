.class Lcom/prompt/kiosk/slauncher/MemoActivity$3;
.super Ljava/lang/Object;
.source "MemoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 164
    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$202(Lcom/prompt/kiosk/slauncher/MemoActivity;Z)Z

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 167
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$400(Lcom/prompt/kiosk/slauncher/MemoActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 168
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$500(Lcom/prompt/kiosk/slauncher/MemoActivity;)Lcom/prompt/kiosk/slauncher/Memo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/prompt/kiosk/slauncher/Memo;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 170
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 171
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 172
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 173
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$3;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    const/4 p2, 0x1

    .line 174
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$202(Lcom/prompt/kiosk/slauncher/MemoActivity;Z)Z

    :cond_1
    :goto_0
    return v1
.end method
