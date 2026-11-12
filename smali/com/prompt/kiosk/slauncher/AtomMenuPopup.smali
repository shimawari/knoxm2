.class public Lcom/prompt/kiosk/slauncher/AtomMenuPopup;
.super Ljava/lang/Object;
.source "AtomMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomMenuPopup"


# instance fields
.field private mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

.field private mMenuPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prompt/kiosk/slauncher/Launcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)Lcom/prompt/kiosk/slauncher/Launcher;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$102(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private setupMenuPopupWindowImpl(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 173
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 174
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$2;-><init>(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 180
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 181
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$3;-><init>(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 193
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f010002

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showMenuPopup(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 93
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Launcher;->getDragLayer()Lcom/prompt/kiosk/slauncher/DragLayer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->showMenuPopup(Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismissMenuPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 199
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public getAtomMenuInfos()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;

    const v2, 0x7f080043

    const v3, 0x7f0c0031

    const v4, 0x7f090071

    invoke-direct {v1, v4, v2, v3}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;-><init>(III)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mLauncher:Lcom/prompt/kiosk/slauncher/Launcher;

    .line 60
    invoke-static {v1}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kiosk.password_hash"

    const-string v3, ""

    .line 61
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;

    const v2, 0x7f080044

    const v3, 0x7f0c0032

    const v4, 0x7f090072

    invoke-direct {v1, v4, v2, v3}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;-><init>(III)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public isMenuPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showMenuPopup(Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v3, v0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    .line 105
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "window"

    .line 107
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 109
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b001e

    const/4 v9, 0x0

    .line 110
    invoke-virtual {v4, v8, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    const/16 v8, 0x14

    .line 111
    invoke-virtual {v7, v9, v8, v9, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 112
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 115
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v10, v9

    .line 118
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    move-object/from16 v11, p2

    .line 119
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;

    const v13, 0x7f0b000d

    .line 120
    invoke-virtual {v4, v13, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v14, 0x1020006

    .line 122
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 123
    iget v15, v12, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->dialogResId:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    const v14, 0x1020016

    .line 125
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 126
    iget v15, v12, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->dialogStringId:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    const v15, 0x7f06001d

    .line 127
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v12, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$AtomMenuInfo;->id:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v12, p3

    .line 130
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v14

    .line 133
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v15

    .line 134
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    .line 135
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    if-nez v10, :cond_2

    const v12, 0x7f080077

    .line 137
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v12, 0x7f080075

    .line 139
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 141
    :goto_1
    invoke-virtual {v13, v14, v9, v15, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v9, 0x7f0b001d

    const/4 v11, 0x0

    .line 144
    invoke-virtual {v4, v9, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 145
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 149
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 150
    invoke-virtual {v4, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 151
    iget v4, v6, Landroid/graphics/Point;->x:I

    .line 153
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 158
    div-int/2addr v4, v5

    goto :goto_2

    .line 160
    :cond_4
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    .line 163
    :goto_2
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, v0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 164
    invoke-direct {v0, v2}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->setupMenuPopupWindowImpl(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    const/4 v4, 0x0

    .line 165
    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showWorkspaceMenuPopup()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->getAtomMenuInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup$1;-><init>(Lcom/prompt/kiosk/slauncher/AtomMenuPopup;)V

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/AtomMenuPopup;->showMenuPopup(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    return-void
.end method
