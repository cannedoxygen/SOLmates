.class public Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;
.super Ljava/lang/Object;
.source "PlatformDateTimeFormatterICU.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU$PatternUtils;
    }
.end annotation


# instance fields
.field private mDateFormat:Landroid/icu/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 423
    return-void
.end method

.method private static getPatternForStyle(Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;)Ljava/lang/String;
    .locals 3
    .param p1, "dateStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;
    .param p2, "timeStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 215
    .local p0, "resolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    if-ne p1, v0, :cond_0

    .line 216
    nop

    .line 218
    invoke-static {p2}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->toICUTimeStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;)I

    move-result v0

    invoke-interface {p0}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 217
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 219
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0

    .line 220
    :cond_0
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    if-ne p2, v0, :cond_1

    .line 221
    nop

    .line 223
    invoke-static {p1}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->toICUDateStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;)I

    move-result v0

    invoke-interface {p0}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 222
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 224
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0

    .line 226
    :cond_1
    nop

    .line 228
    invoke-static {p1}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->toICUDateStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;)I

    move-result v0

    .line 229
    invoke-static {p2}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->toICUTimeStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;)I

    move-result v1

    .line 230
    invoke-interface {p0}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 227
    invoke-static {v0, v1, v2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 231
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method private static getSkeleton(Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p1, "weekDay"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;
    .param p2, "era"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;
    .param p3, "year"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;
    .param p4, "month"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;
    .param p5, "day"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;
    .param p6, "hour"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;
    .param p7, "minute"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;
    .param p8, "second"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;
    .param p9, "timeZoneName"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;
    .param p10, "hourCycle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    .param p11, "dateStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;
    .param p12, "timeStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .param p13, "hour12"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
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
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;",
            "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 264
    .local p0, "resolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v3, "skeletonBuffer":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    if-ne v1, v4, :cond_3

    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    if-eq v2, v4, :cond_0

    goto :goto_2

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p3}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p4}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H11:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H12:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->getSkeleonSymbol24()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->getSkeleonSymbol12()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_1
    invoke-virtual/range {p7 .. p7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual/range {p8 .. p8}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual/range {p9 .. p9}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->getSkeleonSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p0

    goto/16 :goto_8

    .line 270
    :cond_3
    :goto_2
    move-object v4, p0

    invoke-static {p0, v1, v2}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->getPatternForStyle(Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {p0}, Lcom/facebook/hermes/intl/ILocaleObject;->getUnicodeExtensions()Ljava/util/HashMap;

    move-result-object v5

    .line 274
    .local v5, "exts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "hc"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x68

    const/4 v9, 0x3

    const/16 v10, 0x6b

    if-eqz v7, :cond_7

    .line 275
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 276
    .local v6, "hourCycleExt":Ljava/lang/String;
    const-string v7, "h11"

    if-eq v6, v7, :cond_6

    const-string v7, "h12"

    if-ne v6, v7, :cond_4

    goto :goto_3

    .line 278
    :cond_4
    const-string v7, "h23"

    if-eq v6, v7, :cond_5

    const-string v7, "h24"

    if-ne v6, v7, :cond_7

    .line 279
    :cond_5
    new-array v7, v9, [C

    fill-array-data v7, :array_0

    invoke-static {v3, v7, v10}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    goto :goto_4

    .line 277
    :cond_6
    :goto_3
    new-array v7, v9, [C

    fill-array-data v7, :array_1

    invoke-static {v3, v7, v8}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    .line 283
    .end local v6    # "hourCycleExt":Ljava/lang/String;
    :cond_7
    :goto_4
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H11:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-eq v0, v6, :cond_a

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H12:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-ne v0, v6, :cond_8

    goto :goto_5

    .line 285
    :cond_8
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H23:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-eq v0, v6, :cond_9

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    if-ne v0, v6, :cond_b

    .line 286
    :cond_9
    new-array v6, v9, [C

    fill-array-data v6, :array_2

    invoke-static {v3, v6, v10}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    goto :goto_6

    .line 284
    :cond_a
    :goto_5
    new-array v6, v9, [C

    fill-array-data v6, :array_3

    invoke-static {v3, v6, v8}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    .line 289
    :cond_b
    :goto_6
    invoke-static/range {p13 .. p13}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static/range {p13 .. p13}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 290
    invoke-static/range {p13 .. p13}, Lcom/facebook/hermes/intl/JSObjects;->getJavaBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 291
    new-array v6, v9, [C

    fill-array-data v6, :array_4

    invoke-static {v3, v6, v8}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    goto :goto_7

    .line 293
    :cond_c
    new-array v6, v9, [C

    fill-array-data v6, :array_5

    invoke-static {v3, v6, v10}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->replacePatternChars(Ljava/lang/StringBuilder;[CC)V

    .line 296
    .end local v5    # "exts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    :goto_7
    nop

    .line 312
    :goto_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :array_0
    .array-data 2
        0x68s
        0x48s
        0x4bs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x48s
        0x4bs
        0x6bs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x68s
        0x48s
        0x4bs
    .end array-data

    nop

    :array_3
    .array-data 2
        0x48s
        0x4bs
        0x6bs
    .end array-data

    nop

    :array_4
    .array-data 2
        0x48s
        0x4bs
        0x6bs
    .end array-data

    nop

    :array_5
    .array-data 2
        0x68s
        0x48s
        0x4bs
    .end array-data
.end method

.method private static replaceChars(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    return-void
.end method

.method private static replacePatternChars(Ljava/lang/StringBuilder;[CC)V
    .locals 5
    .param p0, "skeletonBuffer"    # Ljava/lang/StringBuilder;
    .param p1, "fromSet"    # [C
    .param p2, "to"    # C

    .line 236
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 237
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    .line 238
    .local v3, "fromChar":C
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_0

    .line 239
    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 240
    goto :goto_2

    .line 237
    .end local v3    # "fromChar":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "idx":I
    :cond_2
    return-void
.end method

.method static toICUDateStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;)I
    .locals 3
    .param p0, "dateStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DateStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 178
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 176
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 174
    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toICUTimeStyle(Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;)I
    .locals 3
    .param p0, "timeStyle"    # Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DateStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 195
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 193
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 191
    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;Ljava/lang/Object;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;Ljava/lang/Object;)V
    .locals 18
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

    .line 336
    .local p1, "resolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "Invalid numbering system: "

    .line 337
    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    invoke-static/range {v4 .. v17}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->getSkeleton(Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "skeleton":Ljava/lang/String;
    const/4 v0, 0x0

    .line 354
    .local v0, "calendarInstance":Landroid/icu/util/Calendar;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 355
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v5, "calendarList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface/range {p1 .. p1}, Lcom/facebook/hermes/intl/ILocaleObject;->cloneObject()Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v6

    .line 359
    .local v6, "modifiedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    const-string v7, "ca"

    invoke-interface {v6, v7, v5}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    invoke-interface {v6}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/ULocale;

    invoke-static {v7}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 354
    .end local v5    # "calendarList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "modifiedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    :cond_0
    move-object v5, v0

    .line 364
    .end local v0    # "calendarInstance":Landroid/icu/util/Calendar;
    .local v5, "calendarInstance":Landroid/icu/util/Calendar;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    nop

    .line 368
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .local v0, "numberingSystemObject":Landroid/icu/text/NumberingSystem;
    nop

    .line 373
    if-eqz v0, :cond_1

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v3, "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const-string/jumbo v6, "nu"

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v3}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 374
    .end local v3    # "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v7, p1

    new-instance v6, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    .end local v0    # "numberingSystemObject":Landroid/icu/text/NumberingSystem;
    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    .line 370
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 364
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v7, p1

    .line 383
    :goto_1
    if-eqz v5, :cond_3

    .line 384
    nop

    .line 386
    invoke-interface/range {p1 .. p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    .line 385
    invoke-static {v5, v4, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    goto :goto_2

    .line 388
    :cond_3
    nop

    .line 389
    invoke-interface/range {p1 .. p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v4, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 391
    :goto_2
    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 392
    invoke-static/range {p15 .. p15}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 393
    .local v0, "timeZoneObject":Landroid/icu/util/TimeZone;
    iget-object v3, v1, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v3, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 395
    .end local v0    # "timeZoneObject":Landroid/icu/util/TimeZone;
    :cond_4
    return-void
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .line 37
    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_0

    .line 38
    const-string/jumbo v0, "weekday"

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_1

    .line 41
    const-string v0, "era"

    return-object v0

    .line 43
    :cond_1
    sget-object v0, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_2

    .line 48
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 49
    const-string/jumbo v0, "year"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "yearName"

    return-object v1

    .line 54
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v0, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_3

    .line 55
    const-string v0, "month"

    return-object v0

    .line 57
    :cond_3
    sget-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_4

    .line 58
    const-string v0, "day"

    return-object v0

    .line 60
    :cond_4
    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour"

    if-ne p1, v0, :cond_5

    .line 61
    return-object v1

    .line 63
    :cond_5
    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_6

    .line 64
    return-object v1

    .line 66
    :cond_6
    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_7

    .line 67
    return-object v1

    .line 69
    :cond_7
    sget-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_8

    .line 70
    return-object v1

    .line 72
    :cond_8
    sget-object v0, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_9

    .line 73
    const-string v0, "minute"

    return-object v0

    .line 75
    :cond_9
    sget-object v0, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_a

    .line 76
    const-string/jumbo v0, "second"

    return-object v0

    .line 78
    :cond_a
    sget-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_b

    .line 79
    const-string/jumbo v0, "timeZoneName"

    return-object v0

    .line 81
    :cond_b
    sget-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    if-ne p1, v0, :cond_c

    .line 82
    const-string v0, "dayPeriod"

    return-object v0

    .line 85
    :cond_c
    invoke-virtual {p1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.icu.text.DateFormat$Field(related year)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    const-string/jumbo v0, "relatedYear"

    return-object v0

    .line 89
    :cond_d
    const-string v0, "literal"

    return-object v0
.end method

.method public format(D)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # D

    .line 31
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    double-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "n"    # D

    .line 94
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 415
    .local v1, "availableLocales":[Landroid/icu/util/ULocale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 416
    .local v4, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v4    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 420
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

    .line 101
    .local p1, "mResolvedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    nop

    .line 102
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/icu/text/DateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "defaultCalendar":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveCalendarAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
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

    .line 137
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    nop

    .line 139
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 140
    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "dateFormatPattern":Ljava/lang/String;
    nop

    .line 142
    invoke-static {v0}, Lcom/facebook/hermes/intl/PlatformDateTimeFormatterICU$PatternUtils;->getPatternWithoutLiterals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
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

    .line 144
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_0
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H11:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    goto :goto_0

    .line 146
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_1
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H23:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    goto :goto_0

    .line 149
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :cond_2
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "dateFormatPattern":Ljava/lang/String;
    .end local v1    # "dateFormatPatternWithoutLiterals":Ljava/lang/String;
    .restart local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :goto_0
    goto :goto_1

    .line 150
    .end local v2    # "hourCycle":Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    .line 154
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 167
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 160
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
