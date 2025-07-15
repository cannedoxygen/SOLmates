.class public final Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "ReadableArgumentsTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Lexpo/modules/core/arguments/ReadableArguments;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "Lexpo/modules/core/arguments/ReadableArguments;",
        "isOptional",
        "",
        "(Z)V",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
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


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isOptional"    # Z

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 11
    return-void
.end method


# virtual methods
.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/arguments/ReadableArguments;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lexpo/modules/core/arguments/MapArguments;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lexpo/modules/core/arguments/MapArguments;-><init>(Ljava/util/Map;)V

    check-cast v0, Lexpo/modules/core/arguments/ReadableArguments;

    return-object v0
.end method

.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 11
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/arguments/ReadableArguments;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/arguments/ReadableArguments;
    .locals 2
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lexpo/modules/core/arguments/MapArguments;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lexpo/modules/core/arguments/MapArguments;-><init>(Ljava/util/Map;)V

    check-cast v0, Lexpo/modules/core/arguments/ReadableArguments;

    return-object v0
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 11
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/arguments/ReadableArguments;

    move-result-object v0

    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 22
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->READABLE_MAP:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method
