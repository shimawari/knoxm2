.class Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prompt/kiosk/slauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field isColored:Z

.field layout:Lcom/prompt/kiosk/slauncher/CellLayout;

.field scale:F

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Workspace;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/CellLayout;IIZF)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->layout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iput p3, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->cellX:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->cellY:I

    iput-boolean p5, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->isColored:Z

    iput p6, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->scale:F

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/prompt/kiosk/slauncher/Alarm;)V
    .locals 2

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2213
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2214
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$200(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$300(Lcom/prompt/kiosk/slauncher/Workspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/WorkspaceUtils;->getFolderRingAnimator(Lcom/prompt/kiosk/slauncher/Launcher;Ljava/util/ArrayList;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->access$102(Lcom/prompt/kiosk/slauncher/Workspace;Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    :cond_0
    iget-boolean p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->isColored:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2217
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->getInnerRingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2219
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->getInnerRingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2220
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setCell(II)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2221
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->layout:Lcom/prompt/kiosk/slauncher/CellLayout;

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setCellLayout(Lcom/prompt/kiosk/slauncher/AbstractCellLayout;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2222
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->scale:F

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->setScale(F)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2223
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/FolderRingAnimator;->animateToAcceptState()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->layout:Lcom/prompt/kiosk/slauncher/CellLayout;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2224
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->access$100(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/FolderRingAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/CellLayout;->showFolderAccept(Lcom/prompt/kiosk/slauncher/FolderRingAnimator;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->layout:Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 2225
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CellLayout;->clearDragOutlines()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    const/4 v0, 0x1

    .line 2226
    invoke-static {p1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->access$402(Lcom/prompt/kiosk/slauncher/Workspace;Z)Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$FolderCreationAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2227
    invoke-virtual {p1, v0}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    return-void
.end method
