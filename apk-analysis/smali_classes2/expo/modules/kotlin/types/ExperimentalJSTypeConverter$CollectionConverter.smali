.class public final Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;
.super Ljava/lang/Object;
.source "ReturnType.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter<",
        "Ljava/util/Collection<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReturnType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,215:1\n8#2,4:216\n*S KotlinDebug\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter\n*L\n160#1:216,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;",
        "",
        "()V",
        "convertToJS",
        "",
        "value",
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
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    .line 216
    .local v0, "$i$f$enforceType":I
    nop

    .line 219
    nop

    .line 161
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
