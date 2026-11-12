.class public Lcom/prompt/kiosk/slauncher/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/FocusHelper$HotseatIconKeyEventListener;,
        Lcom/prompt/kiosk/slauncher/FocusHelper$FolderKeyEventListener;,
        Lcom/prompt/kiosk/slauncher/FocusHelper$IconKeyEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caseKeyCodePageDown(Lcom/prompt/kiosk/slauncher/CellLayoutChildren;Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/Workspace;II)V
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    const/4 v1, -0x1

    if-ge p3, p4, :cond_1

    add-int/2addr p3, v0

    .line 783
    invoke-static {p2, p3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object p0

    .line 784
    invoke-static {p1, p0, v1, v0}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p2, p3}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result p2

    .line 792
    invoke-static {p1, p0, p2, v1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 795
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static caseKeyCodePageUp(Lcom/prompt/kiosk/slauncher/CellLayoutChildren;Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/Workspace;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lez p3, :cond_1

    sub-int/2addr p3, v1

    .line 804
    invoke-static {p2, p3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object p0

    .line 805
    invoke-static {p1, p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p2, p3}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-static {p1, p0, v0, v1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 815
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/2addr p1, p2

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 600
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 601
    instance-of v2, v1, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/prompt/kiosk/slauncher/CellLayoutChildren;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 561
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    return-object p0
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prompt/kiosk/slauncher/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellCountX()I

    move-result p0

    .line 572
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_0
    new-instance p1, Lcom/prompt/kiosk/slauncher/FocusHelper$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/FocusHelper$1;-><init>(I)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private static getClosestIconOnLine(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 11

    .line 626
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p1

    .line 627
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 628
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellCountX()I

    .line 629
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getCellCountY()I

    move-result p0

    .line 630
    iget v1, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    add-int v2, v1, p3

    if-ltz v2, :cond_6

    if-ge v2, p0, :cond_6

    .line 635
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, -0x1

    if-gez p3, :cond_0

    move v2, p2

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v4, p2

    :goto_1
    if-eq p0, v2, :cond_5

    .line 638
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 639
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;

    .line 640
    iget v7, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    if-gez p3, :cond_1

    if-ge v7, v1, :cond_3

    goto :goto_2

    :cond_1
    if-le v7, v1, :cond_3

    .line 641
    :goto_2
    instance-of v7, v5, Lcom/prompt/kiosk/slauncher/BubbleTextView;

    if-nez v7, :cond_2

    instance-of v5, v5, Lcom/prompt/kiosk/slauncher/FolderIcon;

    if-eqz v5, :cond_3

    .line 643
    :cond_2
    iget v5, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v5, v6, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    iget v6, v0, Lcom/prompt/kiosk/slauncher/CellLayout$LayoutParams;->cellY:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    .line 644
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v7, v5

    .line 643
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_3

    move v4, p0

    move v3, v5

    :cond_3
    if-gt p0, v2, :cond_4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    if-le v4, p2, :cond_6

    .line 657
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 0

    .line 610
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    .line 611
    invoke-static {p0, p2, p3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 615
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    .line 616
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 824
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    .line 825
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 826
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/AbstractFolder;

    .line 827
    iget-object v2, v2, Lcom/prompt/kiosk/slauncher/AbstractFolder;->mFolderName:Landroid/widget/TextView;

    .line 829
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    const/16 v5, 0x7a

    const/4 v6, -0x1

    if-eq p1, v5, :cond_5

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_3

    .line 846
    invoke-static {v1, v0, p0, v4}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 848
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 850
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_3

    .line 836
    invoke-static {v1, v0, p0, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 838
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_3

    .line 868
    invoke-static {v1, v0, p0, v4}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getClosestIconOnLine(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 872
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_3

    .line 858
    invoke-static {v1, v0, p0, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getClosestIconOnLine(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    move v3, v4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_3

    .line 891
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result p0

    .line 890
    invoke-static {v1, v0, p0, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 893
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_3

    .line 880
    invoke-static {v1, v0, v6, v4}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 882
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 5

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 497
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090095

    .line 498
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/Workspace;

    .line 499
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 500
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 501
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->getCurrentPage()I

    move-result v2

    .line 507
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_3

    sub-int/2addr v1, v4

    if-ge p0, v1, :cond_1

    add-int/2addr p0, v4

    .line 526
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    add-int/2addr v2, v4

    .line 528
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_3

    if-lez p0, :cond_2

    sub-int/2addr p0, v4

    .line 515
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    sub-int/2addr v2, v4

    .line 517
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    :cond_3
    :goto_1
    :pswitch_2
    move v3, v4

    goto :goto_2

    :pswitch_3
    if-eqz p2, :cond_3

    .line 536
    invoke-virtual {v0, v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 537
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayout;->getChildrenLayout()Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object p1

    const/4 p2, -0x1

    .line 538
    invoke-static {p0, p1, p2, v4}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 542
    :cond_4
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Workspace;->requestFocus()Z

    goto :goto_1

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    .line 668
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/prompt/kiosk/slauncher/CellLayout;

    .line 669
    invoke-virtual {v1}, Lcom/prompt/kiosk/slauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/Workspace;

    .line 670
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 671
    invoke-virtual {v2, v1}, Lcom/prompt/kiosk/slauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 672
    invoke-virtual {v2}, Lcom/prompt/kiosk/slauncher/Workspace;->getChildCount()I

    move-result v4

    .line 674
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_0

    move p2, v6

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    const/16 v7, 0x5c

    if-eq p1, v7, :cond_9

    const/16 v7, 0x5d

    if-eq p1, v7, :cond_8

    const/16 v7, 0x7a

    const/4 v8, -0x1

    if-eq p1, v7, :cond_7

    const/16 v7, 0x7b

    if-eq p1, v7, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_5

    .line 703
    invoke-static {v1, v0, p0, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_5

    add-int/2addr v3, v6

    .line 708
    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object p0

    .line 709
    invoke-static {v1, p0, v8, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 711
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 714
    :cond_2
    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_5

    .line 681
    invoke-static {v1, v0, p0, v8}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    if-lez v3, :cond_5

    sub-int/2addr v3, v6

    .line 686
    invoke-static {v2, v3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/prompt/kiosk/slauncher/CellLayoutChildren;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result p1

    .line 687
    invoke-static {v1, p0, p1, v8}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 693
    :cond_4
    invoke-virtual {v2, v3}, Lcom/prompt/kiosk/slauncher/Workspace;->snapToPage(I)V

    :cond_5
    :goto_1
    move v5, v6

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_a

    .line 734
    invoke-static {v1, v0, p0, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getClosestIconOnLine(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 736
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_a

    .line 724
    invoke-static {v1, v0, p0, v8}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getClosestIconOnLine(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_5

    .line 767
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/CellLayoutChildren;->getChildCount()I

    move-result p0

    .line 766
    invoke-static {v1, v0, p0, v8}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 769
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_5

    .line 756
    invoke-static {v1, v0, v8, v6}, Lcom/prompt/kiosk/slauncher/FocusHelper;->getIconInDirection(Lcom/prompt/kiosk/slauncher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_5

    .line 749
    invoke-static {v0, v1, v2, v3, v4}, Lcom/prompt/kiosk/slauncher/FocusHelper;->caseKeyCodePageDown(Lcom/prompt/kiosk/slauncher/CellLayoutChildren;Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/Workspace;II)V

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_5

    .line 743
    invoke-static {v0, v1, v2, v3}, Lcom/prompt/kiosk/slauncher/FocusHelper;->caseKeyCodePageUp(Lcom/prompt/kiosk/slauncher/CellLayoutChildren;Lcom/prompt/kiosk/slauncher/CellLayout;Lcom/prompt/kiosk/slauncher/Workspace;I)V

    goto :goto_1

    :cond_a
    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
