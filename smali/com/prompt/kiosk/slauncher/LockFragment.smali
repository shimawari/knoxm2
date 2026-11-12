.class public Lcom/prompt/kiosk/slauncher/LockFragment;
.super Landroid/app/Fragment;
.source "LockFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;
    }
.end annotation


# static fields
.field private static final ARG_HASH:Ljava/lang/String; = "args.hash"

.field private static final ARG_SALT:Ljava/lang/String; = "args.salt"

.field private static final ARG_TYPE:Ljava/lang/String; = "args.type"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "Kiosk.LockFragment"

.field private static final TAG:Ljava/lang/String; = "LockFragment"

.field private static final sButtons:[I

.field private static final sDots:[I


# instance fields
.field private mDisplayer:Landroid/view/View;

.field private mHash:Ljava/lang/String;

.field private mInput:Ljava/lang/StringBuilder;

.field private mInputIdx:I

.field private mMismatchAnim:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

.field private mOnButton:Landroid/view/View$OnClickListener;

.field mPasswordMismatch:Landroid/widget/Toast;

.field private mSalt:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LockFragment;->sButtons:[I

    const v0, 0x7f090067

    const v1, 0x7f090068

    const v2, 0x7f090065

    const v3, 0x7f090066

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/LockFragment;->sDots:[I

    return-void

    :array_0
    .array-data 4
        0x7f090059
        0x7f09005a
        0x7f09005b
        0x7f09005c
        0x7f09005d
        0x7f09005e
        0x7f09005f
        0x7f090060
        0x7f090061
        0x7f090062
        0x7f090063
        0x7f090064
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInput:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 100
    new-instance v0, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mMismatchAnim:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 222
    new-instance v0, Lcom/prompt/kiosk/slauncher/LockFragment$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/LockFragment$1;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mOnButton:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/LockFragment;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->enableInput()V

    return-void
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->clearInput()V

    return-void
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/LockFragment;C)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/LockFragment;->addChar(C)V

    return-void
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->clearAllChar()V

    return-void
.end method

.method static synthetic access$600(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->clearOneChar()V

    return-void
.end method

.method static synthetic access$700(Lcom/prompt/kiosk/slauncher/LockFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->challenge()V

    return-void
.end method

.method private addChar(C)V
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    sget-object v1, Lcom/prompt/kiosk/slauncher/LockFragment;->sDots:[I

    .line 162
    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInput:Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 173
    array-length v0, v1

    if-ne p1, v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->challenge()V

    :cond_2
    return-void
.end method

.method private animateMismatch()V
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mMismatchAnim:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 103
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mMismatchAnim:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 105
    invoke-virtual {v1, v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->init(F)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mMismatchAnim:Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;

    .line 106
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LockFragment$MismatchAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static buildArguments(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args.salt"

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "args.hash"

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "args.type"

    .line 40
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private challenge()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->disableInput()V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInput:Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 141
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mSalt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prompt/kiosk/slauncher/LockFragment;->getPasswordDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mHash:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    invoke-static {}, Lcom/prompt/kiosk/utils/ContextStore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/LauncherConfig$Preferences;->getSettingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "kiosk.need_lock"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mPasswordMismatch:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0c0030

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mPasswordMismatch:Landroid/widget/Toast;

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mPasswordMismatch:Landroid/widget/Toast;

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->animateMismatch()V

    :cond_3
    :goto_1
    return-void
.end method

.method private clearAllChar()V
    .locals 6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/prompt/kiosk/slauncher/LockFragment;->sDots:[I

    .line 180
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 181
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInput:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 186
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 188
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private clearInput()V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->clearAllChar()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 132
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :goto_0
    return-void
.end method

.method private clearOneChar()V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 196
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/LockFragment;->sDots:[I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInput:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mInputIdx:I

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090063

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private disableInput()V
    .locals 2

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/LockFragment;->setAllButtonsEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private enableInput()V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/LockFragment;->setAllButtonsEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 124
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    const/4 v2, 0x2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public static final getPasswordDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 211
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 214
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 p1, 0x3

    .line 215
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private setAllButtonsEnabled(Z)V
    .locals 5

    sget-object v0, Lcom/prompt/kiosk/slauncher/LockFragment;->sButtons:[I

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 54
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "args.salt"

    const-string v0, ""

    .line 268
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mSalt:Ljava/lang/String;

    const-string p3, "args.hash"

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mHash:Ljava/lang/String;

    const-string p3, "args.type"

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    const p2, 0x7f0b000b

    .line 272
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 278
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mType:I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const p2, 0x7f090056

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090069

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    sget-object v1, Lcom/prompt/kiosk/slauncher/LockFragment;->sButtons:[I

    .line 284
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 285
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mOnButton:Landroid/view/View$OnClickListener;

    .line 287
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/LockFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    instance-of p1, p2, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;

    if-eqz p1, :cond_3

    .line 293
    check-cast p2, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;

    const/high16 p1, 0x7f030000

    invoke-virtual {p2, p1}, Lcom/prompt/kiosk/slauncher/ConnectedRelativeLayout;->setConnections(I)V

    goto :goto_1

    :cond_2
    const p2, 0x7f09006b

    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09006a

    .line 297
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 299
    new-instance p2, Lcom/prompt/kiosk/slauncher/LockFragment$2;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/LockFragment$2;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 312
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/LockFragment;->mDisplayer:Landroid/view/View;

    .line 313
    new-instance p2, Lcom/prompt/kiosk/slauncher/LockFragment$3;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/LockFragment$3;-><init>(Lcom/prompt/kiosk/slauncher/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method
