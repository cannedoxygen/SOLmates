.class public final enum Lexpo/modules/notifications/notifications/enums/NotificationPriority;
.super Ljava/lang/Enum;
.source "NotificationPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/notifications/notifications/enums/NotificationPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

.field public static final enum DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

.field public static final enum HIGH:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

.field public static final enum LOW:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

.field public static final enum MAX:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

.field public static final enum MIN:Lexpo/modules/notifications/notifications/enums/NotificationPriority;


# instance fields
.field private final mEnumValue:Ljava/lang/String;

.field private final mNativePriority:I


# direct methods
.method private static synthetic $values()[Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 5

    .line 9
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->MIN:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    sget-object v1, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->LOW:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    sget-object v2, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    sget-object v3, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->HIGH:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    sget-object v4, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->MAX:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    const/4 v1, -0x2

    const-string v2, "min"

    const-string v3, "MIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->MIN:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 11
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    const/4 v1, -0x1

    const-string v2, "low"

    const-string v3, "LOW"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->LOW:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 12
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    const-string v1, "default"

    const-string v2, "DEFAULT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 13
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    const/4 v1, 0x3

    const-string v2, "high"

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v1, v5, v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->HIGH:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 14
    new-instance v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    const/4 v1, 0x4

    const-string v2, "max"

    const-string v4, "MAX"

    invoke-direct {v0, v4, v1, v3, v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->MAX:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 9
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->$values()[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "nativePriority"    # I
    .param p4, "enumValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->mNativePriority:I

    .line 21
    iput-object p4, p0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->mEnumValue:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static fromEnumValue(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->values()[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "priority":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getEnumValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    return-object v3

    .line 34
    .end local v3    # "priority":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromNativeValue(I)Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 5
    .param p0, "value"    # I

    .line 44
    invoke-static {}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->values()[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    .local v3, "priority":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getNativeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 46
    return-object v3

    .line 44
    .end local v3    # "priority":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    return-object v0
.end method

.method public static values()[Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 1

    .line 9
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->$VALUES:[Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    invoke-virtual {v0}, [Lexpo/modules/notifications/notifications/enums/NotificationPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    return-object v0
.end method


# virtual methods
.method public getEnumValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->mEnumValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeValue()I
    .locals 1

    .line 25
    iget v0, p0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->mNativePriority:I

    return v0
.end method
