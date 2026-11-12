.class public Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;
.super Ljava/lang/Object;
.source "LauncherHomeWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;
    }
.end annotation


# static fields
.field public static final ATTR_COLORTO:Ljava/lang/String; = "colorTo"

.field private static final DEBUG:Z = true

.field public static final EXTRA_HOMEWIDGET_ID:Ljava/lang/String; = "homeWidgetId"

.field public static final EXTRA_HOMEWIDGET_PACKAGE:Ljava/lang/String; = "homeWidgetPackage"

.field public static final EXTRA_HOMEWIDGET_TYPE:Ljava/lang/String; = "homeWidgetType"

.field public static final INTENT_FILTER_ACTION_HOME_WIDGET_CALENDAR:Ljava/lang/String; = "com.prompt.kiosk.launcher.THEME.WIDGET_CALENDAR"

.field public static final INTENT_FILTER_ACTION_HOME_WIDGET_DIGITALCLOCK:Ljava/lang/String; = "com.prompt.kiosk.launcher.THEME.WIDGET_DIGITALCLOCK"

.field public static final INTENT_FILTER_ACTION_HOME_WIDGET_IMAGELINK:Ljava/lang/String; = "com.prompt.kiosk.launcher.THEME.WIDGET_IMAGELINK"

.field public static final INTENT_FILTER_ACTION_HOME_WIDGET_MEMO:Ljava/lang/String; = "com.prompt.kiosk.launcher.THEME.WIDGET_MEMO"

.field public static final INTENT_FILTER_ACTION_HOME_WIDGET_TEXT:Ljava/lang/String; = "com.prompt.kiosk.launcher.THEME.WIDGET_TEXT"

.field public static final INVALID_HOMEWIDGET_ID:I = -0x1

.field public static final ITEM_TYPE_HOME_WIDGET_CALENDAR:I = 0x36

.field public static final ITEM_TYPE_HOME_WIDGET_DIGITALCLOCK:I = 0x33

.field public static final ITEM_TYPE_HOME_WIDGET_DIGITALCLOCK_24HOUR:I = 0x3e

.field public static final ITEM_TYPE_HOME_WIDGET_FIRST:I = 0x33

.field public static final ITEM_TYPE_HOME_WIDGET_IMAGELINK:I = 0x3a

.field public static final ITEM_TYPE_HOME_WIDGET_LAST:I = 0x3d

.field public static final ITEM_TYPE_HOME_WIDGET_MEMO:I = 0x37

.field public static final ITEM_TYPE_HOME_WIDGET_TEXT:I = 0x3c

.field protected static final PREFS_NAME:Ljava/lang/String; = "homewidget"

.field public static final PREFS_PREFIX:Ljava/lang/String; = "homewidget_"

.field public static final PREFS_PUBLIC_KEY_THEME_COLOR:Ljava/lang/String; = "cr"

.field public static final PREFS_PUBLIC_KEY_THEME_PACKAGE:Ljava/lang/String; = "tp"

.field public static final PREFS_PUBLIC_KEY_THEME_STYLE:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String; = "LauncherHomeWidgetManager"

.field protected static final WIDGET_STYLE_XML_NAME_SUFFIX:Ljava/lang/String; = "_styles"

.field protected static final WIDGET_STYLE_XML_TAG_STYLE:Ljava/lang/String; = "style"

.field protected static final WIDGET_STYLE_XML_TAG_STYLES:Ljava/lang/String; = "styles"

.field public static final WIDGET_TYPE_1:Ljava/lang/String; = "type1"

.field public static final WIDGET_TYPE_2:Ljava/lang/String; = "type2"

.field public static final WIDGET_TYPE_3:Ljava/lang/String; = "type3"

.field public static final WIDGET_TYPE_4:Ljava/lang/String; = "type4"

.field public static final WIDGET_VERSION_2:Ljava/lang/String; = "v2"

.field public static final XML_ATTR_COLOR:Ljava/lang/String; = "color"

.field public static final XML_ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final XML_COMMON_TAG:Ljava/lang/String; = "CommonSetting"

.field public static final XML_ROOT_TAG:Ljava/lang/String; = "HomeWidget"


