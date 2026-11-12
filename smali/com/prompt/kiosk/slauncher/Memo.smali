.class public Lcom/prompt/kiosk/slauncher/Memo;
.super Landroid/widget/ScrollView;
.source "Memo.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/IHomeWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;
    }
.end annotation


# static fields
.field private static final NAME_BACKGROUND:Ljava/lang/String; = "bg"

.field private static final TAG:Ljava/lang/String; = "Memo"


# instance fields
.field private mAttached:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mStyleName:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mThemeContext:Landroid/content/Context;

.field private mVersion:Ljava/lang/String;

.field private mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Memo;Lcom/prompt/kiosk/slauncher/Memo$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Memo;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Memo;Lcom/prompt/kiosk/slauncher/Memo$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Memo;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;-><init>(Lcom/prompt/kiosk/slauncher/Memo;Lcom/prompt/kiosk/slauncher/Memo$1;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/Memo;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/Memo;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mWidgetId:I

    return p0
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/Memo;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/Memo;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mStyleName:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mPrefix:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mThemeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 222
    invoke-static {p2, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "type2"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mStyleName:Ljava/lang/String;

    .line 224
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 225
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-object p1
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Memo;->setVerticalFadingEdgeEnabled(Z)V

    const/high16 v1, 0x2000000

    .line 66
    invoke-virtual {p0, v1}, Lcom/prompt/kiosk/slauncher/Memo;->setScrollBarStyle(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/Memo;->setFillViewport(Z)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 176
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initializeMemo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/TextView;)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p6, :cond_0

    return p1

    :cond_0
    iput-object p6, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->removeAllViews()V

    .line 128
    invoke-virtual {p0, p6}, Lcom/prompt/kiosk/slauncher/Memo;->addView(Landroid/view/View;)V

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/Memo;->mStyleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mPackageName:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mThemeContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/Memo;->mVersion:Ljava/lang/String;

    const/16 p2, 0x37

    .line 138
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetPrefix(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mPrefix:Ljava/lang/String;

    const/4 p2, -0x1

    if-eqz p5, :cond_1

    if-eq p5, p2, :cond_1

    .line 142
    invoke-static {p5}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/Memo;->mColorFilter:Landroid/graphics/ColorFilter;

    const-string p4, "type2"

    .line 143
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const p5, -0xddddde

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    move p5, p2

    :goto_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    const p4, 0x7f0c0050

    .line 152
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setHint(I)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setHintTextColor(I)V

    const-string p2, "bg"

    .line 155
    invoke-direct {p0, p2}, Lcom/prompt/kiosk/slauncher/Memo;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 157
    invoke-virtual {p0, p2}, Lcom/prompt/kiosk/slauncher/Memo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const-string p2, "type1"

    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070049

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p3, p2, p1, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 162
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/prompt/kiosk/slauncher/Memo;->setPadding(IIII)V

    goto :goto_2

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07004a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p3, p2, p1, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/prompt/kiosk/slauncher/Memo;->setPadding(IIII)V

    .line 169
    :goto_2
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public loadAsset(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_7

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 240
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "HomeWidget"

    .line 243
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 245
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 247
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 248
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 254
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonSetting"

    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->loadCommon(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SharedPreferences;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 268
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p2

    :goto_1
    :try_start_3
    sget-object p1, Lcom/prompt/kiosk/slauncher/Memo;->TAG:Ljava/lang/String;

    .line 264
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 268
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_4
    move-exception p2

    :goto_2
    :try_start_5
    sget-object p1, Lcom/prompt/kiosk/slauncher/Memo;->TAG:Ljava/lang/String;

    .line 262
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 268
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_5
    move-exception p2

    :goto_3
    :try_start_7
    sget-object p1, Lcom/prompt/kiosk/slauncher/Memo;->TAG:Ljava/lang/String;

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    .line 268
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/Memo;->TAG:Ljava/lang/String;

    .line 270
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_6

    .line 268
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/Memo;->TAG:Ljava/lang/String;

    .line 270
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_6
    :goto_6
    throw p2

    :cond_7
    :goto_7
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/Context;I)Z
    .locals 10

    iput p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mWidgetId:I

    .line 79
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tp"

    const/4 v2, 0x0

    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "st"

    .line 81
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    if-eqz v5, :cond_3

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x37

    .line 87
    invoke-static {p1, v3, v5}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetVersion(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeColor(Landroid/content/Context;I)I

    move-result v8

    const p2, 0x7f0b000c

    .line 89
    invoke-static {p1, p2, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/TextView;

    move-object v3, p0

    move-object v4, p1

    .line 90
    invoke-virtual/range {v3 .. v9}, Lcom/prompt/kiosk/slauncher/Memo;->initializeMemo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/TextView;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070048

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const-string p2, "ts"

    .line 95
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    .line 97
    invoke-virtual {p2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const-string p1, "ct"

    .line 100
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mTextView:Landroid/widget/TextView;

    .line 102
    new-instance p2, Lcom/prompt/kiosk/slauncher/Memo$1;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/Memo$1;-><init>(Lcom/prompt/kiosk/slauncher/Memo;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 181
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mAttached:Z

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

    .line 188
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/Memo;->mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/Memo;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mAttached:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/Memo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/Memo;->mMemoReceiver:Lcom/prompt/kiosk/slauncher/Memo$MemoReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/Memo;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
