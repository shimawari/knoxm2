.class Lcom/prompt/kiosk/slauncher/AboutKioskView$3;
.super Ljava/lang/Object;
.source "AboutKioskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/AboutKioskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 211
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 212
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$500(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 206
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 207
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$400(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 216
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 217
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$600(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 191
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 192
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$000(Lcom/prompt/kiosk/slauncher/AboutKioskView;)Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;->dismissAndShowFloatingButton()V

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 201
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 202
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$300(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 196
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$200(Lcom/prompt/kiosk/slauncher/AboutKioskView;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AboutKioskView$3;->this$0:Lcom/prompt/kiosk/slauncher/AboutKioskView;

    .line 197
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView;->access$000(Lcom/prompt/kiosk/slauncher/AboutKioskView;)Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/prompt/kiosk/slauncher/AboutKioskView$AboutKioskEventListener;->showOpenSourceLicense()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090002 -> :sswitch_5
        0x7f090005 -> :sswitch_4
        0x7f09001f -> :sswitch_3
        0x7f09002b -> :sswitch_2
        0x7f09003a -> :sswitch_1
        0x7f09004c -> :sswitch_3
        0x7f090087 -> :sswitch_0
    .end sparse-switch
.end method
