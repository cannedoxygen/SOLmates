.class public final Lexpo/modules/kotlin/types/JSTypeConverter;
.super Ljava/lang/Object;
.source "JSTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;,
        Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u001c\u0010\t\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverter;",
        "",
        "()V",
        "convertToJSValue",
        "value",
        "containerProvider",
        "Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;",
        "useExperimentalConverter",
        "",
        "legacyConvertToJSValue",
        "ContainerProvider",
        "DefaultContainerProvider",
        "expo-modules-core_debug"
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
.field public static final INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/types/JSTypeConverter;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/JSTypeConverter;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 63
    sget-object p2, Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;

    check-cast p2, Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;

    .line 61
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 64
    const/4 p3, 0x0

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic legacyConvertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;

    check-cast p2, Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverter;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "containerProvider"    # Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;
    .param p3, "useExperimentalConverter"    # Z

    const-string v0, "containerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 67
    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lkotlin/Unit;

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_6

    .line 68
    :cond_1
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/os/Bundle;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_6

    .line 69
    :cond_2
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_6

    .line 70
    :cond_3
    instance-of v1, p1, [I

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    instance-of v1, p1, [F

    :goto_1
    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    instance-of v1, p1, [D

    :goto_2
    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    instance-of v1, p1, [Z

    :goto_3
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    instance-of v0, p1, [J

    :goto_4
    if-eqz v0, :cond_8

    goto/16 :goto_5

    .line 71
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    sget-object v0, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter;->Companion:Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;->put(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 72
    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    if-eqz p3, :cond_a

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_6

    .line 75
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Map;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_6

    .line 77
    :cond_b
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_6

    .line 78
    :cond_c
    instance-of v0, p1, Lexpo/modules/kotlin/records/Record;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_6

    .line 79
    :cond_d
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 80
    :cond_e
    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 81
    :cond_f
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 82
    :cond_10
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 83
    :cond_11
    instance-of v0, p1, Lkotlin/Pair;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lkotlin/Pair;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lkotlin/Pair;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto :goto_6

    .line 84
    :cond_12
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    .line 85
    :cond_13
    instance-of v0, p1, Lkotlin/time/Duration;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    .line 86
    :cond_14
    instance-of v0, p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    invoke-interface {v0}, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;->getRawArray()Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    move-result-object v0

    goto :goto_6

    .line 87
    :cond_15
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    if-eqz p3, :cond_16

    .line 88
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_6

    .line 90
    :cond_16
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Collection;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto :goto_6

    .line 92
    :cond_17
    nop

    .line 66
    :goto_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method public final legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "containerProvider"    # Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;

    const-string v0, "containerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    nop

    .line 36
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlin/Unit;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 37
    :cond_1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/os/Bundle;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_1

    .line 38
    :cond_2
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 39
    :cond_3
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, [I

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([ILexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 40
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, [J

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([JLexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 41
    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, [F

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([FLexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 42
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, [D

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([DLexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 43
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, [Z

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([ZLexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto/16 :goto_1

    .line 44
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    sget-object v0, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter;->Companion:Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;->put(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 45
    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Map;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_1

    .line 46
    :cond_a
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 47
    :cond_b
    instance-of v0, p1, Lexpo/modules/kotlin/records/Record;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto/16 :goto_1

    .line 48
    :cond_c
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 49
    :cond_d
    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_e
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_f
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_10
    instance-of v0, p1, Lkotlin/Pair;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lkotlin/Pair;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lkotlin/Pair;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_11
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_12
    instance-of v0, p1, Lkotlin/time/Duration;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_13
    instance-of v0, p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    invoke-interface {v0}, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;->getRawArray()Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_14
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Collection;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    goto :goto_1

    .line 57
    :cond_15
    move-object v0, p1

    .line 35
    :goto_1
    return-object v0
.end method
