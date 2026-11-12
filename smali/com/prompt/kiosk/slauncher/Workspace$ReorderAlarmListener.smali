.class Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;
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
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lcom/prompt/kiosk/slauncher/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/prompt/kiosk/slauncher/Workspace;


# direct methods
.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Workspace;[FIIIILcom/prompt/kiosk/slauncher/DragView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    iput p3, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->minSpanX:I

    iput p4, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->minSpanY:I

    iput p5, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanX:I

    iput p6, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanY:I

    iput-object p8, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/prompt/kiosk/slauncher/Alarm;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2250
    invoke-static {v9}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v2

    const/4 v13, 0x0

    aget v2, v2, v13

    float-to-int v3, v2

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2251
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v2

    const/4 v14, 0x1

    aget v2, v2, v14

    float-to-int v4, v2

    iget v5, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanX:I

    iget v6, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v7

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v8

    move-object v2, v9

    .line 2250
    invoke-static/range {v2 .. v8}, Lcom/prompt/kiosk/slauncher/Workspace;->access$800(Lcom/prompt/kiosk/slauncher/Workspace;IIIILcom/prompt/kiosk/slauncher/CellLayout;[I)[I

    move-result-object v2

    invoke-static {v9, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$502(Lcom/prompt/kiosk/slauncher/Workspace;[I)[I

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2252
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v3

    aget v3, v3, v13

    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$902(Lcom/prompt/kiosk/slauncher/Workspace;I)I

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2253
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v3

    aget v3, v3, v14

    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$1002(Lcom/prompt/kiosk/slauncher/Workspace;I)I

    iget-object v15, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2254
    invoke-static {v15}, Lcom/prompt/kiosk/slauncher/Workspace;->access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v4

    aget v4, v4, v14

    float-to-int v4, v4

    iget v5, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v7, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanX:I

    iget v8, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v10, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2255
    invoke-static {v10}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v10

    const/4 v12, 0x0

    move-object v11, v1

    .line 2254
    invoke-virtual/range {v2 .. v12}, Lcom/prompt/kiosk/slauncher/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    invoke-static {v15, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$502(Lcom/prompt/kiosk/slauncher/Workspace;[I)[I

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2257
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v2

    aget v2, v2, v13

    if-ltz v2, :cond_1

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v2

    aget v2, v2, v14

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2260
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v3

    aget v3, v3, v13

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v4

    aget v4, v4, v14

    invoke-virtual {v2, v3, v4}, Lcom/prompt/kiosk/slauncher/CellLayout;->isSameDragCell(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    const/4 v3, 0x3

    .line 2261
    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->setDragMode(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2258
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/CellLayout;->revertTempState()V

    :cond_2
    :goto_1
    aget v2, v1, v13

    iget v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v2, v3, :cond_4

    aget v2, v1, v14

    iget v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v24, v13

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v24, v14

    :goto_3
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2265
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->access$700(Lcom/prompt/kiosk/slauncher/Workspace;)Lcom/prompt/kiosk/slauncher/CellLayout;

    move-result-object v15

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$1100(Lcom/prompt/kiosk/slauncher/Workspace;)Landroid/graphics/Bitmap;

    move-result-object v17

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2266
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/Workspace;->access$600(Lcom/prompt/kiosk/slauncher/Workspace;)[F

    move-result-object v4

    aget v4, v4, v14

    float-to-int v4, v4

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    .line 2267
    invoke-static {v5}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v5

    aget v20, v5, v13

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->this$0:Lcom/prompt/kiosk/slauncher/Workspace;

    invoke-static {v5}, Lcom/prompt/kiosk/slauncher/Workspace;->access$500(Lcom/prompt/kiosk/slauncher/Workspace;)[I

    move-result-object v5

    aget v21, v5, v14

    aget v22, v1, v13

    aget v23, v1, v14

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    .line 2268
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v25

    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/Workspace$ReorderAlarmListener;->dragView:Lcom/prompt/kiosk/slauncher/DragView;

    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 2265
    invoke-virtual/range {v15 .. v26}, Lcom/prompt/kiosk/slauncher/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method
