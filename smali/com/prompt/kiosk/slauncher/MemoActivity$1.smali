.class Lcom/prompt/kiosk/slauncher/MemoActivity$1;
.super Ljava/lang/Object;
.source "MemoActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 124
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$000(Lcom/prompt/kiosk/slauncher/MemoActivity;I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/MemoActivity;

    .line 125
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->access$100(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
