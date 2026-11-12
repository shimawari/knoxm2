.class Lcom/prompt/kiosk/slauncher/AbstractFolder$12;
.super Ljava/lang/Object;
.source "AbstractFolder.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prompt/kiosk/slauncher/AbstractFolder;->scrollIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;


# direct methods
.method constructor <init>(Lcom/prompt/kiosk/slauncher/AbstractFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/prompt/kiosk/slauncher/Alarm;)V
    .locals 3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1458
    iget-object p1, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->getCurrentPage()I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    iget v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mInScrollArea:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1459
    iget-object v0, v0, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mContent:Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/prompt/kiosk/slauncher/FolderAppsPagedView;->snapToPage(I)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1460
    iput-boolean v2, p1, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mDraggingEverMoved:Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1461
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$500(Lcom/prompt/kiosk/slauncher/AbstractFolder;)[I

    move-result-object p1

    const/4 v0, 0x0

    aput v1, p1, v0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AbstractFolder$12;->this$0:Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 1462
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/AbstractFolder;->access$500(Lcom/prompt/kiosk/slauncher/AbstractFolder;)[I

    move-result-object p1

    aput v1, p1, v2

    return-void
.end method
