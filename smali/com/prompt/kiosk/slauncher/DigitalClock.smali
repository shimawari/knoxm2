.class public Lcom/prompt/kiosk/slauncher/DigitalClock;
.super Landroid/view/View;
.source "DigitalClock.java"

# interfaces
.implements Lcom/prompt/kiosk/slauncher/IHomeWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final NAME_AM:Ljava/lang/String; = "am"

.field private static final NAME_BACKGROUND:Ljava/lang/String; = "bg"

.field private static final NAME_COLON:Ljava/lang/String; = "colon"

.field private static final NAME_DAY:Ljava/lang/String; = "day"

.field private static final NAME_HOUR:Ljava/lang/String; = "hour"

.field private static final NAME_MINUTE:Ljava/lang/String; = "min"

.field private static final NAME_MONTH:Ljava/lang/String; = "month"

.field private static final NAME_PM:Ljava/lang/String; = "pm"

.field private static final TAG:Ljava/lang/String; = "DigitalClock"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field mCalendar:Ljava/util/Calendar;

.field private mChanged:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

.field private mDay1:Landroid/graphics/drawable/Drawable;

.field private mDay2:Landroid/graphics/drawable/Drawable;

.field private mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

.field private mFormatChangeObserver:Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;

.field private mHour1:Landroid/graphics/drawable/Drawable;

.field private mHour2:Landroid/graphics/drawable/Drawable;

