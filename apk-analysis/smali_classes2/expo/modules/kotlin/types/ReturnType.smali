.class public final Lexpo/modules/kotlin/types/ReturnType;
.super Ljava/lang/Object;
.source "ReturnType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReturnType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n1#1,215:1\n211#1,2:216\n211#1,2:218\n211#1,2:220\n211#1,2:222\n211#1,2:224\n211#1,2:226\n*S KotlinDebug\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n196#1:216,2\n197#1:218,2\n198#1:220,2\n199#1:222,2\n200#1:224,2\n201#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\t\u001a\u00020\n\"\u0006\u0008\u0000\u0010\u000b\u0018\u0001H\u0080\u0008\u00a2\u0006\u0002\u0008\u000cR\u0012\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ReturnType;",
        "",
        "klass",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "converter",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;",
        "convertToJS",
        "value",
        "inheritFrom",
        "",
        "T",
        "inheritFrom$expo_modules_core_debug",
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


# instance fields
.field private final converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final klass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 7
    .param p1, "klass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 175
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/types/ReturnType;

    .local v0, "$this$converter_u24lambda_u240":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-run-ReturnType$converter$1":I
    iget-object v2, v0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 177
    const-class v3, Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 178
    :cond_0
    const-class v3, Landroid/os/Bundle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BundleConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BundleConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 179
    :cond_1
    const-class v3, [I

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$IntArrayConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$IntArrayConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 180
    :cond_2
    const-class v3, [F

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FloatArrayConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FloatArrayConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 181
    :cond_3
    const-class v3, [D

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DoubleArrayConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DoubleArrayConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 182
    :cond_4
    const-class v3, [Z

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BooleanArrayConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BooleanArrayConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 183
    :cond_5
    const-class v3, [B

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ByteArrayConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ByteArrayConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 184
    :cond_6
    const-class v3, Ljava/net/URI;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URIConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URIConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 185
    :cond_7
    const-class v3, Ljava/net/URL;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URLConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URLConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 186
    :cond_8
    const-class v3, Landroid/net/Uri;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AndroidUriConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AndroidUriConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 187
    :cond_9
    const-class v3, Ljava/io/File;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FileConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FileConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 188
    :cond_a
    const-class v3, Lkotlin/Pair;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PairConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PairConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 189
    :cond_b
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$LongConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$LongConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 190
    :cond_c
    const-class v3, Lkotlin/time/Duration;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DurationConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DurationConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 191
    :cond_d
    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AnyConverter;

    invoke-direct {v2}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AnyConverter;-><init>()V

    check-cast v2, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 192
    :cond_e
    const/4 v2, 0x0

    .line 176
    :goto_0
    nop

    .line 195
    .local v2, "directConverter":Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
    if-nez v2, :cond_15

    .line 196
    move-object v3, v0

    .local v3, "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .local v5, "jClass$iv":Ljava/lang/Class;
    const-class v6, Ljava/util/Map;

    .line 217
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 196
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_f

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$MapConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$MapConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_1

    .line 197
    :cond_f
    move-object v3, v0

    .restart local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 218
    .restart local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "jClass$iv":Ljava/lang/Class;
    const-class v6, Ljava/lang/Enum;

    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 197
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_10

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$EnumConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$EnumConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_1

    .line 198
    :cond_10
    move-object v3, v0

    .restart local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 220
    .restart local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "jClass$iv":Ljava/lang/Class;
    const-class v6, Lexpo/modules/kotlin/records/Record;

    .line 221
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 198
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_11

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RecordConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RecordConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 199
    :cond_11
    move-object v3, v0

    .restart local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 222
    .restart local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "jClass$iv":Ljava/lang/Class;
    const-class v6, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    .line 223
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 199
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_12

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RawTypedArrayHolderConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RawTypedArrayHolderConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 200
    :cond_12
    move-object v3, v0

    .restart local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 224
    .restart local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "jClass$iv":Ljava/lang/Class;
    const-class v6, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 200
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_13

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ArrayConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ArrayConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 201
    :cond_13
    move-object v3, v0

    .restart local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v4, 0x0

    .line 226
    .restart local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {v3}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "jClass$iv":Ljava/lang/Class;
    const-class v6, Ljava/util/Collection;

    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 201
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v4    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v5    # "jClass$iv":Ljava/lang/Class;
    if-eqz v3, :cond_14

    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 202
    :cond_14
    new-instance v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;

    invoke-direct {v3}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 195
    :cond_15
    move-object v3, v2

    :goto_1
    nop

    .line 175
    .end local v0    # "$this$converter_u24lambda_u240":Lexpo/modules/kotlin/types/ReturnType;
    .end local v1    # "$i$a$-run-ReturnType$converter$1":I
    .end local v2    # "directConverter":Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
    iput-object v3, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    .line 172
    return-void
.end method

.method public static final synthetic access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/types/ReturnType;

    .line 172
    iget-object v0, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    return-object v0
.end method


# virtual methods
.method public final convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    invoke-interface {v0, p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;->convertToJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic inheritFrom$expo_modules_core_debug()Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "jClass":Ljava/lang/Class;
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2
.end method
