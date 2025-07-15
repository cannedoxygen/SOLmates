.class public Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;
.super Ljava/lang/Object;
.source "PlatformDateTimeFormatterAndroid.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid$PatternUtils;
    }
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    .line 228
    return-void
.end method


# virtual methods
.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;Ljava/lang/Object;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;Ljava/lang/Object;)V
    .locals 6
    .param p2, "calendar"    # Ljava/lang/String;
    .param p3, "numberingSystem"    # Ljava/lang/String;
    .param p4, "formatMatcher"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;
    .param p5, "weekDay"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;
    .param p6, "era"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;
    .param p7, "year"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;
    .param p8, "month"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;
    .param p9, "day"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;
    .param p10, "hour"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;
    .param p11, "minute"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;
    .param p12, "second"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;
    .param p13, "timeZoneName"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;
    .param p14, "hourCycle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    .param p15, "timeZone"    # Ljava/lang/Object;
    .param p16, "dateStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;
    .param p17, "timeStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .param p18, "hour12"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;",
            "Ljava/lang/Object;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 174
    .local p1, "resolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "calendarList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v3, "ca"

    invoke-interface {p1, v3, v2}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    .end local v2    # "calendarList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-string/jumbo v3, "nu"

    invoke-interface {p1, v3, v2}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    .end local v2    # "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p7, :cond_3

    if-nez p8, :cond_3

    if-eqz p9, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v2

    .line 190
    .local v4, "needDate":Z
    :goto_1
    if-nez p10, :cond_5

    if-nez p11, :cond_5

    if-eqz p12, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 192
    .local v2, "needTime":Z
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 193
    nop

    .line 195
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 194
    invoke-static {v3, v3, v5}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    goto :goto_3

    .line 196
    :cond_6
    if-eqz v4, :cond_7

    .line 197
    nop

    .line 198
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-static {v3, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    goto :goto_3

    .line 199
    :cond_7
    if-eqz v2, :cond_8

    .line 200
    nop

    .line 201
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-static {v3, v5}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    .line 203
    :cond_8
    :goto_3
    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 204
    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 205
    .local v3, "timeZoneObject":Ljava/util/TimeZone;
    iget-object v5, v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 207
    .end local v3    # "timeZoneObject":Ljava/util/TimeZone;
    :cond_9
    return-void
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_0

    .line 30
    const-string/jumbo v0, "weekday"

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_1

    .line 33
    const-string v0, "era"

    return-object v0

    .line 35
    :cond_1
    sget-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_2

    .line 40
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 41
    const-string/jumbo v0, "year"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "yearName"

    return-object v1

    .line 46
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_3

    .line 47
    const-string v0, "month"

    return-object v0

    .line 49
    :cond_3
    sget-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_4

    .line 50
    const-string v0, "day"

    return-object v0

    .line 52
    :cond_4
    sget-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const-string v1, "hour"

    if-ne p1, v0, :cond_5

    .line 53
    return-object v1

    .line 55
    :cond_5
    sget-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_6

    .line 56
    return-object v1

    .line 58
    :cond_6
    sget-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_7

    .line 59
    return-object v1

    .line 61
    :cond_7
    sget-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_8

    .line 62
    return-object v1

    .line 64
    :cond_8
    sget-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_9

    .line 65
    const-string v0, "minute"

    return-object v0

    .line 67
    :cond_9
    sget-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_a

    .line 68
    const-string/jumbo v0, "second"

    return-object v0

    .line 70
    :cond_a
    sget-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_b

    .line 71
    const-string/jumbo v0, "timeZoneName"

    return-object v0

    .line 73
    :cond_b
    sget-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    if-ne p1, v0, :cond_c

    .line 74
    const-string v0, "dayPeriod"

    return-object v0

    .line 77
    :cond_c
    invoke-virtual {p1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.icu.text.DateFormat$Field(related year)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 78
    const-string/jumbo v0, "relatedYear"

    return-object v0

    .line 80
    :cond_d
    const-string v0, "literal"

    return-object v0
.end method

.method public format(D)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # D

    .line 24
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    double-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "n"    # D

    .line 85
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 212
    nop

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 220
    .local v1, "availableLocales":[Ljava/util/Locale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 221
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v4    # "locale":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 225
    .local v2, "availableLocaleIdsArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getDefaultCalendarName(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 91
    .local p1, "mResolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    nop

    .line 92
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 91
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public getDefaultHourCycle(Lcom/facebook/hermes/intl/ILocaleObject;)Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 124
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    nop

    .line 126
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 127
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "dateFormatPattern":Ljava/lang/String;
    nop

    .line 129
    invoke-static {v0}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterAndroid$PatternUtils;->getPatternWithoutLiterals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "dateFormatPatternWithoutLiterals":Ljava/lang/String;
    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H12:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .local v2, "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    goto :goto_0

    .line 131
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_0
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H11:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    goto :goto_0

    .line 133
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_1
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H23:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    goto :goto_0

    .line 136
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_2
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "dateFormatPattern":Ljava/lang/String;
    .end local v1    # "dateFormatPatternWithoutLiterals":Ljava/lang/String;
    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :goto_0
    goto :goto_1

    .line 137
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .line 141
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :goto_1
    return-object v2
.end method

.method public getDefaultNumberingSystem(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    const-string v0, "latn"

    return-object v0
.end method

.method public getDefaultTimeZone(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 146
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
