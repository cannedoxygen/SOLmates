.class public final enum Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
.super Ljava/lang/Enum;
.source "NotificationVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/notifications/notifications/enums/NotificationVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

.field public static final enum PRIVATE:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

.field public static final enum PUBLIC:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

.field public static final enum SECRET:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

.field public static final enum UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;


# instance fields
.field private final mEnumValue:I

.field private final mNativeVisibility:I


# direct methods
.method private static synthetic $values()[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    .locals 4

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->PUBLIC:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    sget-object v1, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->PRIVATE:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    sget-object v2, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->SECRET:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    sget-object v3, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->PUBLIC:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    .line 7
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    const-string v1, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->PRIVATE:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    .line 8
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    const-string v1, "SECRET"

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-direct {v0, v1, v4, v5, v6}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->SECRET:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    .line 9
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v3, v2}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    .line 5
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->$values()[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->mNativeVisibility:I

    .line 16
    iput p4, p0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->mEnumValue:I

    .line 17
    return-void
.end method

.method public static fromEnumValue(I)Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    .locals 5
    .param p0, "value"    # I

    .line 28
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->values()[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    .local v3, "visibility":Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->getEnumValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 30
    return-object v3

    .line 28
    .end local v3    # "visibility":Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    return-object v0
.end method

.method public static fromNativeValue(I)Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    .locals 5
    .param p0, "value"    # I

    .line 37
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->values()[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    .local v3, "visibility":Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->getNativeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 39
    return-object v3

    .line 37
    .end local v3    # "visibility":Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->UNKNOWN:Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    return-object v0
.end method

.method public static values()[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;
    .locals 1

    .line 5
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    invoke-virtual {v0}, [Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/notifications/notifications/enums/NotificationVisibility;

    return-object v0
.end method


# virtual methods
.method public getEnumValue()I
    .locals 1

    .line 24
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->mEnumValue:I

    return v0
.end method

.method public getNativeValue()I
    .locals 1

    .line 20
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationVisibility;->mNativeVisibility:I

    return v0
.end method
