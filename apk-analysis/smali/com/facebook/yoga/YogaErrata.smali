.class public final enum Lcom/facebook/yoga/YogaErrata;
.super Ljava/lang/Enum;
.source "YogaErrata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/yoga/YogaErrata;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/yoga/YogaErrata;

.field public static final enum ABSOLUTE_PERCENT_AGAINST_INNER_SIZE:Lcom/facebook/yoga/YogaErrata;

.field public static final enum ABSOLUTE_POSITIONING_INCORRECT:Lcom/facebook/yoga/YogaErrata;

.field public static final enum ALL:Lcom/facebook/yoga/YogaErrata;

.field public static final enum CLASSIC:Lcom/facebook/yoga/YogaErrata;

.field public static final enum NONE:Lcom/facebook/yoga/YogaErrata;

.field public static final enum STRETCH_FLEX_BASIS:Lcom/facebook/yoga/YogaErrata;


# instance fields
.field private final mIntValue:I


# direct methods
.method private static synthetic $values()[Lcom/facebook/yoga/YogaErrata;
    .locals 6

    .line 12
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->NONE:Lcom/facebook/yoga/YogaErrata;

    sget-object v1, Lcom/facebook/yoga/YogaErrata;->STRETCH_FLEX_BASIS:Lcom/facebook/yoga/YogaErrata;

    sget-object v2, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_POSITIONING_INCORRECT:Lcom/facebook/yoga/YogaErrata;

    sget-object v3, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_PERCENT_AGAINST_INNER_SIZE:Lcom/facebook/yoga/YogaErrata;

    sget-object v4, Lcom/facebook/yoga/YogaErrata;->ALL:Lcom/facebook/yoga/YogaErrata;

    sget-object v5, Lcom/facebook/yoga/YogaErrata;->CLASSIC:Lcom/facebook/yoga/YogaErrata;

    filled-new-array/range {v0 .. v5}, [Lcom/facebook/yoga/YogaErrata;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->NONE:Lcom/facebook/yoga/YogaErrata;

    .line 14
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const-string v1, "STRETCH_FLEX_BASIS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->STRETCH_FLEX_BASIS:Lcom/facebook/yoga/YogaErrata;

    .line 15
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const-string v1, "ABSOLUTE_POSITIONING_INCORRECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_POSITIONING_INCORRECT:Lcom/facebook/yoga/YogaErrata;

    .line 16
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const-string v1, "ABSOLUTE_PERCENT_AGAINST_INNER_SIZE"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_PERCENT_AGAINST_INNER_SIZE:Lcom/facebook/yoga/YogaErrata;

    .line 17
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const-string v1, "ALL"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->ALL:Lcom/facebook/yoga/YogaErrata;

    .line 18
    new-instance v0, Lcom/facebook/yoga/YogaErrata;

    const/4 v1, 0x5

    const v2, 0x7ffffffe

    const-string v3, "CLASSIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/yoga/YogaErrata;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->CLASSIC:Lcom/facebook/yoga/YogaErrata;

    .line 12
    invoke-static {}, Lcom/facebook/yoga/YogaErrata;->$values()[Lcom/facebook/yoga/YogaErrata;

    move-result-object v0

    sput-object v0, Lcom/facebook/yoga/YogaErrata;->$VALUES:[Lcom/facebook/yoga/YogaErrata;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/facebook/yoga/YogaErrata;->mIntValue:I

    .line 24
    return-void
.end method

.method public static fromInt(I)Lcom/facebook/yoga/YogaErrata;
    .locals 3
    .param p0, "value"    # I

    .line 31
    sparse-switch p0, :sswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :sswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->ALL:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    .line 37
    :sswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->CLASSIC:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    .line 35
    :sswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_PERCENT_AGAINST_INNER_SIZE:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    .line 34
    :sswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->ABSOLUTE_POSITIONING_INCORRECT:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    .line 33
    :sswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->STRETCH_FLEX_BASIS:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    .line 32
    :sswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->NONE:Lcom/facebook/yoga/YogaErrata;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x7ffffffe -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/yoga/YogaErrata;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/facebook/yoga/YogaErrata;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaErrata;

    return-object v0
.end method

.method public static values()[Lcom/facebook/yoga/YogaErrata;
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/yoga/YogaErrata;->$VALUES:[Lcom/facebook/yoga/YogaErrata;

    invoke-virtual {v0}, [Lcom/facebook/yoga/YogaErrata;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/yoga/YogaErrata;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/facebook/yoga/YogaErrata;->mIntValue:I

    return v0
.end method
