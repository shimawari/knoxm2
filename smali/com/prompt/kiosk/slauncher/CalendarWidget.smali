.class public Lcom/prompt/kiosk/slauncher/CalendarWidget;
.super Landroid/widget/FrameLayout;
.source "CalendarWidget.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/IHomeWidget;


# static fields
.field public static final NAME_BACKGROUND:Ljava/lang/String; = "bg"

.field public static final NAME_BOTTOM_BACKGROUND:Ljava/lang/String; = "bottom_bg"

.field public static final NAME_COLORS:Ljava/lang/String; = "colors"

.field public static final NAME_DAY:Ljava/lang/String; = "day"

.field public static final NAME_DAY_LARGE:Ljava/lang/String; = "day_large"

.field public static final NAME_MONTH:Ljava/lang/String; = "month"

.field public static final NAME_TODAY_BACKGROUND:Ljava/lang/String; = "today_bg"

.field public static final NAME_TODAY_BACKGROUND_HOLIDAY:Ljava/lang/String; = "today_bg_holiday"

.field public static final NAME_TOP_BACKGROUND:Ljava/lang/String; = "top_bg"

.field public static final NAME_YEAR:Ljava/lang/String; = "year"

.field private static final TAG:Ljava/lang/String; = "CalendarWidget"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

.field private mPackageName:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mRegistered:Z

.field private mStyleName:Ljava/lang/String;

.field private mThemeContext:Landroid/content/Context;

.field private mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

.field private mVersion:Ljava/lang/String;

