.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "JvmBuiltInsSignatures.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmBuiltInsSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n13#2:213\n13#2:219\n13#2:225\n13#2:226\n13#2:227\n13#2:228\n13#2:229\n13#2:230\n1446#3,5:214\n1446#3,5:220\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n*L\n64#1:213\n185#1:219\n23#1:225\n71#1:226\n80#1:227\n136#1:228\n163#1:229\n180#1:230\n65#1:214,5\n189#1:220,5\n*E\n"
.end annotation


# static fields
.field private static final DEPRECATED_LIST_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

.field private static final MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 18
    nop

    .line 19
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "toArray()[Ljava/lang/Object;"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 17
    const-string v3, "Collection"

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 20
    nop

    .line 17
    const-string v2, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    .line 23
    const/4 v0, 0x0

    .line 225
    .local v0, "$i$f$signatures":I
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v2, "$this$HIDDEN_METHOD_SIGNATURES_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v6, 0x0

    .line 24
    .local v6, "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_METHOD_SIGNATURES$1":I
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveValueMethodsSet()Ljava/util/Set;

    move-result-object v7

    .line 26
    nop

    .line 27
    nop

    .line 28
    new-array v8, v1, [Ljava/lang/String;

    const-string/jumbo v9, "sort(Ljava/util/Comparator;)V"

    aput-object v9, v8, v4

    .line 30
    const-string v10, "reversed()Ljava/util/List;"

    aput-object v10, v8, v5

    .line 28
    nop

    .line 26
    const-string v10, "List"

    invoke-virtual {v2, v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 33
    nop

    .line 34
    nop

    .line 35
    const/16 v8, 0x30

    new-array v8, v8, [Ljava/lang/String;

    const-string v11, "codePointAt(I)I"

    aput-object v11, v8, v4

    const-string v11, "codePointBefore(I)I"

    aput-object v11, v8, v5

    const-string v11, "codePointCount(II)I"

    aput-object v11, v8, v1

    const-string v11, "compareToIgnoreCase(Ljava/lang/String;)I"

    const/4 v12, 0x3

    aput-object v11, v8, v12

    .line 36
    const-string v11, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v13, 0x4

    aput-object v11, v8, v13

    .line 35
    nop

    .line 36
    const-string v11, "contains(Ljava/lang/CharSequence;)Z"

    const/4 v14, 0x5

    aput-object v11, v8, v14

    .line 35
    nop

    .line 37
    const-string v11, "contentEquals(Ljava/lang/CharSequence;)Z"

    const/4 v15, 0x6

    aput-object v11, v8, v15

    .line 35
    nop

    .line 37
    const-string v11, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const/16 v16, 0x7

    aput-object v11, v8, v16

    .line 35
    nop

    .line 38
    const-string v11, "endsWith(Ljava/lang/String;)Z"

    const/16 v17, 0x8

    aput-object v11, v8, v17

    .line 35
    nop

    .line 38
    const-string v11, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const/16 v15, 0x9

    aput-object v11, v8, v15

    .line 35
    nop

    .line 38
    const-string v11, "getBytes()[B"

    const/16 v15, 0xa

    aput-object v11, v8, v15

    .line 35
    nop

    .line 38
    const-string v11, "getBytes(II[BI)V"

    const/16 v14, 0xb

    aput-object v11, v8, v14

    .line 35
    nop

    .line 39
    const-string v11, "getBytes(Ljava/lang/String;)[B"

    const/16 v21, 0xc

    aput-object v11, v8, v21

    .line 35
    nop

    .line 39
    const-string v11, "getBytes(Ljava/nio/charset/Charset;)[B"

    const/16 v21, 0xd

    aput-object v11, v8, v21

    .line 35
    nop

    .line 39
    const-string v11, "getChars(II[CI)V"

    const/16 v21, 0xe

    aput-object v11, v8, v21

    .line 35
    nop

    .line 40
    const-string v11, "indexOf(I)I"

    const/16 v21, 0xf

    aput-object v11, v8, v21

    .line 35
    nop

    .line 40
    const-string v11, "indexOf(II)I"

    const/16 v21, 0x10

    aput-object v11, v8, v21

    .line 35
    nop

    .line 40
    const-string v11, "indexOf(Ljava/lang/String;)I"

    const/16 v21, 0x11

    aput-object v11, v8, v21

    .line 35
    nop

    .line 40
    const-string v11, "indexOf(Ljava/lang/String;I)I"

    const/16 v21, 0x12

    aput-object v11, v8, v21

    .line 35
    nop

    .line 41
    const-string v11, "intern()Ljava/lang/String;"

    const/16 v21, 0x13

    aput-object v11, v8, v21

    .line 35
    nop

    .line 41
    const/16 v11, 0x14

    const-string v21, "isEmpty()Z"

    aput-object v21, v8, v11

    .line 35
    nop

    .line 41
    const-string v11, "lastIndexOf(I)I"

    const/16 v22, 0x15

    aput-object v11, v8, v22

    .line 35
    nop

    .line 41
    const-string v11, "lastIndexOf(II)I"

    const/16 v22, 0x16

    aput-object v11, v8, v22

    .line 35
    nop

    .line 42
    const-string v11, "lastIndexOf(Ljava/lang/String;)I"

    const/16 v22, 0x17

    aput-object v11, v8, v22

    .line 35
    nop

    .line 42
    const-string v11, "lastIndexOf(Ljava/lang/String;I)I"

    const/16 v22, 0x18

    aput-object v11, v8, v22

    .line 35
    nop

    .line 42
    const-string v11, "matches(Ljava/lang/String;)Z"

    const/16 v22, 0x19

    aput-object v11, v8, v22

    .line 35
    nop

    .line 43
    const-string v11, "offsetByCodePoints(II)I"

    const/16 v22, 0x1a

    aput-object v11, v8, v22

    .line 35
    nop

    .line 43
    const-string v11, "regionMatches(ILjava/lang/String;II)Z"

    const/16 v22, 0x1b

    aput-object v11, v8, v22

    .line 35
    nop

    .line 43
    const-string v11, "regionMatches(ZILjava/lang/String;II)Z"

    const/16 v22, 0x1c

    aput-object v11, v8, v22

    .line 35
    nop

    .line 44
    const-string v11, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const/16 v22, 0x1d

    aput-object v11, v8, v22

    .line 35
    nop

    .line 44
    const-string v11, "replace(CC)Ljava/lang/String;"

    const/16 v22, 0x1e

    aput-object v11, v8, v22

    .line 35
    nop

    .line 45
    const-string v11, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const/16 v22, 0x1f

    aput-object v11, v8, v22

    .line 35
    nop

    .line 46
    const-string v11, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const/16 v22, 0x20

    aput-object v11, v8, v22

    .line 35
    nop

    .line 47
    const-string/jumbo v11, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const/16 v22, 0x21

    aput-object v11, v8, v22

    .line 35
    nop

    .line 47
    const-string/jumbo v11, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const/16 v22, 0x22

    aput-object v11, v8, v22

    .line 35
    nop

    .line 48
    const-string/jumbo v11, "startsWith(Ljava/lang/String;I)Z"

    const/16 v22, 0x23

    aput-object v11, v8, v22

    .line 35
    nop

    .line 48
    const-string/jumbo v11, "startsWith(Ljava/lang/String;)Z"

    const/16 v22, 0x24

    aput-object v11, v8, v22

    .line 35
    nop

    .line 48
    const-string/jumbo v11, "substring(II)Ljava/lang/String;"

    const/16 v22, 0x25

    aput-object v11, v8, v22

    .line 35
    nop

    .line 49
    const-string/jumbo v11, "substring(I)Ljava/lang/String;"

    const/16 v22, 0x26

    aput-object v11, v8, v22

    .line 35
    nop

    .line 49
    const-string/jumbo v11, "toCharArray()[C"

    const/16 v22, 0x27

    aput-object v11, v8, v22

    .line 35
    nop

    .line 49
    const-string/jumbo v11, "toLowerCase()Ljava/lang/String;"

    const/16 v22, 0x28

    aput-object v11, v8, v22

    .line 35
    nop

    .line 50
    const-string/jumbo v11, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const/16 v22, 0x29

    aput-object v11, v8, v22

    .line 35
    nop

    .line 50
    const-string/jumbo v11, "toUpperCase()Ljava/lang/String;"

    const/16 v22, 0x2a

    aput-object v11, v8, v22

    .line 35
    nop

    .line 51
    const-string/jumbo v11, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const/16 v22, 0x2b

    aput-object v11, v8, v22

    .line 35
    nop

    .line 51
    const-string/jumbo v11, "trim()Ljava/lang/String;"

    const/16 v22, 0x2c

    aput-object v11, v8, v22

    .line 35
    nop

    .line 52
    const-string v11, "isBlank()Z"

    const/16 v22, 0x2d

    aput-object v11, v8, v22

    .line 35
    nop

    .line 52
    const-string v11, "lines()Ljava/util/stream/Stream;"

    const/16 v22, 0x2e

    aput-object v11, v8, v22

    .line 35
    nop

    .line 52
    const-string v11, "repeat(I)Ljava/lang/String;"

    const/16 v22, 0x2f

    aput-object v11, v8, v22

    .line 35
    nop

    .line 33
    const-string v11, "String"

    invoke-virtual {v2, v11, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 55
    new-array v8, v1, [Ljava/lang/String;

    const-string v22, "isInfinite()Z"

    aput-object v22, v8, v4

    const-string v23, "isNaN()Z"

    aput-object v23, v8, v5

    const-string v14, "Double"

    invoke-virtual {v2, v14, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 56
    new-array v8, v1, [Ljava/lang/String;

    aput-object v22, v8, v4

    aput-object v23, v8, v5

    const-string v14, "Float"

    invoke-virtual {v2, v14, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 58
    new-array v8, v1, [Ljava/lang/String;

    const-string v22, "getDeclaringClass()Ljava/lang/Class;"

    aput-object v22, v8, v4

    const-string v22, "finalize()V"

    aput-object v22, v8, v5

    const-string v13, "Enum"

    invoke-virtual {v2, v13, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 59
    new-array v8, v5, [Ljava/lang/String;

    aput-object v21, v8, v4

    const-string v13, "CharSequence"

    invoke-virtual {v2, v13, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 24
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 225
    .end local v2    # "$this$HIDDEN_METHOD_SIGNATURES_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v6    # "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_METHOD_SIGNATURES$1":I
    nop

    .line 23
    .end local v0    # "$i$f$signatures":I
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    .line 71
    const/4 v0, 0x0

    .line 226
    .restart local v0    # "$i$f$signatures":I
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v2, "$this$DEPRECATED_LIST_METHODS_u24lambda_u243":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v6, 0x0

    .line 72
    .local v6, "$i$a$-signatures-JvmBuiltInsSignatures$DEPRECATED_LIST_METHODS$1":I
    nop

    .line 73
    nop

    .line 74
    new-array v7, v1, [Ljava/lang/String;

    const-string v8, "getFirst()Ljava/lang/Object;"

    aput-object v8, v7, v4

    .line 75
    const-string v8, "getLast()Ljava/lang/Object;"

    aput-object v8, v7, v5

    .line 74
    nop

    .line 72
    invoke-virtual {v2, v10, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 226
    .end local v2    # "$this$DEPRECATED_LIST_METHODS_u24lambda_u243":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v6    # "$i$a$-signatures-JvmBuiltInsSignatures$DEPRECATED_LIST_METHODS$1":I
    nop

    .line 71
    .end local v0    # "$i$f$signatures":I
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    .line 80
    const/4 v0, 0x0

    .line 227
    .restart local v0    # "$i$f$signatures":I
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v2, "$this$VISIBLE_METHOD_SIGNATURES_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_METHOD_SIGNATURES$1":I
    nop

    .line 82
    nop

    .line 83
    new-array v7, v1, [Ljava/lang/String;

    const-string v8, "codePoints()Ljava/util/stream/IntStream;"

    aput-object v8, v7, v4

    const-string v8, "chars()Ljava/util/stream/IntStream;"

    aput-object v8, v7, v5

    .line 81
    invoke-virtual {v2, v13, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 86
    nop

    .line 87
    nop

    .line 88
    new-array v8, v5, [Ljava/lang/String;

    const-string v13, "forEachRemaining(Ljava/util/function/Consumer;)V"

    aput-object v13, v8, v4

    .line 86
    const-string v13, "Iterator"

    invoke-virtual {v2, v13, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 91
    nop

    .line 92
    nop

    .line 93
    new-array v8, v1, [Ljava/lang/String;

    const-string v13, "forEach(Ljava/util/function/Consumer;)V"

    aput-object v13, v8, v4

    const-string/jumbo v13, "spliterator()Ljava/util/Spliterator;"

    aput-object v13, v8, v5

    .line 91
    const-string v12, "Iterable"

    invoke-virtual {v2, v12, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 96
    nop

    .line 97
    nop

    .line 98
    new-array v8, v15, [Ljava/lang/String;

    const-string/jumbo v12, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    aput-object v12, v8, v4

    const-string v12, "fillInStackTrace()Ljava/lang/Throwable;"

    aput-object v12, v8, v5

    .line 99
    const-string v12, "getLocalizedMessage()Ljava/lang/String;"

    aput-object v12, v8, v1

    .line 98
    nop

    .line 99
    const-string v12, "printStackTrace()V"

    const/16 v21, 0x3

    aput-object v12, v8, v21

    .line 98
    nop

    .line 99
    const-string v12, "printStackTrace(Ljava/io/PrintStream;)V"

    const/16 v22, 0x4

    aput-object v12, v8, v22

    .line 98
    nop

    .line 100
    const-string v12, "printStackTrace(Ljava/io/PrintWriter;)V"

    const/16 v20, 0x5

    aput-object v12, v8, v20

    .line 98
    nop

    .line 100
    const-string v12, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const/16 v18, 0x6

    aput-object v12, v8, v18

    .line 98
    nop

    .line 101
    const-string v12, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    aput-object v12, v8, v16

    .line 98
    nop

    .line 101
    const-string v12, "getSuppressed()[Ljava/lang/Throwable;"

    aput-object v12, v8, v17

    .line 98
    nop

    .line 102
    const-string v12, "addSuppressed(Ljava/lang/Throwable;)V"

    const/16 v19, 0x9

    aput-object v12, v8, v19

    .line 98
    nop

    .line 96
    const-string v12, "Throwable"

    invoke-virtual {v2, v12, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 105
    nop

    .line 106
    nop

    .line 107
    const/4 v8, 0x4

    new-array v12, v8, [Ljava/lang/String;

    aput-object v13, v12, v4

    const-string v8, "parallelStream()Ljava/util/stream/Stream;"

    aput-object v8, v12, v5

    .line 108
    const-string/jumbo v8, "stream()Ljava/util/stream/Stream;"

    aput-object v8, v12, v1

    .line 107
    nop

    .line 108
    const-string v8, "removeIf(Ljava/util/function/Predicate;)Z"

    const/4 v13, 0x3

    aput-object v8, v12, v13

    .line 107
    nop

    .line 105
    invoke-virtual {v2, v3, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 111
    nop

    .line 112
    nop

    .line 113
    const/4 v8, 0x5

    new-array v12, v8, [Ljava/lang/String;

    const-string v8, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v8, v12, v4

    .line 115
    const-string v8, "addFirst(Ljava/lang/Object;)V"

    aput-object v8, v12, v5

    .line 113
    nop

    .line 116
    const-string v8, "addLast(Ljava/lang/Object;)V"

    aput-object v8, v12, v1

    .line 113
    nop

    .line 117
    const-string v8, "removeFirst()Ljava/lang/Object;"

    const/4 v13, 0x3

    aput-object v8, v12, v13

    .line 113
    nop

    .line 118
    const-string v8, "removeLast()Ljava/lang/Object;"

    const/4 v13, 0x4

    aput-object v8, v12, v13

    .line 113
    nop

    .line 111
    invoke-virtual {v2, v10, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 121
    nop

    .line 122
    nop

    .line 123
    new-array v8, v15, [Ljava/lang/String;

    const-string v12, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v12, v8, v4

    .line 124
    const-string v12, "forEach(Ljava/util/function/BiConsumer;)V"

    aput-object v12, v8, v5

    .line 123
    nop

    .line 124
    const-string v12, "replaceAll(Ljava/util/function/BiFunction;)V"

    aput-object v12, v8, v1

    .line 123
    nop

    .line 125
    const-string v12, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/4 v13, 0x3

    aput-object v12, v8, v13

    .line 123
    nop

    .line 126
    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/4 v13, 0x4

    aput-object v12, v8, v13

    .line 123
    nop

    .line 127
    const-string v12, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v13, 0x5

    aput-object v12, v8, v13

    .line 123
    nop

    .line 128
    const-string v12, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const/4 v13, 0x6

    aput-object v12, v8, v13

    .line 123
    nop

    .line 129
    const-string v12, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v12, v8, v16

    .line 123
    nop

    .line 130
    const-string v12, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v12, v8, v17

    .line 123
    nop

    .line 131
    const-string v12, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/16 v13, 0x9

    aput-object v12, v8, v13

    .line 123
    nop

    .line 121
    const-string v12, "Map"

    invoke-virtual {v2, v12, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 81
    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 227
    .end local v2    # "$this$VISIBLE_METHOD_SIGNATURES_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v6    # "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_METHOD_SIGNATURES$1":I
    nop

    .line 80
    .end local v0    # "$i$f$signatures":I
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 136
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "$i$f$signatures":I
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v2, "$this$MUTABLE_METHOD_SIGNATURES_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v6, 0x0

    .line 137
    .local v6, "$i$a$-signatures-JvmBuiltInsSignatures$MUTABLE_METHOD_SIGNATURES$1":I
    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "removeIf(Ljava/util/function/Predicate;)Z"

    aput-object v8, v7, v4

    invoke-virtual {v2, v3, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 139
    nop

    .line 140
    nop

    .line 141
    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/String;

    const-string v7, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v7, v8, v4

    .line 142
    aput-object v9, v8, v5

    .line 141
    nop

    .line 143
    const-string v7, "addFirst(Ljava/lang/Object;)V"

    aput-object v7, v8, v1

    .line 141
    nop

    .line 144
    const-string v7, "addLast(Ljava/lang/Object;)V"

    const/4 v9, 0x3

    aput-object v7, v8, v9

    .line 141
    nop

    .line 145
    const-string v7, "removeFirst()Ljava/lang/Object;"

    const/4 v9, 0x4

    aput-object v7, v8, v9

    .line 141
    nop

    .line 146
    const-string v7, "removeLast()Ljava/lang/Object;"

    const/4 v9, 0x5

    aput-object v7, v8, v9

    .line 141
    nop

    .line 139
    invoke-virtual {v2, v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 137
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 149
    nop

    .line 150
    nop

    .line 151
    const/16 v7, 0x9

    new-array v8, v7, [Ljava/lang/String;

    const-string v7, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v7, v8, v4

    .line 152
    const-string v7, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v7, v8, v5

    .line 151
    nop

    .line 153
    const-string v7, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v7, v8, v1

    .line 151
    nop

    .line 154
    const-string v7, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/4 v9, 0x3

    aput-object v7, v8, v9

    .line 151
    nop

    .line 155
    const-string v7, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v9, 0x4

    aput-object v7, v8, v9

    .line 151
    nop

    .line 156
    const-string v7, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const/4 v9, 0x5

    aput-object v7, v8, v9

    .line 151
    nop

    .line 156
    const-string v7, "replaceAll(Ljava/util/function/BiFunction;)V"

    const/4 v9, 0x6

    aput-object v7, v8, v9

    .line 151
    nop

    .line 157
    const-string v7, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v7, v8, v16

    .line 151
    nop

    .line 158
    const-string v7, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    aput-object v7, v8, v17

    .line 151
    nop

    .line 149
    const-string v7, "Map"

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 137
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 228
    .end local v2    # "$this$MUTABLE_METHOD_SIGNATURES_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v6    # "$i$a$-signatures-JvmBuiltInsSignatures$MUTABLE_METHOD_SIGNATURES$1":I
    nop

    .line 136
    .end local v0    # "$i$f$signatures":I
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 163
    const/4 v0, 0x0

    .line 229
    .restart local v0    # "$i$f$signatures":I
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v2, "$this$HIDDEN_CONSTRUCTOR_SIGNATURES_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v3, 0x0

    .line 164
    .local v3, "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_CONSTRUCTOR_SIGNATURES$1":I
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveStringConstructorsSet()Ljava/util/Set;

    move-result-object v6

    .line 165
    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "D"

    aput-object v8, v7, v4

    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v2, v14, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 164
    invoke-static {v6, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 166
    nop

    .line 167
    nop

    .line 168
    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "[C"

    aput-object v8, v7, v4

    const-string v8, "[CII"

    aput-object v8, v7, v5

    const-string v8, "[III"

    aput-object v8, v7, v1

    const-string v1, "[BIILjava/lang/String;"

    const/4 v8, 0x3

    aput-object v1, v7, v8

    .line 169
    const-string v1, "[BIILjava/nio/charset/Charset;"

    const/4 v8, 0x4

    aput-object v1, v7, v8

    .line 168
    nop

    .line 170
    const-string v1, "[BLjava/lang/String;"

    const/4 v8, 0x5

    aput-object v1, v7, v8

    .line 168
    nop

    .line 171
    const-string v1, "[BLjava/nio/charset/Charset;"

    const/4 v8, 0x6

    aput-object v1, v7, v8

    .line 168
    nop

    .line 172
    const-string v1, "[BII"

    aput-object v1, v7, v16

    .line 168
    nop

    .line 172
    const-string v1, "[B"

    aput-object v1, v7, v17

    .line 168
    nop

    .line 173
    const-string v1, "Ljava/lang/StringBuffer;"

    const/16 v8, 0x9

    aput-object v1, v7, v8

    .line 168
    nop

    .line 174
    const-string v1, "Ljava/lang/StringBuilder;"

    aput-object v1, v7, v15

    .line 168
    nop

    .line 167
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 166
    invoke-virtual {v2, v11, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 164
    invoke-static {v6, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 229
    .end local v2    # "$this$HIDDEN_CONSTRUCTOR_SIGNATURES_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v3    # "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_CONSTRUCTOR_SIGNATURES$1":I
    nop

    .line 163
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    .line 180
    const/4 v0, 0x0

    .line 230
    .restart local v0    # "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$VISIBLE_CONSTRUCTOR_SIGNATURES_u24lambda_u247":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 181
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_CONSTRUCTOR_SIGNATURES$1":I
    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "Throwable"

    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 230
    .end local v1    # "$this$VISIBLE_CONSTRUCTOR_SIGNATURES_u24lambda_u247":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_CONSTRUCTOR_SIGNATURES$1":I
    nop

    .line 180
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildPrimitiveStringConstructorsSet()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    .line 219
    .local v0, "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$buildPrimitiveStringConstructorsSet_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 187
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1":I
    const/16 v3, 0x8

    new-array v3, v3, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v7, v3, v4

    const/4 v4, 0x3

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v7, v3, v4

    .line 188
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v7, 0x4

    aput-object v4, v3, v7

    .line 187
    nop

    .line 188
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v7, 0x5

    aput-object v4, v3, v7

    .line 187
    nop

    .line 188
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v7, 0x6

    aput-object v4, v3, v7

    .line 187
    nop

    .line 188
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v7, 0x7

    aput-object v4, v3, v7

    .line 187
    nop

    .line 186
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 189
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v3, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .local v4, "destination$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 221
    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .local v10, "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    const/4 v11, 0x0

    .line 191
    .local v11, "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1$1":I
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "asString(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v6, [Ljava/lang/String;

    const-string v14, "Ljava/lang/String;"

    aput-object v14, v13, v5

    invoke-virtual {v1, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    .line 221
    .end local v10    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .end local v11    # "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1$1":I
    check-cast v10, Ljava/lang/Iterable;

    .line 222
    .local v10, "list$iv":Ljava/lang/Iterable;
    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 224
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "list$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v3    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$flatMapTo":I
    move-object v3, v4

    check-cast v3, Ljava/util/LinkedHashSet;

    .line 189
    nop

    .line 219
    .end local v1    # "$this$buildPrimitiveStringConstructorsSet_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1":I
    nop

    .end local v0    # "$i$f$signatures":I
    check-cast v3, Ljava/util/Set;

    .line 193
    return-object v3
.end method

.method private final buildPrimitiveValueMethodsSet()Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .line 213
    .local v0, "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$buildPrimitiveValueMethodsSet_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1":I
    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 214
    .local v7, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 215
    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .local v10, "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    const/4 v11, 0x0

    .line 66
    .local v11, "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1$1":I
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "asString(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v6, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Value()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v1, v12, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    .line 215
    .end local v10    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .end local v11    # "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1$1":I
    check-cast v10, Ljava/lang/Iterable;

    .line 216
    .local v10, "list$iv":Ljava/lang/Iterable;
    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 218
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "list$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v3    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$flatMapTo":I
    move-object v3, v4

    check-cast v3, Ljava/util/LinkedHashSet;

    .line 65
    nop

    .line 213
    .end local v1    # "$this$buildPrimitiveValueMethodsSet_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1":I
    nop

    .end local v0    # "$i$f$signatures":I
    check-cast v3, Ljava/util/Set;

    .line 68
    return-object v3
.end method


# virtual methods
.method public final getDEPRECATED_LIST_METHODS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public final getDROP_LIST_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getMUTABLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1
    .param p1, "fqName"    # Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSerializableInJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 3
    .param p1, "fqName"    # Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 200
    .local v0, "javaClassId":Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    :cond_1
    nop

    .line 201
    :try_start_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .local v1, "classViaReflection":Ljava/lang/Class;
    const-class v2, Ljava/io/Serializable;

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 202
    .end local v1    # "classViaReflection":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method
