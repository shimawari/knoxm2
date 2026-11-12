.class public Lcom/prompt/kiosk/slauncher/HomeTextWidget;
.super Landroid/widget/FrameLayout;
.source "HomeTextWidget.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/IHomeWidget;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;
    }
.end annotation


# static fields
.field private static final ATTR_COLOR:Ljava/lang/String; = "color"

.field private static final ATTR_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final ATTR_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final CONTENT_TAG:Ljava/lang/String; = "Text"

.field private static final DEVICE_ALIAS:Ljava/lang/String; = "DeviceAlias"

.field private static final DEVICE_NAME:Ljava/lang/String; = "DeviceName"

.field private static final KM_USER_ID:Ljava/lang/String; = "UserID"

.field private static final KM_USER_INFO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KM_USER_NAME:Ljava/lang/String; = "UserName"

.field public static final LOOKUP_POSTFIX:Ljava/lang/String; = "}"

.field public static final LOOKUP_PREFIX:Ljava/lang/String; = "${"

.field private static final MOBILE_PHONE:Ljava/lang/String; = "MobilePhone"

.field private static final TAG:Ljava/lang/String; = "HomeTextWidget"


# instance fields
.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "DeviceAlias"

    const-string v1, "MobilePhone"

    const-string v2, "UserName"

    const-string v3, "UserID"

    const-string v4, "DeviceName"

    .line 53
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->KM_USER_INFO:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V
    .locals 3

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0008

    const/4 v1, 0x0

    .line 127
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->getAsset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 130
    invoke-virtual {p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->getAppWidgetId()I

    move-result p2

    invoke-direct {p0, v1, p2}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->loadHomeTextAsset(Ljava/lang/String;I)Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 132
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2, v1, p1}, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;->apply(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {p0, p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->KM_USER_INFO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "text"

    const-string v1, "bg"

    const-string v2, "v2"

    .line 219
    invoke-static {v2, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "type2"

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 222
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 223
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-object v0
.end method

.method private loadContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41a80000    # 21.0f

    const/16 v3, 0x11

    move v4, v1

    move v5, v4

    move v6, v2

    move v7, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 148
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "style"

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v3, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid style: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v3, "color"

    .line 156
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    goto :goto_1

    :cond_1
    const-string v3, "url"

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->mUrl:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "textSize"

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_3
    const-string v3, "gravity"

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance p1, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;-><init>(Ljava/lang/String;IIFI)V

    return-object p1
.end method

.method private loadHomeTextAsset(Ljava/lang/String;I)Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 179
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 181
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "HomeWidget"

    .line 184
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonSetting"

    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->loadCommon(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_3
    const-string v3, "Text"

    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-direct {p0, v1}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->loadContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/prompt/kiosk/slauncher/HomeTextWidget$TextContent;

    move-result-object v0

    .line 196
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 197
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    .line 209
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 211
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_7

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :catch_2
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :catch_3
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_4
    move-exception p2

    move-object p1, v0

    :goto_1
    :try_start_3
    sget-object v1, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 205
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 209
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_5
    move-exception p2

    goto :goto_4

    :catch_6
    move-exception p2

    move-object p1, v0

    :goto_2
    :try_start_5
    sget-object v1, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 203
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 209
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    :catch_7
    move-exception p2

    goto :goto_4

    :catch_8
    move-exception p2

    move-object p1, v0

    :goto_3
    :try_start_7
    sget-object v1, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 201
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    .line 209
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    move-exception p2

    :goto_4
    sget-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 211
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    move-object v0, p1

    :cond_6
    :goto_6
    return-object v0

    :goto_7
    if-eqz v0, :cond_7

    .line 209
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_8

    :catch_a
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :cond_7
    :goto_8
    throw p2

    :cond_8
    :goto_9
    return-object v0
.end method


# virtual methods
.method public onApplyThemeResource(Landroid/content/Context;I)Z
    .locals 2

    .line 231
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "st"

    const/4 v0, 0x0

    .line 232
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "cr"

    const/4 v1, -0x1

    .line 236
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 237
    invoke-direct {p0, p2, p1}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 248
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/prompt/kiosk/slauncher/KioskWebActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->mUrl:Ljava/lang/String;

    .line 250
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;->TAG:Ljava/lang/String;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start web: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