# instance fields
.field private mNextHomeWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    .line 88
    invoke-virtual {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->loadState(Landroid/content/Context;)V

    return-void
.end method

.method static convertItemTypeToDefaultIfNeeded(I)I
    .locals 2

    const/16 v0, 0x32

    if-le p0, v0, :cond_0

    const/16 v1, 0x62

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static deletePref(Landroid/content/Context;I)V
    .locals 0

    .line 495
    invoke-static {p0, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 496
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 497
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getContentView(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)Landroid/view/View;
    .locals 2

    .line 183
    iget v0, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 197
    :cond_0
    new-instance v0, Lcom/prompt/kiosk/slauncher/Memo;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/Memo;-><init>(Landroid/content/Context;)V

    .line 198
    move-object p1, v0

    check-cast p1, Lcom/prompt/kiosk/slauncher/Memo;

    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/Memo;->loadAsset(Ljava/lang/String;I)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Lcom/prompt/kiosk/slauncher/CalendarWidget;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/CalendarWidget;-><init>(Landroid/content/Context;)V

    .line 194
    move-object p1, v0

    check-cast p1, Lcom/prompt/kiosk/slauncher/CalendarWidget;

    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->loadAsset(Ljava/lang/String;I)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/prompt/kiosk/slauncher/DigitalClock;-><init>(Landroid/content/Context;Z)V

    .line 190
    move-object p1, v0

    check-cast p1, Lcom/prompt/kiosk/slauncher/DigitalClock;

    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->loadAsset(Ljava/lang/String;I)V

    goto :goto_0

    .line 204
    :cond_3
    new-instance v0, Lcom/prompt/kiosk/slauncher/HomeTextWidget;

    invoke-direct {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/HomeTextWidget;-><init>(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V

    goto :goto_0

    .line 201
    :cond_4
    new-instance v0, Lcom/prompt/kiosk/slauncher/ImageLinkWidget;

    invoke-direct {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/ImageLinkWidget;-><init>(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)V

    goto :goto_0

    .line 185
    :cond_5
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;-><init>(Landroid/content/Context;)V

    .line 186
    move-object p1, v0

    check-cast p1, Lcom/prompt/kiosk/slauncher/DigitalClock;

    iget-object p1, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->asset:Ljava/lang/String;

    iget p2, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->loadAsset(Ljava/lang/String;I)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static getHomeWidget(Landroid/content/Context;I)Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;
    .locals 6

    .line 136
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;

    invoke-direct {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;-><init>()V

    .line 137
    iput p1, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->itemType:I

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    const-string v3, ""

    if-eq p1, v2, :cond_4

    const/16 v2, 0x3a

    const/4 v4, 0x0

    if-eq p1, v2, :cond_3

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_2

    const/16 v2, 0x3e

    if-eq p1, v2, :cond_4

    const/16 v2, 0x36

    if-eq p1, v2, :cond_1

    const/16 v2, 0x37

    if-eq p1, v2, :cond_0

    return-object v4

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070046

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const v2, 0x7f0c0050

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 157
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070040

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const v2, 0x7f0c004e

    .line 150
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 151
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 166
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07004c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07004b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const v2, 0x7f0c0051

    .line 168
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 169
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07003e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07003d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    .line 162
    iput-object v4, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 163
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minWidth:I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070043

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->minHeight:I

    const v2, 0x7f0c004f

    .line 144
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 145
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 175
    :goto_0
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v1, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    .line 176
    :cond_5
    iget-object v1, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->isInstalledHomeWidget(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    :goto_1
    iput-boolean p0, v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;->enabled:Z

    return-object v0
.end method

.method static getHomeWidgetAction(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x33

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x36

    if-eq p0, v0, :cond_1

    const/16 v0, 0x37

    if-ne p0, v0, :cond_0

    const-string p0, "com.prompt.kiosk.launcher.THEME.WIDGET_MEMO"

    return-object p0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no widget"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "com.prompt.kiosk.launcher.THEME.WIDGET_CALENDAR"

    return-object p0

    :cond_2
    const-string p0, "com.prompt.kiosk.launcher.THEME.WIDGET_TEXT"

    return-object p0

    :cond_3
    const-string p0, "com.prompt.kiosk.launcher.THEME.WIDGET_IMAGELINK"

    return-object p0

    :cond_4
    const-string p0, "com.prompt.kiosk.launcher.THEME.WIDGET_DIGITALCLOCK"

    return-object p0
.end method

.method public static getHomeWidgetPrefix(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x33

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x36

    if-eq p0, v0, :cond_1

    const/16 v0, 0x37

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "memo"

    return-object p0

    :cond_1
    const-string p0, "calendar"

    return-object p0

    :cond_2
    const-string p0, "text"

    return-object p0

    :cond_3
    const-string p0, "imagelink"

    return-object p0

    :cond_4
    const-string p0, "digitalclock"

    return-object p0
.end method

.method public static getHomeWidgetThemes(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-static {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetThemes(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getHomeWidgetThemes(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 305
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 306
    invoke-static {p0, p1, p2, p3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->parseHomeWidgetStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 307
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;

    .line 315
    iget-object p3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p3, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->packageName:Ljava/lang/String;

    .line 316
    iput-boolean p1, p2, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->downloaded:Z

    .line 317
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    :goto_1
    new-instance p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;-><init>()V

    .line 310
    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->packageName:Ljava/lang/String;

    .line 311
    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->downloaded:Z

    .line 312
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static getHomeWidgetVersion(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetPrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_styles"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v2_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "xml"

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "v2"

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "homewidget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "homewidget_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "cr"

    .line 475
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 487
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getThemePackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "homewidget_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "tp"

    .line 459
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static getThemeStyleName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "homewidget_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "st"

    .line 467
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method static isDefaultPackage(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isInstalledHomeWidget(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 281
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetAction(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 284
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method public static isInstalledHomeWidget(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 291
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 294
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method static isValidItemType(I)Z
    .locals 1

    const/16 v0, 0x32

    if-le p0, v0, :cond_0

    const/16 v0, 0x62

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lastHomeWidgetId(Landroid/content/Context;)I
    .locals 6

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "appWidgetId"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "itemType>? and itemType<?"

    const-string p0, "50"

    const-string v4, "98"

    filled-new-array {p0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "appWidgetId DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 115
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 117
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastHomeWidgetId id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static loadCommon(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SharedPreferences;)V
    .locals 4

    .line 429
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 430
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 432
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 433
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    .line 435
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "type1"

    goto :goto_1

    :cond_0
    const-string v3, "1"

    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "type2"

    goto :goto_1

    :cond_1
    const-string v3, "2"

    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "type3"

    goto :goto_1

    :cond_2
    const-string v3, "3"

    .line 441
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "type4"

    :cond_3
    :goto_1
    const-string v3, "st"

    .line 443
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_4
    const-string v3, "color"

    .line 444
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 445
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cr"

    .line 446
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static parseHomeWidgetStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "Got exception parsing widget_style."

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 330
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetPrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_styles"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "xml"

    if-eqz p3, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v4, "_"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-gtz p1, :cond_2

    return-object v1

    .line 339
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const-string p1, "styles"

    .line 343
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 345
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p1

    .line 348
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 349
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, p1, :cond_8

    :cond_4
    const/4 v2, 0x1

    if-eq p3, v2, :cond_8

    const/4 v2, 0x2

    if-eq p3, v2, :cond_5

    goto :goto_1

    .line 355
    :cond_5
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "style"

    .line 357
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 358
    new-instance p3, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;

    invoke-direct {p3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;-><init>()V

    .line 359
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 361
    invoke-interface {p0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "colorTo"

    .line 362
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 363
    invoke-interface {p0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "\\|"

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->colorTo:[Ljava/lang/String;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 370
    :cond_7
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 371
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 373
    iput-object v1, p3, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager$ThemeInfo;->styleName:Ljava/lang/String;

    .line 374
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 384
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception p0

    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 382
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception p0

    sget-object p1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 380
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    return-object p2
.end method

.method public static toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_1

    .line 419
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    if-eqz p1, :cond_2

    .line 422
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 425
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public allocateHomeWidgetId()I
    .locals 4

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    sget-object v1, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allocateHomeWidgetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public createView(Landroid/content/Context;ILcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)Landroid/view/View;
    .locals 2

    .line 211
    new-instance v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;

    invoke-direct {v0, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-direct {p0, p1, p3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getContentView(Landroid/content/Context;Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetInfo;)Landroid/view/View;

    move-result-object p3

    .line 213
    instance-of v1, p3, Lcom/prompt/kiosk/slauncher/IHomeWidget;

    if-eqz v1, :cond_0

    .line 214
    move-object v1, p3

    check-cast v1, Lcom/prompt/kiosk/slauncher/IHomeWidget;

    invoke-interface {v1, p1, p2}, Lcom/prompt/kiosk/slauncher/IHomeWidget;->onApplyThemeResource(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    if-nez p3, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0, p3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetHostView;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0
.end method

.method loadState(Landroid/content/Context;)V
    .locals 3

    .line 124
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->lastHomeWidgetId(Landroid/content/Context;)I

    move-result p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->TAG:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadState id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    :cond_0
    return-void
.end method

.method public syncHomeWidgetId(I)V
    .locals 1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    if-gt v0, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->mNextHomeWidgetId:I

    :cond_0
    return-void
.end method
