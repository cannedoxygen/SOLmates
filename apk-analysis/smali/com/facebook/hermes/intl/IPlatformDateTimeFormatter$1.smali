.class synthetic Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;
.super Ljava/lang/Object;
.source "IPlatformDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Day:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$FormatMatcher:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Hour:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Minute:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Second:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

.field static final synthetic $SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Year:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 446
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->FULL:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v3}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->MEDIUM:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v4}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v5}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    .line 420
    :goto_4
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    :try_start_5
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->FULL:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    :goto_5
    :try_start_6
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    :try_start_7
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->MEDIUM:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v5

    :goto_7
    :try_start_8
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v5

    :goto_8
    :try_start_9
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$DateStyle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$DateStyle;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v5

    .line 369
    :goto_9
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    :try_start_a
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v5

    :goto_a
    :try_start_b
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->LONGOFFSET:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v5

    :goto_b
    :try_start_c
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->LONGGENERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v5

    :goto_c
    :try_start_d
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v5

    :goto_d
    :try_start_e
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->SHORTOFFSET:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v5

    :goto_e
    const/4 v5, 0x6

    :try_start_f
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->SHORTGENERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v6

    :goto_f
    :try_start_10
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeZoneName:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeZoneName;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v6

    .line 332
    :goto_10
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Second:[I

    :try_start_11
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Second:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v6

    :goto_11
    :try_start_12
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Second:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v6

    :goto_12
    :try_start_13
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Second:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Second;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v6

    .line 299
    :goto_13
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Minute:[I

    :try_start_14
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Minute:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v6

    :goto_14
    :try_start_15
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Minute:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v6

    :goto_15
    :try_start_16
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Minute:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Minute;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v6

    .line 253
    :goto_16
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Hour:[I

    :try_start_17
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Hour:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v6

    :goto_17
    :try_start_18
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Hour:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v6

    :goto_18
    :try_start_19
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Hour:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Hour;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v6

    .line 220
    :goto_19
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Day:[I

    :try_start_1a
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Day:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v6

    :goto_1a
    :try_start_1b
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Day:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v6

    :goto_1b
    :try_start_1c
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Day:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Day;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v6

    .line 175
    :goto_1c
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    :try_start_1d
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v6

    :goto_1d
    :try_start_1e
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v6

    :goto_1e
    :try_start_1f
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v6

    :goto_1f
    :try_start_20
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v6

    :goto_20
    :try_start_21
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->NARROW:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v6

    :goto_21
    :try_start_22
    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Month:[I

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;

    invoke-virtual {v7}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Month;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v5

    .line 139
    :goto_22
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Year:[I

    :try_start_23
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Year:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->NUMERIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v5

    :goto_23
    :try_start_24
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Year:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->DIGIT2:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v5

    :goto_24
    :try_start_25
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Year:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Year;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v5

    .line 102
    :goto_25
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

    :try_start_26
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v5

    :goto_26
    :try_start_27
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v5

    :goto_27
    :try_start_28
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->NARROW:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v5

    :goto_28
    :try_start_29
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$Era:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$Era;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v5

    .line 64
    :goto_29
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

    :try_start_2a
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v5

    :goto_2a
    :try_start_2b
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v5

    :goto_2b
    :try_start_2c
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->NARROW:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v5

    :goto_2c
    :try_start_2d
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$WeekDay:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$WeekDay;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v5

    .line 39
    :goto_2d
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    :try_start_2e
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H11:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v5

    :goto_2e
    :try_start_2f
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H12:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v5

    :goto_2f
    :try_start_30
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H23:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    invoke-virtual {v6}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v2

    :goto_30
    :try_start_31
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    sget-object v5, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->H24:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    invoke-virtual {v5}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->ordinal()I

    move-result v5

    aput v3, v2, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v2

    :goto_31
    :try_start_32
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$HourCycle:[I

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;

    invoke-virtual {v3}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$HourCycle;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v2

    .line 19
    :goto_32
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;->values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$FormatMatcher:[I

    :try_start_33
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$FormatMatcher:[I

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;->BESTFIT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;

    invoke-virtual {v3}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v0

    :goto_33
    :try_start_34
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$FormatMatcher:[I

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;->BASIC:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;

    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$FormatMatcher;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v0

    :goto_34
    return-void
.end method
