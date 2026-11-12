.class Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;
.super Landroid/os/Handler;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->runImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 194
    iget v0, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 195
    iget p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->files:[Ljava/io/File;

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 196
    iput v1, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    :cond_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 198
    iget p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 199
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    .line 201
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity$1;->this$0:Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/screensaver/ViewPagerActivity;->position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method