.field private mHourNums:[Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIs24Hour:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinute1:Landroid/graphics/drawable/Drawable;

.field private mMinute2:Landroid/graphics/drawable/Drawable;

.field private mMinuteNums:[Landroid/graphics/drawable/Drawable;

.field private mMonthDrawable:Landroid/graphics/drawable/Drawable;

.field private mOldAmPm:I

.field private mOldDay:I

.field private mOldDayOfWeek:I

.field private mOldMonth:I

.field private mPrefix:Ljava/lang/String;

.field private mRegistered:Z

.field private mStyleGap10:I

.field private mStyleGap11:I

.field private mStyleGap12:I

.field private mStyleGap14:I

.field private mStyleGap3:I

.field private mStyleGap4:I

.field private mStyleGap5:I

.field private mStyleGap8:I

.field private mStyleName:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTimeSep:Landroid/graphics/drawable/Drawable;

.field private mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

.field private mVersion:Ljava/lang/String;

.field private mWidgetContext:Landroid/content/Context;

.field private mWidgetHeight:I

.field private mWidgetId:I

.field private mWidgetPackageName:Ljava/lang/String;

.field private mWidgetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHourNums:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinuteNums:[Landroid/graphics/drawable/Drawable;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTempRect:Landroid/graphics/Rect;

    .line 219
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$1;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    .line 404
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$2;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->initClock(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHourNums:[Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinuteNums:[Landroid/graphics/drawable/Drawable;

    .line 114
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTempRect:Landroid/graphics/Rect;

    .line 219
    new-instance p2, Lcom/prompt/kiosk/slauncher/DigitalClock$1;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$1;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    .line 404
    new-instance p2, Lcom/prompt/kiosk/slauncher/DigitalClock$2;

    invoke-direct {p2, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$2;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->initClock(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 122
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHourNums:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinuteNums:[Landroid/graphics/drawable/Drawable;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTempRect:Landroid/graphics/Rect;

    .line 219
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$1;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    .line 404
    new-instance v0, Lcom/prompt/kiosk/slauncher/DigitalClock$2;

    invoke-direct {v0, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$2;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->initClock(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/prompt/kiosk/slauncher/DigitalClock;Ljava/util/Calendar;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->onTimeChanged(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$100(Lcom/prompt/kiosk/slauncher/DigitalClock;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->setFormat()V

    return-void
.end method

.method static synthetic access$200(Lcom/prompt/kiosk/slauncher/DigitalClock;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetId:I

    return p0
.end method

.method private drawStyle1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 605
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 606
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 607
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 608
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 610
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v3

    add-int/2addr v1, v0

    .line 611
    invoke-virtual {v4, v2, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 612
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v5

    .line 615
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v2

    add-int/2addr v4, v6

    .line 624
    invoke-virtual {v7, v5, v6, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 625
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    :cond_0
    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 629
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v3

    .line 630
    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 631
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 634
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v2

    .line 635
    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 636
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 645
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v2

    add-int/2addr v1, v0

    .line 650
    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 657
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 658
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 659
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, p2

    .line 660
    invoke-virtual {v3, v2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 661
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private drawStyle2(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 669
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 670
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 671
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 672
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 673
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v3

    add-int v6, v0, v1

    .line 674
    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 675
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    add-int v4, v5, v3

    .line 678
    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    .line 679
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 683
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 684
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v7, v3, v2

    .line 685
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    sub-int/2addr v1, v5

    .line 686
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v7

    add-int/2addr v5, v1

    .line 687
    invoke-virtual {v8, v7, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 688
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/2addr v4, v3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 692
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v4

    .line 693
    invoke-virtual {v2, v4, v0, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 694
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 697
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    add-int v4, v1, v2

    .line 698
    invoke-virtual {v3, v1, v0, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 699
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 710
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap4:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 711
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 712
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 713
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap11:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 714
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v3

    add-int/2addr v1, v2

    .line 716
    invoke-virtual {v4, v0, v2, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 717
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v1, v0

    move v0, v2

    move v2, v3

    :cond_1
    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap4:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    .line 721
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    .line 722
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 725
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 726
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap11:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    :cond_2
    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v1, v2

    add-int/2addr v3, v0

    .line 729
    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    .line 730
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap4:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 733
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 734
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    .line 735
    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 736
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    .line 739
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    .line 740
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v2

    add-int/2addr v3, v0

    .line 741
    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    .line 742
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 747
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 748
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 749
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 750
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap11:I

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, p2

    .line 751
    invoke-virtual {v3, v2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private drawStyle3(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 760
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 761
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 762
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 764
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    .line 766
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap14:I

    sub-int/2addr v0, v3

    :goto_0
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 768
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v3

    add-int v6, v0, v1

    .line 769
    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 770
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    add-int v4, v5, v3

    .line 773
    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    .line 774
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 778
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 779
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v7, v3, v2

    .line 780
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    sub-int/2addr v1, v5

    .line 781
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v8, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v7

    add-int/2addr v5, v1

    .line 782
    invoke-virtual {v8, v7, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    .line 783
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/2addr v4, v3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 787
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v4

    .line 788
    invoke-virtual {v2, v4, v0, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 789
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 792
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v1

    .line 793
    invoke-virtual {v3, v1, v0, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 794
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 803
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 804
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 805
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap8:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 806
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v2

    add-int/2addr v1, v0

    .line 808
    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 809
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 815
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 816
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 817
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap10:I

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, p2

    .line 818
    invoke-virtual {v3, v2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 819
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private drawStyle4(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 826
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 827
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 828
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap12:I

    add-int/2addr v2, v3

    .line 829
    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap10:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v0

    add-int/2addr v1, v3

    .line 830
    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 831
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    add-int v4, v5, v0

    .line 834
    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    .line 835
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap5:I

    add-int/2addr v0, v3

    add-int/2addr v5, v0

    .line 840
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 842
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v5

    add-int/2addr v0, v1

    .line 843
    invoke-virtual {v3, v5, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    .line 844
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 847
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 848
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 849
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap12:I

    add-int/2addr v2, v3

    .line 850
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap10:I

    sub-int/2addr p2, v3

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    add-int v4, v2, v0

    add-int/2addr v1, p2

    .line 851
    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 852
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    add-int v3, v4, v0

    .line 855
    invoke-virtual {v2, v4, p2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 856
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap5:I

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    add-int/2addr p2, v0

    .line 861
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    .line 862
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v4

    add-int/2addr v0, p2

    .line 863
    invoke-virtual {v2, v4, p2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    .line 864
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 869
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 870
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap5:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap4:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 872
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    add-int v3, v4, v0

    add-int/2addr p2, v1

    .line 873
    invoke-virtual {v2, v4, v1, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 874
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    add-int v4, v3, v0

    .line 877
    invoke-virtual {v2, v3, v1, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    .line 878
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 882
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 883
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    .line 884
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v4

    add-int/2addr p2, v1

    .line 885
    invoke-virtual {v2, v4, v1, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    .line 886
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private get24HourMode()Z
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getCurrentLocaleLanguage()Ljava/lang/String;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 565
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeekToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "sat"

    goto :goto_0

    :pswitch_1
    const-string p1, "fri"

    goto :goto_0

    :pswitch_2
    const-string p1, "thu"

    goto :goto_0

    :pswitch_3
    const-string p1, "wed"

    goto :goto_0

    :pswitch_4
    const-string p1, "tue"

    goto :goto_0

    :pswitch_5
    const-string p1, "mon"

    goto :goto_0

    :pswitch_6
    const-string p1, "sun"

    :goto_0
    return-object p1

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

    .line 572
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mPrefix:Ljava/lang/String;

    .line 578
    invoke-static {p2, v0, v1, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "de"

    .line 581
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_"

    if-nez v0, :cond_1

    const-string v0, "es"

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fr"

    .line 582
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "it"

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pt"

    .line 583
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getCurrentLocaleLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mPrefix:Ljava/lang/String;

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, v3, p1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 592
    invoke-static {p2, v0, p1, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "type1"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 594
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 595
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-object p1
.end method

.method private getMonthToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "dec"

    goto :goto_0

    :pswitch_1
    const-string p1, "nov"

    goto :goto_0

    :pswitch_2
    const-string p1, "oct"

    goto :goto_0

    :pswitch_3
    const-string p1, "sep"

    goto :goto_0

    :pswitch_4
    const-string p1, "aug"

    goto :goto_0

    :pswitch_5
    const-string p1, "jul"

    goto :goto_0

    :pswitch_6
    const-string p1, "jun"

    goto :goto_0

    :pswitch_7
    const-string p1, "may"

    goto :goto_0

    :pswitch_8
    const-string p1, "apr"

    goto :goto_0

    :pswitch_9
    const-string p1, "mar"

    goto :goto_0

    :pswitch_a
    const-string p1, "feb"

    goto :goto_0

    :pswitch_b
    const-string p1, "jan"

    :goto_0
    return-object p1

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

.method private initClock(Landroid/content/Context;Z)V
    .locals 3

    .line 132
    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 134
    new-instance p1, Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;

    invoke-direct {p1, p0}, Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;-><init>(Lcom/prompt/kiosk/slauncher/DigitalClock;)V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mFormatChangeObserver:Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;

    .line 135
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mFormatChangeObserver:Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->setFormat()V

    iput-boolean p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIs24Hour:Z

    .line 141
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    mul-int/lit8 p2, p1, 0x3

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap3:I

    mul-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap4:I

    mul-int/lit8 p2, p1, 0x5

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap5:I

    mul-int/lit8 p2, p1, 0x8

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap8:I

    mul-int/lit8 p2, p1, 0xa

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap10:I

    mul-int/lit8 p2, p1, 0xb

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap11:I

    mul-int/lit8 p2, p1, 0xc

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap12:I

    mul-int/lit8 p1, p1, 0xe

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleGap14:I

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 151
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->onTimeChanged(Ljava/util/Calendar;)V

    return-void
.end method

.method private initValues()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method private onTimeChanged(Ljava/util/Calendar;)V
    .locals 5

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIs24Hour:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    .line 167
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    .line 168
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    .line 169
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIs24Hour:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move p1, v2

    :cond_3
    iget v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    :cond_4
    if-nez v3, :cond_5

    const-string v2, "am"

    goto :goto_1

    :cond_5
    const-string v2, "pm"

    .line 183
    :goto_1
    invoke-direct {p0, v2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCurrentAmPmDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    :goto_2
    iput v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldAmPm:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHourNums:[Landroid/graphics/drawable/Drawable;

    .line 188
    div-int/lit8 v3, p1, 0xa

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour1:Landroid/graphics/drawable/Drawable;

    .line 189
    rem-int/2addr p1, v1

    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHour2:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinuteNums:[Landroid/graphics/drawable/Drawable;

    .line 190
    div-int/lit8 v2, v0, 0xa

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute1:Landroid/graphics/drawable/Drawable;

    .line 191
    rem-int/2addr v0, v1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinute2:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mChanged:Z

    .line 193
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->invalidate()V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x7

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    const-string v1, "day"

    if-eq p1, v0, :cond_7

    .line 198
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDayOfWeekToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDayOfWeekDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDayOfWeek:I

    :cond_7
    const-string p1, "type2"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "type4"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_8
    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 205
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    .line 206
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    if-ne p1, v2, :cond_9

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a

    :cond_9
    const-string v2, "month"

    .line 208
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getMonthToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMonthDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldMonth:I

    :cond_a
    iget p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    if-eq v0, p1, :cond_b

    .line 212
    div-int/lit8 p1, v0, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay1:Landroid/graphics/drawable/Drawable;

    .line 213
    rem-int/lit8 p1, v0, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mDay2:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mOldDay:I

    :cond_b
    :goto_3
    return-void
.end method

.method private registerIntentReceiver()V
    .locals 4

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mRegistered:Z

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.prompt.kiosk.slauncher.intent.action.HOMEWIDGET_UPDATE"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method private setFormat()V
    .locals 0

    return-void
.end method

.method private setImages(Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeSep:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mHourNums:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMinuteNums:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private unregisterIntentReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public loadAsset(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_7

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    .line 899
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 900
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 901
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 902
    :try_start_1
    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "HomeWidget"

    .line 904
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 906
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 908
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 909
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 915
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonSetting"

    .line 916
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

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

    .line 929
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
    sget-object p1, Lcom/prompt/kiosk/slauncher/DigitalClock;->TAG:Ljava/lang/String;

    .line 925
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 929
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_4
    move-exception p2

    :goto_2
    :try_start_5
    sget-object p1, Lcom/prompt/kiosk/slauncher/DigitalClock;->TAG:Ljava/lang/String;

    .line 923
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 929
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_5
    move-exception p2

    :goto_3
    :try_start_7
    sget-object p1, Lcom/prompt/kiosk/slauncher/DigitalClock;->TAG:Ljava/lang/String;

    .line 921
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    .line 929
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    sget-object p2, Lcom/prompt/kiosk/slauncher/DigitalClock;->TAG:Ljava/lang/String;

    .line 931
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_6

    .line 929
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    sget-object v0, Lcom/prompt/kiosk/slauncher/DigitalClock;->TAG:Ljava/lang/String;

    .line 931
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    :cond_6
    :goto_6
    throw p2

    :cond_7
    :goto_7
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/Context;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    return v0

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->initValues()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    iput p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetId:I

    .line 441
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemePackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetPackageName:Ljava/lang/String;

    .line 443
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeStyleName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {p1, p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeColor(Landroid/content/Context;I)I

    move-result p2

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    .line 446
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/ResourceManager;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mColorFilter:Landroid/graphics/ColorFilter;

    const/16 p2, 0x33

    .line 448
    invoke-static {p1, p2, v3}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetVersion(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mVersion:Ljava/lang/String;

    iput-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 454
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetContext:Landroid/content/Context;

    .line 455
    invoke-static {p2}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getHomeWidgetPrefix(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mPrefix:Ljava/lang/String;

    const-string v1, "bg"

    .line 458
    invoke-static {p1, v4, p2, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->toFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 459
    invoke-static {p2, v3, p1, v1}, Lcom/prompt/kiosk/slauncher/LauncherHomeWidgetManager;->getThemeDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xa

    new-array v2, p2, [Landroid/graphics/drawable/Drawable;

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_3

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hour_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-array v3, p2, [Landroid/graphics/drawable/Drawable;

    move v4, v0

    :goto_1
    if-ge v4, p2, :cond_5

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "min_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    if-nez v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string p2, "colon"

    .line 476
    invoke-direct {p0, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 478
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070042

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetWidth:I

    .line 479
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070041

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetHeight:I

    .line 480
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->setImages(Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->onTimeChanged(Ljava/util/Calendar;)V

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 231
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 233
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->registerIntentReceiver()V

    .line 235
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->addStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V

    .line 236
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->getTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->onTimeChanged(Ljava/util/Calendar;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 241
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 242
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mFormatChangeObserver:Lcom/prompt/kiosk/slauncher/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->unregisterIntentReceiver()V

    .line 245
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getInstance(Landroid/content/Context;)Lcom/prompt/kiosk/slauncher/device/DeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prompt/kiosk/slauncher/device/DeviceStatus;->getStatusTime()Lcom/prompt/kiosk/slauncher/device/StatusTime;

    move-result-object v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTimeStatusReceiver:Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;

    invoke-virtual {v0, v1}, Lcom/prompt/kiosk/slauncher/device/StatusTime;->removeStatusReceiver(Lcom/prompt/kiosk/slauncher/device/DeviceStatus$StatusReceiver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mChanged:Z

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 321
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/DigitalClock;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 323
    div-int/lit8 v2, v0, 0x2

    .line 324
    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetWidth:I

    if-eqz v5, :cond_1

    iget v6, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mWidgetHeight:I

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    move v6, v1

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-lt v0, v5, :cond_2

    if-ge v1, v6, :cond_3

    :cond_2
    int-to-float v0, v0

    int-to-float v7, v5

    div-float/2addr v0, v7

    int-to-float v1, v1

    int-to-float v7, v6

    div-float/2addr v1, v7

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v2

    int-to-float v7, v3

    .line 339
    invoke-virtual {p1, v0, v0, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    const-string v0, "type1"

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 348
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v8, v1

    int-to-float v9, v6

    div-float/2addr v9, v7

    .line 351
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v1, v8

    float-to-int v1, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 354
    div-int/lit8 v1, v1, 0x2

    sub-int v8, v2, v1

    .line 355
    div-int/lit8 v7, v7, 0x2

    sub-int v9, v3, v7

    add-int/2addr v1, v2

    add-int/2addr v7, v3

    .line 359
    invoke-virtual {v4, v8, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    int-to-float v4, v3

    const v7, 0x3f666666    # 0.9f

    .line 362
    invoke-virtual {p1, v7, v7, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    .line 364
    :cond_4
    div-int/lit8 v1, v5, 0x2

    sub-int v7, v2, v1

    .line 365
    div-int/lit8 v8, v6, 0x2

    sub-int v9, v3, v8

    add-int/2addr v1, v2

    add-int/2addr v8, v3

    .line 368
    invoke-virtual {v4, v7, v9, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mTempRect:Landroid/graphics/Rect;

    .line 375
    div-int/lit8 v5, v5, 0x2

    sub-int v4, v2, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v6

    add-int/2addr v2, v5

    add-int/2addr v3, v6

    invoke-virtual {v1, v4, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->drawStyle1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    const-string v0, "type2"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 379
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->drawStyle2(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    const-string v0, "type3"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->drawStyle3(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_8
    const-string v0, "type4"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mStyleName:Ljava/lang/String;

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 383
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/DigitalClock;->drawStyle4(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 385
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 252
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 253
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 254
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMaxWidth:I

    iget v5, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mMaxHeight:I

    if-nez v4, :cond_0

    move v4, v1

    :cond_0
    if-nez v5, :cond_1

    move v5, v3

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-ge v1, v4, :cond_2

    int-to-float v0, v1

    int-to-float v1, v4

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    if-eqz v2, :cond_3

    if-ge v3, v5, :cond_3

    int-to-float v1, v3

    int-to-float v2, v5

    div-float v6, v1, v2

    .line 276
    :cond_3
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 278
    invoke-static {v1, p1, v2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->resolveSizeAndState(III)I

    move-result p1

    int-to-float v1, v5

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 279
    invoke-static {v0, p2, v2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->resolveSizeAndState(III)I

    move-result p2

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/prompt/kiosk/slauncher/DigitalClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/DigitalClock;->mChanged:Z

    return-void
.end method
