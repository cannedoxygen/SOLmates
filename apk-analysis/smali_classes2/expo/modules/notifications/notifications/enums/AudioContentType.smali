.class public final enum Lexpo/modules/notifications/notifications/enums/AudioContentType;
.super Ljava/lang/Enum;
.source "AudioContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/notifications/notifications/enums/AudioContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexpo/modules/notifications/notifications/enums/AudioContentType;

.field public static final enum MOVIE:Lexpo/modules/notifications/notifications/enums/AudioContentType;

.field public static final enum MUSIC:Lexpo/modules/notifications/notifications/enums/AudioContentType;

.field public static final enum SONIFICIATION:Lexpo/modules/notifications/notifications/enums/AudioContentType;

.field public static final enum SPEECH:Lexpo/modules/notifications/notifications/enums/AudioContentType;

.field public static final enum UNKNOWN:Lexpo/modules/notifications/notifications/enums/AudioContentType;


# instance fields
.field private final mEnumValue:I

.field private final mNativeVisibility:I


# direct methods
.method private static synthetic $values()[Lexpo/modules/notifications/notifications/enums/AudioContentType;
    .locals 5

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    sget-object v1, Lexpo/modules/notifications/notifications/enums/AudioContentType;->SPEECH:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    sget-object v2, Lexpo/modules/notifications/notifications/enums/AudioContentType;->MUSIC:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    sget-object v3, Lexpo/modules/notifications/notifications/enums/AudioContentType;->MOVIE:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    sget-object v4, Lexpo/modules/notifications/notifications/enums/AudioContentType;->SONIFICIATION:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/notifications/notifications/enums/AudioContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lexpo/modules/notifications/notifications/enums/AudioContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    .line 7
    new-instance v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    const-string v1, "SPEECH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lexpo/modules/notifications/notifications/enums/AudioContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->SPEECH:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    .line 8
    new-instance v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    const-string v1, "MUSIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v2}, Lexpo/modules/notifications/notifications/enums/AudioContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->MUSIC:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    .line 9
    new-instance v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    const-string v1, "MOVIE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2, v2}, Lexpo/modules/notifications/notifications/enums/AudioContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->MOVIE:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    .line 10
    new-instance v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    const-string v1, "SONIFICIATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v2}, Lexpo/modules/notifications/notifications/enums/AudioContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->SONIFICIATION:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    .line 5
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/AudioContentType;->$values()[Lexpo/modules/notifications/notifications/enums/AudioContentType;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->$VALUES:[Lexpo/modules/notifications/notifications/enums/AudioContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "nativeVisibility"    # I
    .param p4, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->mNativeVisibility:I

    .line 17
    iput p4, p0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->mEnumValue:I

    .line 18
    return-void
.end method

.method public static fromEnumValue(I)Lexpo/modules/notifications/notifications/enums/AudioContentType;
    .locals 5
    .param p0, "value"    # I

    .line 29
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/AudioContentType;->values()[Lexpo/modules/notifications/notifications/enums/AudioContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 30
    .local v3, "visibility":Lexpo/modules/notifications/notifications/enums/AudioContentType;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/AudioContentType;->getEnumValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 31
    return-object v3

    .line 29
    .end local v3    # "visibility":Lexpo/modules/notifications/notifications/enums/AudioContentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    return-object v0
.end method

.method public static fromNativeValue(I)Lexpo/modules/notifications/notifications/enums/AudioContentType;
    .locals 5
    .param p0, "value"    # I

    .line 38
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/AudioContentType;->values()[Lexpo/modules/notifications/notifications/enums/AudioContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    .local v3, "visibility":Lexpo/modules/notifications/notifications/enums/AudioContentType;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/AudioContentType;->getEnumValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 40
    return-object v3

    .line 38
    .end local v3    # "visibility":Lexpo/modules/notifications/notifications/enums/AudioContentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/AudioContentType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/AudioContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;

    return-object v0
.end method

.method public static values()[Lexpo/modules/notifications/notifications/enums/AudioContentType;
    .locals 1

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->$VALUES:[Lexpo/modules/notifications/notifications/enums/AudioContentType;

    invoke-virtual {v0}, [Lexpo/modules/notifications/notifications/enums/AudioContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/notifications/notifications/enums/AudioContentType;

    return-object v0
.end method


# virtual methods
.method public getEnumValue()I
    .locals 1

    .line 25
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->mEnumValue:I

    return v0
.end method

.method public getNativeValue()I
    .locals 1

    .line 21
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/AudioContentType;->mNativeVisibility:I

    return v0
.end method
