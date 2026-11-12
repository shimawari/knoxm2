.class public Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
.super Ljava/lang/Object;
.source "AtomDialogBuilder.java"


# instance fields
.field private mCancelable:Z

.field private final mContext:Landroid/content/Context;

.field private mDialogErrorTitle:Ljava/lang/CharSequence;

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mCancelable:Z

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private onBindDialogView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090073

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogMessage:Ljava/lang/CharSequence;

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 100
    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 106
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 107
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x7f090039

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogErrorTitle:Ljava/lang/CharSequence;

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 118
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 123
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->create(Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Landroid/app/Dialog;
    .locals 7

    .line 135
    new-instance v0, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0010

    invoke-direct {v0, v1, v2}, Lcom/prompt/kiosk/slauncher/AutoDismissDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0006

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x50

    .line 144
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x24

    .line 145
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const p1, 0x7f09008f

    .line 150
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f09008b

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogTitle:Ljava/lang/CharSequence;

    const/16 v4, 0x8

    if-nez v3, :cond_1

    .line 153
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->onBindDialogView(Landroid/view/View;)V

    const p1, 0x7f09001e

    .line 160
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v2, 0x7f090034

    .line 162
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09001a

    .line 164
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v5, 0x7f09001b

    .line 165
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    .line 167
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v5, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$1;

    invoke-direct {v5, p0, v0}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$1;-><init>(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const v3, 0x7f09001c

    .line 185
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v5, 0x7f09001d

    .line 186
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 188
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v1, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;

    invoke-direct {v1, p0, v0}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder$2;-><init>(Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    .line 207
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    const/4 p1, 0x1

    .line 210
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_5

    .line 213
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_5
    return-object v0
.end method

.method public setErrorTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setErrorTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setErrorTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogErrorTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->mDialogTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/AtomDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
