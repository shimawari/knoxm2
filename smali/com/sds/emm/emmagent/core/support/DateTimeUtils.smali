.class public Lcom/sds/emm/emmagent/core/support/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentUTC()Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 2

    .line 32
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/DateTime;->now()Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/DateTime;->toDateTime(Ljava/util/TimeZone;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentUTCString()Ljava/lang/String;
    .locals 2

    .line 14
    invoke-static {}, Lcom/sds/emm/emmagent/core/support/DateTime;->now()Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sds/emm/emmagent/core/support/DateTime;->toDateTime(Ljava/util/TimeZone;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sds/emm/emmagent/core/support/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static daysBetween(Lcom/sds/emm/emmagent/core/support/DateTime;Lcom/sds/emm/emmagent/core/support/DateTime;)J
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/sds/emm/emmagent/core/support/DateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const-wide/16 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/sds/emm/emmagent/core/support/DateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 44
    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static parseUTC(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/DateTime;
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/sds/emm/emmagent/core/support/DateTime;->parse(Ljava/lang/String;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p0

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sds/emm/emmagent/core/support/DateTime;->toDateTime(Ljava/util/TimeZone;)Lcom/sds/emm/emmagent/core/support/DateTime;

    move-result-object p0

    return-object p0
.end method
