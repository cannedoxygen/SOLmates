.class Lcom/horcrux/svg/SVGLength;
.super Ljava/lang/Object;
.source "SVGLength.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/SVGLength$UnitType;
    }
.end annotation


# instance fields
.field final unit:Lcom/horcrux/svg/SVGLength$UnitType;

.field final value:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/horcrux/svg/SVGLength;->value:D

    .line 28
    sget-object v0, Lcom/horcrux/svg/SVGLength$UnitType;->UNKNOWN:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v0, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 29
    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "number"    # D

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/horcrux/svg/SVGLength;->value:D

    .line 33
    sget-object v0, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v0, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "length"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, "stringLength":I
    add-int/lit8 v1, v0, -0x1

    .line 40
    .local v1, "percentIndex":I
    if-eqz v0, :cond_4

    const-string v2, "normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 43
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const/16 v3, 0x25

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 44
    sget-object v2, Lcom/horcrux/svg/SVGLength$UnitType;->PERCENTAGE:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v2, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 45
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/horcrux/svg/SVGLength;->value:D

    goto/16 :goto_4

    .line 47
    :cond_1
    add-int/lit8 v2, v0, -0x2

    .line 48
    .local v2, "twoLetterUnitIndex":I
    if-lez v2, :cond_3

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "lastTwo":Ljava/lang/String;
    move v5, v2

    .line 51
    .local v5, "end":I
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "pt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_2
    const-string v6, "pc"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string v6, "mm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v6, "in"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_5
    const-string v6, "ex"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_6
    const-string v6, "em"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_7
    const-string v6, "cm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 84
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 85
    move v5, v0

    goto :goto_2

    .line 80
    :pswitch_0
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->IN:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 81
    goto :goto_2

    .line 76
    :pswitch_1
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->CM:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 77
    goto :goto_2

    .line 72
    :pswitch_2
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->MM:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 73
    goto :goto_2

    .line 68
    :pswitch_3
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->PC:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 69
    goto :goto_2

    .line 64
    :pswitch_4
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->PT:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 65
    goto :goto_2

    .line 60
    :pswitch_5
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->EXS:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 61
    goto :goto_2

    .line 57
    :pswitch_6
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->EMS:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 58
    goto :goto_2

    .line 53
    :pswitch_7
    sget-object v6, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v6, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 54
    nop

    .line 87
    :goto_2
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/horcrux/svg/SVGLength;->value:D

    .line 88
    .end local v3    # "lastTwo":Ljava/lang/String;
    .end local v5    # "end":I
    goto :goto_4

    .line 89
    :cond_3
    sget-object v3, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v3, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 90
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/horcrux/svg/SVGLength;->value:D

    goto :goto_4

    .line 41
    .end local v2    # "twoLetterUnitIndex":I
    :cond_4
    :goto_3
    sget-object v2, Lcom/horcrux/svg/SVGLength$UnitType;->UNKNOWN:Lcom/horcrux/svg/SVGLength$UnitType;

    iput-object v2, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/horcrux/svg/SVGLength;->value:D

    .line 93
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc6a -> :sswitch_7
        0xca8 -> :sswitch_6
        0xcb3 -> :sswitch_5
        0xd25 -> :sswitch_4
        0xda0 -> :sswitch_3
        0xdf3 -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method static arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "dynamic"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/horcrux/svg/SVGLength$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 136
    .local v0, "arr":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    .line 137
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v4

    .line 140
    .local v4, "val":Lcom/facebook/react/bridge/Dynamic;
    invoke-static {v4}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v4    # "val":Lcom/facebook/react/bridge/Dynamic;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 146
    .end local v0    # "arr":Lcom/facebook/react/bridge/ReadableArray;
    .end local v1    # "size":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    :pswitch_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "strings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 151
    .local v5, "length":Ljava/lang/String;
    new-instance v6, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v6, v5}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "length":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_1
    return-object v2

    .line 129
    .end local v0    # "stringValue":Ljava/lang/String;
    .end local v1    # "strings":[Ljava/lang/String;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    new-instance v1, Lcom/horcrux/svg/SVGLength;

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static arrayFrom(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 162
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 164
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v3

    .line 165
    .local v3, "val":Lcom/facebook/react/bridge/Dynamic;
    invoke-static {v3}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "val":Lcom/facebook/react/bridge/Dynamic;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;
    .locals 3
    .param p0, "dynamic"    # Lcom/facebook/react/bridge/Dynamic;

    .line 96
    sget-object v0, Lcom/horcrux/svg/SVGLength$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v0}, Lcom/horcrux/svg/SVGLength;-><init>()V

    return-object v0

    .line 100
    :pswitch_0
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 98
    :pswitch_1
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static from(Ljava/lang/Double;)Lcom/horcrux/svg/SVGLength;
    .locals 3
    .param p0, "value"    # Ljava/lang/Double;

    .line 111
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/horcrux/svg/SVGLength;-><init>()V

    :goto_0
    return-object v0
.end method

.method static from(Ljava/lang/String;)Lcom/horcrux/svg/SVGLength;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/horcrux/svg/SVGLength;-><init>()V

    :goto_0
    return-object v0
.end method

.method static toString(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;
    .locals 2
    .param p0, "dynamic"    # Lcom/facebook/react/bridge/Dynamic;

    .line 115
    sget-object v0, Lcom/horcrux/svg/SVGLength$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
