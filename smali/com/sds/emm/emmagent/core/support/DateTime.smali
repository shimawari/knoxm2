.class public Lcom/sds/emm/emmagent/core/support/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field private static final FORMAT_LOCAL:Ljava/text/SimpleDateFormat;

.field private static final FORMAT_LOCAL_TIME_ZONE:Ljava/text/SimpleDateFormat;

.field private static final FORMAT_UTC:Ljava/text/SimpleDateFormat;

.field private static final ZONE_UTC:Ljava/lang/String; = "UTC"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_UTC:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "Z"

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_LOCAL_TIME_ZONE:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_LOCAL:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 28
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 36
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->zone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/sds/emm/emmagent/core/support/DateTime;-><init>()V

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 41
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static now()Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 1

    .line 46
    new-instance v0, Lcom/sds/emm/emmagent/core/support/DateTime;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/core/support/DateTime;-><init>()V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lcom/sds/emm/emmagent/core/support/DateTime;->parse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized parse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 3

    const-class v0, Lcom/sds/emm/emmagent/core/support/DateTime;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Lcom/sds/emm/emmagent/core/support/DateTime;

    invoke-direct {v1}, Lcom/sds/emm/emmagent/core/support/DateTime;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 79
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    sget-object p1, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_UTC:Ljava/text/SimpleDateFormat;

    .line 81
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_LOCAL:Ljava/text/SimpleDateFormat;

    .line 83
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    :goto_0
    iget-object p1, v1, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 85
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    :try_start_2
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/log/ExceptionLog;->unexpected(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDayOfWeek()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHourOfDay()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMillis()J
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 54
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillisOfSecond()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isAfter(Lcom/sds/emm/emmagent/core/support/DateTime;)Z
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 196
    iget-object p1, p1, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAfterNow()Z
    .locals 1

    .line 188
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/DateTime;->now()Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/support/DateTime;->isAfter(Lcom/sds/emm/emmagent/core/support/DateTime;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lcom/sds/emm/emmagent/core/support/DateTime;)Z
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 200
    iget-object p1, p1, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isBeforeNow()Z
    .locals 1

    .line 192
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/DateTime;->now()Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/support/DateTime;->isBefore(Lcom/sds/emm/emmagent/core/support/DateTime;)Z

    move-result v0

    return v0
.end method

.method public minusDays(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 0

    neg-int p1, p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/support/DateTime;->plusDays(I)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 0

    neg-int p1, p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/sds/emm/emmagent/core/support/DateTime;->plusHours(I)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 168
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public plusHours(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    .line 159
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public plusMillis(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    .line 183
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public plusMinutes(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    .line 178
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public plusSeconds(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    .line 173
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public toDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 67
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Ljava/util/TimeZone;)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    .line 58
    new-instance v0, Lcom/sds/emm/emmagent/core/support/DateTime;

    invoke-direct {v0}, Lcom/sds/emm/emmagent/core/support/DateTime;-><init>()V

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    iput-object v1, v0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    iput-object p1, v0, Lcom/sds/emm/emmagent/core/support/DateTime;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "UTC"

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->zone:Ljava/util/TimeZone;

    .line 97
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_UTC:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 98
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_LOCAL_TIME_ZONE:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    .line 100
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sds/emm/emmagent/core/support/DateTime;->FORMAT_LOCAL:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public withHourOfDay(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    .line 119
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public withMillisOfSecond(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    .line 134
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public withMinuteOfHour(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    .line 124
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public withSecondOfMinute(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    .line 129
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public withYear(I)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    iget-object v0, p0, Lcom/sds/emm/emmagent/core/support/DateTime;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method
