.class public Lcom/prompt/kiosk/slauncher/CalendarMonthView;
.super Landroid/view/View;
.source "CalendarMonthView.java"


# static fields
.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DAY_ROW_COUNT:I = 0x6


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomRect:Landroid/graphics/Rect;

.field private mCalendar:Ljava/util/Calendar;

.field private mCenterRect:Landroid/graphics/Rect;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDayLabelDrawables:[Landroid/graphics/drawable/Drawable;

.field private mDayLabelPaint:Landroid/graphics/Paint;

.field private mDayLabels:[Ljava/lang/String;

.field private mDayLargeLabels:[Landroid/graphics/drawable/Drawable;

.field private mDayLines:I

.field private mDayNumbers:[Ljava/lang/String;

.field private mDayPaint:Landroid/graphics/Paint;

.field private mDayTextColor:I

.field private mDayTextColor_holiday:I

.field private mDayTextColor_unfocused:I

.field private mDimen1:I

.field private mDimen5:I

.field private mDimen6:I

.field private mDimen7:I

.field private mDimen8:I

.field private mFirstDayOfWeek:I

.field private mFocusDay:[Z

.field private mHolidays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonth:I

.field private mMonthLabels:[Landroid/graphics/drawable/Drawable;

.field private mMonthNums:[Landroid/graphics/drawable/Drawable;

.field private mMonthPaint:Landroid/graphics/Paint;

.field private mNumCells:I

.field private mStyle:Ljava/lang/String;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayEnabled:Z

.field private mTodayHolidayDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayPaint:Landroid/graphics/Paint;

.field private mTodayTextColor:I

.field private mTopBackground:Landroid/graphics/drawable/Drawable;

.field private mTopRect:Landroid/graphics/Rect;

.field private mYear:I

.field private mYearNums:[Landroid/graphics/drawable/Drawable;

.field private mYearPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x2a

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mNumCells:I

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabels:[Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLines:I

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCenterRect:Landroid/graphics/Rect;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayEnabled:Z

    .line 89
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    .line 612
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 613
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    .line 617
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopBackground:Landroid/graphics/drawable/Drawable;

    .line 618
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    .line 622
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomBackground:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private drawBottomArea(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0xd

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x7

    div-int/2addr v4, v5

    .line 273
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f8ccccd    # 1.1f

    mul-float/2addr v6, v7

    const/4 v8, 0x0

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ge v8, v5, :cond_3

    iget v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    add-int/2addr v12, v8

    if-le v12, v5, :cond_0

    add-int/lit8 v12, v12, -0x7

    :cond_0
    iget-object v13, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelDrawables:[Landroid/graphics/drawable/Drawable;

    sub-int/2addr v12, v10

    .line 277
    aget-object v10, v13, v12

    .line 278
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 279
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 281
    iget v14, v2, Landroid/graphics/Rect;->left:I

    mul-int v15, v3, v8

    mul-int/2addr v15, v11

    add-int/2addr v14, v15

    .line 282
    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    int-to-float v5, v12

    div-float/2addr v7, v5

    int-to-float v5, v4

    int-to-float v11, v13

    div-float/2addr v5, v11

    .line 284
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v7, v5, v9

    if-eqz v7, :cond_1

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 287
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v14

    int-to-float v9, v9

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v11, v15

    int-to-float v11, v11

    invoke-virtual {v1, v5, v5, v9, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    sub-int v5, v3, v12

    const/4 v9, 0x2

    .line 289
    div-int/2addr v5, v9

    add-int/2addr v14, v5

    sub-int v5, v4, v13

    .line 290
    div-int/2addr v5, v9

    add-int/2addr v15, v5

    iget v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen5:I

    sub-int v9, v15, v5

    add-int/2addr v12, v14

    add-int/2addr v15, v13

    sub-int/2addr v15, v5

    .line 291
    invoke-virtual {v10, v14, v9, v12, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v7, :cond_2

    .line 294
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x7

    goto :goto_0

    :cond_3
    iget v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLines:I

    const/4 v7, 0x5

    if-gt v5, v7, :cond_4

    const/high16 v9, 0x3fc00000    # 1.5f

    :cond_4
    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    .line 300
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v11, 0x2

    .line 301
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    .line 303
    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    .line 304
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v5, v12, :cond_5

    if-ne v8, v13, :cond_5

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    .line 306
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    :goto_2
    iget v8, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    if-gt v8, v11, :cond_6

    sub-int/2addr v8, v10

    const/4 v11, 0x7

    rsub-int/lit8 v8, v8, 0x7

    .line 309
    rem-int/2addr v8, v11

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    :goto_3
    iget v11, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mNumCells:I

    iget-object v15, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_13

    iget-object v14, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    .line 313
    aget-boolean v14, v14, v10

    if-nez v14, :cond_7

    move/from16 v23, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v20, v9

    move/from16 v19, v11

    move/from16 v18, v12

    const/16 v16, 0x1

    const/16 v17, 0x2

    goto/16 :goto_e

    .line 314
    :cond_7
    iget v14, v2, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v7, v10, 0x7

    mul-int v18, v3, v7

    const/16 v17, 0x2

    mul-int/lit8 v18, v18, 0x2

    add-int v14, v14, v18

    .line 315
    div-int/lit8 v18, v10, 0x7

    move/from16 v19, v11

    .line 316
    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    mul-float/2addr v2, v9

    float-to-int v2, v2

    add-int/2addr v11, v2

    mul-int v2, v4, v18

    add-int/2addr v11, v2

    iget v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLines:I

    move/from16 v20, v9

    const/4 v9, 0x5

    if-gt v2, v9, :cond_8

    .line 317
    div-int/lit8 v2, v4, 0x6

    mul-int v2, v2, v18

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v11, v2

    iget-boolean v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayEnabled:Z

    if-eqz v2, :cond_9

    const/4 v2, -0x1

    if-eq v5, v2, :cond_9

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    .line 322
    aget-boolean v2, v2, v10

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayNumbers:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    iget-object v9, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    .line 323
    aget-boolean v9, v9, v10

    if-eqz v9, :cond_a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0x1

    add-int/lit8 v18, v13, 0x1

    move/from16 v21, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v18, v12

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayNumbers:[Ljava/lang/String;

    aget-object v12, v12, v10

    .line 324
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v5, v12}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "%d%02d%02d"

    .line 323
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_a
    move/from16 v21, v5

    move/from16 v18, v12

    const/16 v16, 0x1

    const/4 v5, 0x0

    :goto_7
    if-eq v7, v8, :cond_c

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mHolidays:Ljava/util/HashMap;

    if-eqz v7, :cond_b

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v5, v16

    :goto_9
    if-eqz v2, :cond_d

    if-nez v5, :cond_d

    iget-object v7, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    goto :goto_a

    :cond_d
    move-object v7, v15

    .line 327
    :goto_a
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v14

    int-to-float v12, v11

    move/from16 v22, v6

    .line 330
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v23, 0x40000000    # 2.0f

    div-float v6, v6, v23

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v24

    div-float v24, v24, v23

    sub-float v6, v6, v24

    add-float/2addr v12, v6

    float-to-int v6, v12

    .line 332
    invoke-direct {v0, v10, v2, v5}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getColor(IZZ)I

    move-result v5

    .line 333
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v12, :cond_e

    .line 335
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_e
    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    iget v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    if-ne v5, v12, :cond_f

    iget-object v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayHolidayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    move-object v2, v5

    :cond_f
    if-eqz v2, :cond_12

    const-string v5, "type2"

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 344
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "type3"

    iget-object v12, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 345
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_b

    :cond_10
    move v5, v4

    goto :goto_c

    :cond_11
    :goto_b
    iget v5, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen1:I

    add-int/2addr v11, v4

    sub-int/2addr v11, v5

    :goto_c
    int-to-float v12, v3

    const v23, 0x3e2e147b    # 0.17f

    mul-float v12, v12, v23

    float-to-int v12, v12

    move/from16 v23, v4

    sub-int v4, v14, v12

    add-int/2addr v14, v3

    add-int/2addr v14, v12

    add-int/2addr v5, v11

    .line 349
    invoke-virtual {v2, v4, v11, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_d

    :cond_12
    move/from16 v23, v4

    :goto_d
    iget-object v2, v0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayNumbers:[Ljava/lang/String;

    .line 354
    aget-object v2, v2, v10

    int-to-float v4, v9

    int-to-float v5, v6

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v9, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v4, v23

    const/4 v7, 0x5

    goto/16 :goto_4

    :cond_13
    return-void
.end method

.method private drawTopArea(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 12

    .line 436
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "type4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_1
    const-string v0, "type3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :pswitch_2
    const-string v0, "type2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :pswitch_3
    const-string v0, "type1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthNums:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    iget v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    add-int/2addr v5, v1

    .line 556
    div-int/lit8 v5, v5, 0xa

    aget-object v0, v0, v5

    .line 557
    aget-object v4, v4, v2

    .line 559
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/2addr v5, v3

    .line 560
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen8:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 563
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v6, v6

    div-float/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float p2, v6, p2

    if-eqz p2, :cond_4

    .line 565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 566
    iget p2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v3

    add-int/2addr p2, v7

    int-to-float p2, p2

    iget v7, p3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v6, p2, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 570
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 571
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 572
    iget v7, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/2addr v8, v3

    add-int/2addr v7, v8

    .line 573
    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v7, p2

    add-int v9, v5, v6

    .line 574
    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthNums:[Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    add-int/2addr v7, v1

    .line 577
    rem-int/lit8 v7, v7, 0xa

    aget-object v0, v0, v7

    add-int/2addr p2, v8

    .line 579
    invoke-virtual {v0, v8, v5, p2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen8:I

    add-int/2addr v6, p2

    add-int/2addr v5, v6

    .line 583
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 584
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 585
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    mul-int/lit8 v4, p2, 0x4

    sub-int/2addr p3, v4

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 586
    div-int/lit16 v3, v3, 0x3e8

    aget-object p3, p3, v3

    add-int v3, v1, p2

    add-int/2addr v0, v5

    .line 587
    invoke-virtual {p3, v1, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 588
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 590
    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    aget-object p3, p3, v1

    add-int v1, v3, p2

    .line 591
    invoke-virtual {p3, v3, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 594
    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xa

    aget-object p3, p3, v3

    add-int v3, v1, p2

    .line 595
    invoke-virtual {p3, v1, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 596
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 598
    rem-int/lit8 v1, v1, 0xa

    aget-object p3, p3, v1

    add-int/2addr p2, v3

    .line 599
    invoke-virtual {p3, v3, v5, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 600
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v2, :cond_9

    .line 603
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthNums:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLargeLabels:[Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    iget v6, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    add-int/2addr v6, v1

    .line 488
    div-int/lit8 v6, v6, 0xa

    aget-object v0, v0, v6

    .line 489
    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    .line 490
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    .line 492
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen7:I

    add-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 493
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 496
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v6, v6

    div-float/2addr v8, v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float p2, v6, p2

    if-eqz p2, :cond_5

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 499
    iget v7, p3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 502
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 503
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 504
    iget v9, p3, Landroid/graphics/Rect;->left:I

    .line 505
    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int v11, v9, v7

    add-int/2addr v8, v10

    .line 506
    invoke-virtual {v0, v9, v10, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthNums:[Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    add-int/2addr v9, v1

    .line 509
    rem-int/lit8 v9, v9, 0xa

    aget-object v0, v0, v9

    add-int/2addr v7, v11

    .line 511
    invoke-virtual {v0, v11, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v2, :cond_6

    .line 515
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    if-eqz p2, :cond_7

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 519
    iget p2, p3, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v6, p2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_7
    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen6:I

    .line 522
    div-int/2addr p2, v3

    add-int/2addr v10, p2

    .line 523
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 524
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 525
    iget v1, p3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, p2, 0x4

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 526
    div-int/lit16 v4, v4, 0x3e8

    aget-object v3, v3, v4

    add-int v4, v1, p2

    add-int v6, v10, v0

    .line 527
    invoke-virtual {v3, v1, v10, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 530
    rem-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x64

    aget-object v1, v1, v3

    add-int v3, v4, p2

    .line 531
    invoke-virtual {v1, v4, v10, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 534
    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    aget-object v1, v1, v4

    add-int v4, v3, p2

    .line 535
    invoke-virtual {v1, v3, v10, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 536
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 538
    rem-int/lit8 v3, v3, 0xa

    aget-object v1, v1, v3

    add-int/2addr p2, v4

    .line 539
    invoke-virtual {v1, v4, v10, p2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 540
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen5:I

    add-int/2addr v0, p2

    add-int/2addr v10, v0

    .line 543
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 544
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 545
    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    add-int/2addr p2, p3

    add-int/2addr v0, v10

    .line 546
    invoke-virtual {v5, p3, v10, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 547
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v2, :cond_9

    .line 550
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthLabels:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    iget v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    .line 440
    aget-object v0, v0, v4

    .line 441
    aget-object v1, v1, v2

    .line 443
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 444
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iget v6, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen6:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 447
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float p2, v4, p2

    if-eqz p2, :cond_8

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 450
    iget p2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr p2, v5

    int-to-float p2, p2

    iget v5, p3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v4, p2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 454
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 455
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 456
    iget v5, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, p2

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 457
    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    add-int v7, v6, v4

    .line 458
    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen6:I

    add-int/2addr v4, p2

    add-int/2addr v6, v4

    .line 462
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 463
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 464
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    mul-int/lit8 v4, p2, 0x4

    sub-int/2addr p3, v4

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 465
    div-int/lit16 v3, v3, 0x3e8

    aget-object p3, p3, v3

    add-int v3, v1, p2

    add-int/2addr v0, v6

    .line 466
    invoke-virtual {p3, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 469
    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    aget-object p3, p3, v1

    add-int v1, v3, p2

    .line 470
    invoke-virtual {p3, v3, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 473
    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xa

    aget-object p3, p3, v3

    add-int v3, v1, p2

    .line 474
    invoke-virtual {p3, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    .line 477
    rem-int/lit8 v1, v1, 0xa

    aget-object p3, p3, v1

    add-int/2addr p2, v3

    .line 478
    invoke-virtual {p3, v3, v6, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v2, :cond_9

    .line 482
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x69b5837
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getColor(IZZ)I
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    .line 361
    aget-boolean p1, v0, p1

    if-nez p1, :cond_1

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_unfocused:I

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    iget p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    :cond_2
    :goto_1
    return p2
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen1:I

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen5:I

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen6:I

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen7:I

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen8:I

    .line 105
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->initilaizePaints()V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setup(II)V

    return-void
.end method

.method private initilaizeColors()V
    .locals 5

    const-string v0, "type1"

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, -0x333334

    if-eqz v0, :cond_0

    const v0, -0xc4c4c5

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    const v0, -0xababac

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_unfocused:I

    const v0, -0x50506

    iput v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    goto :goto_0

    :cond_0
    const-string v0, "type2"

    iget-object v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, -0x666667

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_unfocused:I

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    goto :goto_0

    :cond_1
    const-string v0, "type3"

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_unfocused:I

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    goto :goto_0

    :cond_2
    const-string v0, "type4"

    iget-object v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    iput v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    iput v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_unfocused:I

    iput v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    :cond_3
    :goto_0
    return-void
.end method

.method private initilaizePaints()V
    .locals 3

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearPaint:Landroid/graphics/Paint;

    .line 119
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearPaint:Landroid/graphics/Paint;

    const v2, -0x5f5f60

    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthPaint:Landroid/graphics/Paint;

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthPaint:Landroid/graphics/Paint;

    .line 124
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthPaint:Landroid/graphics/Paint;

    const v2, -0xa2a2a3

    .line 125
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelPaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelPaint:Landroid/graphics/Paint;

    .line 128
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelPaint:Landroid/graphics/Paint;

    .line 129
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelPaint:Landroid/graphics/Paint;

    const v2, -0xa0a0a1

    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayPaint:Landroid/graphics/Paint;

    .line 133
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    .line 137
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    .line 138
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 139
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setBottomArea(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "type1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3e051eb8    # 0.13f

    const/high16 v4, 0x3f000000    # 0.5f

    if-nez v1, :cond_1

    const-string v1, "type4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x3db851ec    # 0.09f

    if-nez p1, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 421
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    move v1, v2

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e23d70a    # 0.16f

    mul-float/2addr p1, v1

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 410
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_0
    iget v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDimen8:I

    add-int/2addr v2, v3

    .line 426
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, v3, v4, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setDayLables()V
    .locals 6

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    add-int/lit8 v1, v0, 0x7

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x7

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabels:[Ljava/lang/String;

    iget v4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0x14

    .line 179
    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTopArea(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "type4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "type3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "type2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_1

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e75c28f    # 0.24f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 395
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    goto :goto_1

    .line 386
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 388
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ebd70a4    # 0.37f

    goto :goto_1

    .line 380
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    float-to-int v1, p1

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    goto :goto_2

    .line 374
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 376
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e9eb852    # 0.31f

    :goto_1
    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    float-to-int p1, v2

    move v2, p1

    .line 399
    :goto_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-virtual {p2, v3, v4, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x69b5838
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 251
    invoke-direct {p0, p1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    iget-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempRect:Landroid/graphics/Rect;

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setTopArea(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->drawTopArea(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setBottomArea(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->drawBottomArea(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 224
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 226
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 227
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 228
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingLeft()I

    move-result p3

    .line 229
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->getPaddingTop()I

    move-result p4

    const-string p5, "type4"

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 233
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    int-to-float p5, p2

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p5, v0

    .line 234
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    const p5, 0x3f6e147b    # 0.93f

    mul-float/2addr p2, p5

    float-to-int p2, p2

    int-to-float p5, p2

    const v0, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, p5

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p4, v0

    const v0, 0x3eae147b    # 0.34f

    mul-float/2addr p5, v0

    .line 239
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    :goto_0
    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopRect:Landroid/graphics/Rect;

    add-int/2addr p1, p3

    add-int/2addr p5, p4

    .line 242
    invoke-virtual {v0, p3, p4, p1, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCenterRect:Landroid/graphics/Rect;

    .line 244
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomRect:Landroid/graphics/Rect;

    .line 245
    invoke-virtual {p4, p3, p5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundImages(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTopBackground:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mBottomBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(II)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayTextColor_holiday:I

    iput p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayTextColor:I

    return-void
.end method

.method public setHolidays(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mHolidays:Ljava/util/HashMap;

    return-void
.end method

.method public setImages([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthNums:[Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonthLabels:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYearNums:[Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLabelDrawables:[Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLargeLabels:[Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayHolidayDrawable:Landroid/graphics/drawable/Drawable;

    .line 656
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->requestLayout()V

    .line 657
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->invalidate()V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mStyle:Ljava/lang/String;

    .line 677
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->initilaizeColors()V

    return-void
.end method

.method public setToday(J)V
    .locals 1

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    .line 628
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 629
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->invalidate()V

    return-void
.end method

.method public setTodayEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTodayEnabled:Z

    return-void
.end method

.method public setup(II)V
    .locals 7

    iget v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mNumCells:I

    .line 185
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayNumbers:[Ljava/lang/String;

    .line 186
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    iget-object v0, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    iput p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mYear:I

    iput p2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mMonth:I

    .line 194
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iput v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    .line 195
    invoke-direct {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->setDayLables()V

    iget v2, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFirstDayOfWeek:I

    const/4 v3, 0x7

    .line 197
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x5

    .line 198
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mNumCells:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    const/4 v6, 0x2

    .line 201
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, p2, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    aput-boolean v6, v5, v4

    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mFocusDay:[Z

    .line 202
    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    .line 203
    div-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v1

    iput v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayLines:I

    :cond_1
    iget-object v5, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mDayNumbers:[Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 206
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->mCalendar:Ljava/util/Calendar;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->requestLayout()V

    .line 214
    invoke-virtual {p0}, Lcom/prompt/kiosk/slauncher/CalendarMonthView;->invalidate()V

    return-void
.end method
