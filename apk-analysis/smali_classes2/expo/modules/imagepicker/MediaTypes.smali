.class public final enum Lexpo/modules/imagepicker/MediaTypes;
.super Ljava/lang/Enum;
.source "ImagePickerOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagepicker/MediaTypes$Companion;,
        Lexpo/modules/imagepicker/MediaTypes$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/imagepicker/MediaTypes;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0080\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/imagepicker/MediaTypes;",
        "",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toCameraIntentAction",
        "toFileExtension",
        "toMimeType",
        "IMAGES",
        "VIDEOS",
        "ALL",
        "Companion",
        "expo-image-picker_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/imagepicker/MediaTypes;

.field public static final enum ALL:Lexpo/modules/imagepicker/MediaTypes;

.field private static final AllMimeType:Ljava/lang/String; = "*/*"

.field public static final Companion:Lexpo/modules/imagepicker/MediaTypes$Companion;

.field public static final enum IMAGES:Lexpo/modules/imagepicker/MediaTypes;

.field private static final ImageAllMimeType:Ljava/lang/String; = "image/*"

.field public static final enum VIDEOS:Lexpo/modules/imagepicker/MediaTypes;

.field private static final VideoAllMimeType:Ljava/lang/String; = "video/*"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/imagepicker/MediaTypes;
    .locals 3

    sget-object v0, Lexpo/modules/imagepicker/MediaTypes;->IMAGES:Lexpo/modules/imagepicker/MediaTypes;

    sget-object v1, Lexpo/modules/imagepicker/MediaTypes;->VIDEOS:Lexpo/modules/imagepicker/MediaTypes;

    sget-object v2, Lexpo/modules/imagepicker/MediaTypes;->ALL:Lexpo/modules/imagepicker/MediaTypes;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Lexpo/modules/imagepicker/MediaTypes;

    const/4 v1, 0x0

    const-string v2, "Images"

    const-string v3, "IMAGES"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/imagepicker/MediaTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->IMAGES:Lexpo/modules/imagepicker/MediaTypes;

    .line 70
    new-instance v0, Lexpo/modules/imagepicker/MediaTypes;

    const/4 v1, 0x1

    const-string v2, "Videos"

    const-string v3, "VIDEOS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/imagepicker/MediaTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->VIDEOS:Lexpo/modules/imagepicker/MediaTypes;

    .line 71
    new-instance v0, Lexpo/modules/imagepicker/MediaTypes;

    const/4 v1, 0x2

    const-string v2, "All"

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/imagepicker/MediaTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->ALL:Lexpo/modules/imagepicker/MediaTypes;

    invoke-static {}, Lexpo/modules/imagepicker/MediaTypes;->$values()[Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v0

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->$VALUES:[Lexpo/modules/imagepicker/MediaTypes;

    sget-object v0, Lexpo/modules/imagepicker/MediaTypes;->$VALUES:[Lexpo/modules/imagepicker/MediaTypes;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lexpo/modules/imagepicker/MediaTypes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/imagepicker/MediaTypes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/imagepicker/MediaTypes;->Companion:Lexpo/modules/imagepicker/MediaTypes$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/imagepicker/MediaTypes;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/imagepicker/MediaTypes;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/imagepicker/MediaTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/imagepicker/MediaTypes;
    .locals 1

    const-class v0, Lexpo/modules/imagepicker/MediaTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/imagepicker/MediaTypes;

    return-object v0
.end method

.method public static values()[Lexpo/modules/imagepicker/MediaTypes;
    .locals 1

    sget-object v0, Lexpo/modules/imagepicker/MediaTypes;->$VALUES:[Lexpo/modules/imagepicker/MediaTypes;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/imagepicker/MediaTypes;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/imagepicker/MediaTypes;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toCameraIntentAction()Ljava/lang/String;
    .locals 2

    .line 92
    sget-object v0, Lexpo/modules/imagepicker/MediaTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/imagepicker/MediaTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 93
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 92
    :goto_0
    return-object v0
.end method

.method public final toFileExtension()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lexpo/modules/imagepicker/MediaTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/imagepicker/MediaTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 83
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, ".mp4"

    goto :goto_0

    .line 84
    :cond_0
    const-string v0, ".jpeg"

    .line 82
    :goto_0
    return-object v0
.end method

.method public final toMimeType()Ljava/lang/String;
    .locals 2

    .line 74
    sget-object v0, Lexpo/modules/imagepicker/MediaTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/imagepicker/MediaTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "*/*"

    goto :goto_0

    .line 76
    :pswitch_1
    const-string v0, "video/*"

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "image/*"

    .line 74
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
