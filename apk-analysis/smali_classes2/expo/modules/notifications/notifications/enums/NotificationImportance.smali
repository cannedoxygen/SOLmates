.class public final enum Lexpo/modules/notifications/notifications/enums/NotificationImportance;
.super Ljava/lang/Enum;
.source "NotificationImportance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/notifications/notifications/enums/NotificationImportance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum HIGH:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum LOW:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum MAX:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum MIN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum NONE:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

.field public static final enum UNSPECIFIED:Lexpo/modules/notifications/notifications/enums/NotificationImportance;


# instance fields
.field private final mEnumValue:I

.field private final mNativeImportance:I


# direct methods
.method private static synthetic $values()[Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    .locals 8

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNSPECIFIED:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v1, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->NONE:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v2, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->MIN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v3, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->LOW:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v4, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v5, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->HIGH:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v6, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->MAX:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    sget-object v7, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    filled-new-array/range {v0 .. v7}, [Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    const/16 v3, -0x3e8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNSPECIFIED:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 7
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "NONE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->NONE:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 8
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "MIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v4, v5}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->MIN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 9
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "LOW"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v5, v3, v4}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->LOW:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 10
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "DEFAULT"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v5, v3}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 11
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "HIGH"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v3, v4, v6}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->HIGH:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 12
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "MAX"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v6, v3, v4}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->MAX:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 13
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v5, v2}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 5
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->$values()[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "nativeImportance"    # I
    .param p4, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->mNativeImportance:I

    .line 20
    iput p4, p0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->mEnumValue:I

    .line 21
    return-void
.end method

.method public static fromEnumValue(I)Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    .locals 5
    .param p0, "value"    # I

    .line 32
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->values()[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    .local v3, "importance":Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getEnumValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 34
    return-object v3

    .line 32
    .end local v3    # "importance":Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    return-object v0
.end method

.method public static fromNativeValue(I)Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    .locals 5
    .param p0, "value"    # I

    .line 41
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->values()[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    .local v3, "importance":Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getNativeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 43
    return-object v3

    .line 41
    .end local v3    # "importance":Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    return-object v0
.end method

.method public static values()[Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    .locals 1

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    invoke-virtual {v0}, [Lexpo/modules/notifications/notifications/enums/NotificationImportance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    return-object v0
.end method


# virtual methods
.method public getEnumValue()I
    .locals 1

    .line 28
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->mEnumValue:I

    return v0
.end method

.method public getNativeValue()I
    .locals 1

    .line 24
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->mNativeImportance:I

    return v0
.end method
