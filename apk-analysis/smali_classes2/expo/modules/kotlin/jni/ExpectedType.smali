.class public final Lexpo/modules/kotlin/jni/ExpectedType;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/ExpectedType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n12720#2,3:219\n11065#2:222\n11400#2,3:223\n37#3,2:226\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType\n*L\n112#1:219,3\n107#1:222\n107#1:223,3\n107#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001b\u0008\u0016\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0019\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0003\"\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\nH\u0007J\u0008\u0010\u0010\u001a\u00020\u0007H\u0007J\u0015\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0003H\u0007\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\nH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "",
        "expectedTypes",
        "",
        "Lexpo/modules/kotlin/jni/CppType;",
        "([Lexpo/modules/kotlin/jni/CppType;)V",
        "innerPossibleTypes",
        "Lexpo/modules/kotlin/jni/SingleType;",
        "([Lexpo/modules/kotlin/jni/SingleType;)V",
        "innerCombinedTypes",
        "",
        "[Lexpo/modules/kotlin/jni/SingleType;",
        "equals",
        "",
        "other",
        "getCombinedTypes",
        "getFirstType",
        "getPossibleTypes",
        "()[Lexpo/modules/kotlin/jni/SingleType;",
        "hashCode",
        "Companion",
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
.field public static final Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;


# instance fields
.field private final innerCombinedTypes:I

.field private final innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    return-void
.end method

.method public varargs constructor <init>([Lexpo/modules/kotlin/jni/CppType;)V
    .locals 14
    .param p1, "expectedTypes"    # [Lexpo/modules/kotlin/jni/CppType;

    const-string v0, "expectedTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object v0, p1

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 223
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v3, v7

    .line 224
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Lexpo/modules/kotlin/jni/CppType;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$a$-map-ExpectedType$1":I
    new-instance v11, Lexpo/modules/kotlin/jni/SingleType;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {v11, v9, v13, v12, v13}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    .end local v9    # "it":Lexpo/modules/kotlin/jni/CppType;
    .end local v10    # "$i$a$-map-ExpectedType$1":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 225
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 222
    nop

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 107
    move-object v0, v2

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 226
    .local v1, "$i$f$toTypedArray":I
    nop

    .line 227
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    new-array v3, v6, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 107
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lexpo/modules/kotlin/jni/SingleType;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-void
.end method

.method public varargs constructor <init>([Lexpo/modules/kotlin/jni/SingleType;)V
    .locals 11
    .param p1, "innerPossibleTypes"    # [Lexpo/modules/kotlin/jni/SingleType;

    const-string v0, "innerPossibleTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    .line 112
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    .local v0, "$this$fold$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "initial$iv":I
    const/4 v2, 0x0

    .line 219
    .local v2, "$i$f$fold":I
    move v3, v1

    .line 220
    .local v3, "accumulator$iv":I
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move v7, v3

    .local v7, "acc":I
    move-object v8, v6

    .local v8, "current":Lexpo/modules/kotlin/jni/SingleType;
    const/4 v9, 0x0

    .line 112
    .local v9, "$i$a$-fold-ExpectedType$innerCombinedTypes$1":I
    invoke-virtual {v8}, Lexpo/modules/kotlin/jni/SingleType;->getCppType()I

    move-result v10

    or-int/2addr v7, v10

    .line 220
    .end local v7    # "acc":I
    .end local v8    # "current":Lexpo/modules/kotlin/jni/SingleType;
    .end local v9    # "$i$a$-fold-ExpectedType$innerCombinedTypes$1":I
    move v3, v7

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_0
    nop

    .line 112
    .end local v0    # "$this$fold$iv":[Ljava/lang/Object;
    .end local v1    # "initial$iv":I
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":I
    iput v3, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    .line 104
    return-void
.end method

.method public static final synthetic access$getInnerPossibleTypes$p(Lexpo/modules/kotlin/jni/ExpectedType;)[Lexpo/modules/kotlin/jni/SingleType;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/jni/ExpectedType;

    .line 103
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    array-length v0, v0

    move-object v2, p1

    check-cast v2, Lexpo/modules/kotlin/jni/ExpectedType;

    iget-object v2, v2, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    .line 136
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_4

    .line 137
    iget-object v3, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lexpo/modules/kotlin/jni/ExpectedType;

    iget-object v4, v4, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 138
    return v1

    .line 140
    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getFirstParameterType()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lexpo/modules/kotlin/jni/ExpectedType;

    iget-object v4, v4, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lexpo/modules/kotlin/jni/SingleType;->getFirstParameterType()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 141
    return v1

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final getCombinedTypes()I
    .locals 1

    .line 116
    iget v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    return v0
.end method

.method public final getFirstType()Lexpo/modules/kotlin/jni/SingleType;
    .locals 1

    .line 124
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/jni/SingleType;

    return-object v0
.end method

.method public final getPossibleTypes()[Lexpo/modules/kotlin/jni/SingleType;
    .locals 1

    .line 120
    iget-object v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 127
    iget v0, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerCombinedTypes:I

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/jni/ExpectedType;->innerPossibleTypes:[Lexpo/modules/kotlin/jni/SingleType;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