.field private mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance p1, Lcom/prompt/kiosk/slauncher/CalendarWidget$1;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget$1;-><init>(Lcom/prompt/kiosk/slauncher/CalendarWidget;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance p1, Lcom/prompt/kiosk/slauncher/CalendarWidget$2;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget$2;-><init>(Lcom/prompt/kiosk/slauncher/CalendarWidget;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    .line 72
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/CalendarWidget;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mWidgetId:I

    return p0
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/CalendarWidget;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->onDateChanged()V

    return-void
.end method

.method private getCurrentLocaleLanguage()Ljava/lang/String;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 314
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDayOfWeekToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "sat"

    goto :goto_0

    :pswitch_1
    const-string p0, "fri"

    goto :goto_0

    :pswitch_2
    const-string p0, "thu"

    goto :goto_0

    :pswitch_3
    const-string p0, "wed"

    goto :goto_0

    :pswitch_4
    const-string p0, "tue"

    goto :goto_0

    :pswitch_5
    const-string p0, "mon"

    goto :goto_0

    :pswitch_6
    const-string p0, "sun"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mStyleName:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mPrefix:Ljava/lang/String;

    if-nez p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 326
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 325
    :goto_0
    invoke-static {v0, v1, v2, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mThemeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 327
    invoke-static {v0, v1, p2, v2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "bg"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "top_bg"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bottom_bg"

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "type1"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mStyleName:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 334
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-object p2
.end method

.method private getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return-object v0

    .line 343
    :cond_0
    new-array v1, p3, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move-object v3, p2

    :goto_0
    if-ge v2, p3, :cond_9

    if-eqz p2, :cond_7

    const-string v4, "getMonthToString"

    .line 347
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "pt"

    const-string v6, "it"

    const-string v7, "fr"

    const-string v8, "es"

    const-string v9, "_"

    const-string v10, "de"

    if-eqz v4, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 353
    :cond_1
    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getMonthToString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 351
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getMonthToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v4, "getDayOfWeekToString"

    .line 356
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 357
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 358
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 359
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 362
    invoke-static {v3}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDayOfWeekToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 360
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDayOfWeekToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const-string v4, "num"

    .line 365
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    :cond_7
    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_8

    return-object v0

    .line 373
    :cond_8
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method private getItemType()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public static getMonthToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "dec"

    goto :goto_0

    :pswitch_1
    const-string p0, "nov"

    goto :goto_0

    :pswitch_2
    const-string p0, "oct"

    goto :goto_0

    :pswitch_3
    const-string p0, "sep"

    goto :goto_0

    :pswitch_4
    const-string p0, "aug"

    goto :goto_0

    :pswitch_5
    const-string p0, "jul"

    goto :goto_0

    :pswitch_6
    const-string p0, "jun"

    goto :goto_0

    :pswitch_7
    const-string p0, "may"

    goto :goto_0

    :pswitch_8
    const-string p0, "apr"

    goto :goto_0

    :pswitch_9
    const-string p0, "mar"

    goto :goto_0

    :pswitch_a
    const-string p0, "feb"

    goto :goto_0

    :pswitch_b
    const-string p0, "jan"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mCalendar:Ljava/util/Calendar;

    .line 78
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 81
    new-instance v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 83
    invoke-virtual {p0, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->addView(Landroid/view/View;)V

    return-void
.end method

.method private onDateChanged()V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mCalendar:Ljava/util/Calendar;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    if-eqz v2, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setToday(J)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mCalendar:Ljava/util/Calendar;

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setup(II)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->invalidate()V

    return-void
.end method

.method private registerIntentReceiver()V
    .locals 7

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mRegistered:Z

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

    .line 149
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mRegistered:Z

    :cond_0
    return-void
.end method

.method private unregisterIntentReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public loadAsset(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_7

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    .line 386
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 388
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "HomeWidget"

    .line 391
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 393
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 395
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 396
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 402
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonSetting"

    .line 403
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

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

    .line 416
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
    sget-object p1, Lcom/prompt/kiosk/slauncher/CalendarWidget;->TAG:Ljava/lang/String;

    .line 412
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 416
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_4
    move-exception p2

    :goto_2
    :try_start_5
    sget-object p1, Lcom/prompt/kiosk/slauncher/CalendarWidget;->TAG:Ljava/lang/String;

    .line 410
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 416
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_5
    move-exception p2

    :goto_3
    :try_start_7
    sget-object p1, Lcom/prompt/kiosk/slauncher/CalendarWidget;->TAG:Ljava/lang/String;

    .line 408
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    .line 416
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/CalendarWidget;->TAG:Ljava/lang/String;

    .line 418
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_6

    .line 416
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->TAG:Ljava/lang/String;

    .line 418
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    :cond_6
    :goto_6
    throw p2

    :cond_7
    :goto_7
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/Context;I)Z
    .locals 12

    iput p2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mWidgetId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    .line 168
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "tp"

    .line 169
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mPackageName:Ljava/lang/String;

    const-string v4, "st"

    .line 171
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mStyleName:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mThemeContext:Landroid/content/Context;

    const-string v4, "v2"

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mVersion:Ljava/lang/String;

    .line 188
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeColor(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mThemeContext:Landroid/content/Context;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    .line 190
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 191
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getItemType()I

    move-result p1

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetPrefix(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mPrefix:Ljava/lang/String;

    const-string p1, "month"

    const-string p2, "num"

    const/16 v2, 0xa

    .line 195
    invoke-direct {p0, p1, p2, v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "getMonthToString"

    const/16 v4, 0xc

    .line 198
    invoke-direct {p0, p1, v0, v4}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    move-object v6, v0

    const-string p1, "year"

    .line 202
    invoke-direct {p0, p1, p2, v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string p1, "day_large"

    const-string p2, "getDayOfWeekToString"

    const/4 v0, 0x7

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string p1, "day"

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawables(Ljava/lang/String;Ljava/lang/String;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-nez v8, :cond_4

    :cond_3
    return v1

    :cond_4
    const-string p1, "bg"

    .line 214
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "top_bg"

    .line 215
    invoke-direct {p0, p2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "bottom_bg"

    .line 216
    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "today_bg"

    .line 217
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v2, "today_bg_holiday"

    .line 218
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 220
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 221
    invoke-virtual {v1, v3}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setStyle(Ljava/lang/String;)V

    const-string v1, "type1"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mStyleName:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 223
    invoke-virtual {v1, v2}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 224
    invoke-virtual {v1, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setBackgroundImages(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 225
    invoke-virtual/range {v4 .. v11}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setImages([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mMonthView:Lcom/prompt/kiosk/slauncher/CalendarMonthView;

    .line 228
    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->registerIntentReceiver()V

    .line 126
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->addStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V

    .line 127
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->onDateChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 133
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->unregisterIntentReceiver()V

    .line 135
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarWidget;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->removeStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
