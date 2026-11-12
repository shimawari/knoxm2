.class public Lcom/prompt/kiosk/slauncher/MemoActivity;
.super Landroid/app/Activity;
.source "MemoActivity.java"


# static fields
.field public static final DEFAULT_LINES:I = 0x7

.field public static final DEFAULT_STYLE_COUNT:I = 0x6

.field public static final EXTRA_MEMO_HEIGHT:Ljava/lang/String; = "h"

.field public static final EXTRA_MEMO_WIDTH:Ljava/lang/String; = "w"

.field public static final PREFS_KEY_COLORINDEX:Ljava/lang/String; = "cli"

.field public static final PREFS_KEY_CONTENT:Ljava/lang/String; = "ct"

.field public static final PREFS_KEY_TEXTSIZE:Ljava/lang/String; = "ts"

.field public static final PREFS_KEY_TEXTSIZE_DEFAULT:Ljava/lang/String; = "tsd"

.field public static final STYLE_TEXT_COLORS:[I

.field public static final TEXTSIZE_MAX:I = 0x38

.field public static final TEXTSIZE_MIN:I = 0x17


# instance fields
.field private mColor:I

.field private mCurrentTextSize:I

.field private mDefaultTextSize:I

.field private mHomeWidgetId:I

.field private mHomeWidgetType:I

.field private mMaxTextSize:I

.field private mMemo:Lcom/prompt/kiosk/slauncher/Memo;

.field private mMemoEditText:Landroid/widget/EditText;

.field private mMemoHeight:I

.field private mMemoWidth:I

.field private mMinTextSize:I

.field private mReadyFinish:Z

.field private mSeekBarTextSize:Landroid/widget/SeekBar;

.field private mStyle:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prompt/kiosk/slauncher/MemoActivity;->STYLE_TEXT_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xb8b8b9
        -0xcccccd
        -0x1
        -0xf2f2f3
        -0x1
        -0xc9c9ca
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x38

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMaxTextSize:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMinTextSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetType:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/MemoActivity;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->computeTextSize(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/MemoActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->updateTextSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/MemoActivity;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mReadyFinish:Z

    return p0
.end method

.method static synthetic access$202(Lcom/prompt/kiosk/slauncher/MemoActivity;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mReadyFinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/prompt/kiosk/slauncher/MemoActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->end()V

    return-void
.end method

.method static synthetic access$400(Lcom/prompt/kiosk/slauncher/MemoActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/prompt/kiosk/slauncher/MemoActivity;)Lcom/prompt/kiosk/slauncher/Memo;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemo:Lcom/prompt/kiosk/slauncher/Memo;

    return-object p0
.end method

.method private computeDefaultTextSize()V
    .locals 5

    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    if-lez v0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    .line 258
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoHeight:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 261
    div-int/lit8 v1, v1, 0x7

    if-lez v1, :cond_2

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    int-to-float v3, v2

    .line 267
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    if-le v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    :cond_2
    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    iput v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    :cond_3
    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    mul-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMaxTextSize:I

    .line 281
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMinTextSize:I

    return-void
.end method

.method private computeTextSize(I)V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMinTextSize:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMaxTextSize:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mCurrentTextSize:I

    return-void
.end method

.method private end()V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->save()V

    .line 231
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->sendBroadcastToWidget()V

    const/4 v0, -0x1

    .line 233
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->finishWithResult(I)V

    return-void
.end method

.method private getTextSizeProgress()I
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mCurrentTextSize:I

    iget v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMinTextSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMaxTextSize:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private save()V
    .locals 3

    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    .line 298
    invoke-static {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tsd"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    .line 300
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ts"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mCurrentTextSize:I

    .line 301
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoEditText:Landroid/widget/EditText;

    .line 303
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "ct"

    .line 302
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private sendBroadcastToWidget()V
    .locals 3

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "homeWidgetId"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupMemo(Ljava/lang/String;)V
    .locals 8

    .line 196
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemo:Lcom/prompt/kiosk/slauncher/Memo;

    const/4 v2, 0x0

    const v3, 0x7f0b0027

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/16 v1, 0x33

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemo:Lcom/prompt/kiosk/slauncher/Memo;

    .line 199
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mStyle:Ljava/lang/String;

    const-string v5, "v2"

    iget v6, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mColor:I

    move-object v2, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/prompt/kiosk/slauncher/Memo;->initializeMemo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/TextView;)Z

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoEditText:Landroid/widget/EditText;

    const v1, 0x7f090037

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 212
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->updateTextSize()V

    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 4

    const v0, 0x7f09006e

    .line 101
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    .line 103
    invoke-static {p0, v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "tsd"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    .line 105
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->computeDefaultTextSize()V

    const-string v1, "ts"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mDefaultTextSize:I

    .line 106
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mCurrentTextSize:I

    const-string v1, "ct"

    const/4 v2, 0x0

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090084

    .line 109
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/MemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mSeekBarTextSize:Landroid/widget/SeekBar;

    const v2, 0x7f090070

    .line 110
    invoke-virtual {p0, v2}, Lcom/prompt/kiosk/slauncher/MemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/prompt/kiosk/slauncher/Memo;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemo:Lcom/prompt/kiosk/slauncher/Memo;

    const-string v2, "st"

    const-string v3, "type1"

    .line 113
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mStyle:Ljava/lang/String;

    const-string v2, "cr"

    const/4 v3, 0x0

    .line 114
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mColor:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mSeekBarTextSize:Landroid/widget/SeekBar;

    .line 120
    new-instance v2, Lcom/prompt/kiosk/slauncher/MemoActivity$1;

    invoke-direct {v2, p0}, Lcom/prompt/kiosk/slauncher/MemoActivity$1;-><init>(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mSeekBarTextSize:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mSeekBarTextSize:Landroid/widget/SeekBar;

    .line 138
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getTextSizeProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemo:Lcom/prompt/kiosk/slauncher/Memo;

    .line 141
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/Memo;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoWidth:I

    if-lez v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoHeight:I

    if-lez v2, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 145
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->setupMemo(Ljava/lang/String;)V

    const v0, 0x7f090015

    .line 147
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/prompt/kiosk/slauncher/MemoActivity$2;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/MemoActivity$2;-><init>(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v1, Lcom/prompt/kiosk/slauncher/MemoActivity$3;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/MemoActivity$3;-><init>(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090019

    .line 184
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 185
    new-instance v1, Lcom/prompt/kiosk/slauncher/MemoActivity$4;

    invoke-direct {v1, p0}, Lcom/prompt/kiosk/slauncher/MemoActivity$4;-><init>(Lcom/prompt/kiosk/slauncher/MemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mCurrentTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finishWithResult(I)V
    .locals 3

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "homeWidgetId"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "homeWidgetType"

    iget v2, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetType:I

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0026

    .line 72
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/MemoActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "homeWidgetId"

    const/4 v1, -0x1

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetId:I

    const-string v0, "homeWidgetType"

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mHomeWidgetType:I

    const-string v0, "w"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoWidth:I

    const-string v0, "h"

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/MemoActivity;->mMemoHeight:I

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->setupViews()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->save()V

    .line 223
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->sendBroadcastToWidget()V

    .line 226
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/MemoActivity;->end()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
