.class public final Lexpo/modules/kotlin/jni/ExpectedType$Companion;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/ExpectedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n9972#2:219\n10394#2,5:220\n1477#3:225\n1502#3,3:226\n1505#3,3:236\n2661#3,7:242\n372#4,7:229\n125#5:239\n152#5,2:240\n154#5:249\n37#6,2:250\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/ExpectedType$Companion\n*L\n207#1:219\n207#1:220,5\n208#1:225\n208#1:226,3\n208#1:236,3\n211#1:242,7\n208#1:229,7\n210#1:239\n210#1:240,2\n210#1:249\n214#1:250,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rJ\u001f\u0010\u000e\u001a\u00020\u00042\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0010\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/ExpectedType$Companion;",
        "",
        "()V",
        "forEnum",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "forList",
        "parameterType",
        "Lexpo/modules/kotlin/jni/CppType;",
        "forMap",
        "valueType",
        "forPrimitiveArray",
        "fromKType",
        "type",
        "Lkotlin/reflect/KType;",
        "merge",
        "types",
        "",
        "([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;",
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
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEnum()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 156
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 157
    const/4 v1, 0x2

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    .line 158
    sget-object v2, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 157
    nop

    .line 156
    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 159
    return-object v0
.end method

.method public final forList(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8
    .param p1, "parameterType"    # Lexpo/modules/kotlin/jni/CppType;

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 162
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->LIST:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 161
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 163
    return-object v0
.end method

.method public final forList(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6
    .param p1, "parameterType"    # Lexpo/modules/kotlin/jni/ExpectedType;

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 166
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->LIST:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 165
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 167
    return-object v0
.end method

.method public final forMap(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8
    .param p1, "valueType"    # Lexpo/modules/kotlin/jni/CppType;

    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 170
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->MAP:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 169
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 171
    return-object v0
.end method

.method public final forMap(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6
    .param p1, "valueType"    # Lexpo/modules/kotlin/jni/ExpectedType;

    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 174
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->MAP:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 173
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 175
    return-object v0
.end method

.method public final forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8
    .param p1, "parameterType"    # Lexpo/modules/kotlin/jni/CppType;

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 149
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->PRIMITIVE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v7

    .line 148
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 150
    return-object v0
.end method

.method public final forPrimitiveArray(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6
    .param p1, "parameterType"    # Lexpo/modules/kotlin/jni/ExpectedType;

    const-string v0, "parameterType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 153
    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v3, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v4, Lexpo/modules/kotlin/jni/CppType;->PRIMITIVE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    new-array v1, v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    aput-object v3, v2, v5

    .line 152
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 154
    return-object v0
.end method

.method public final fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 8
    .param p1, "type"    # Lkotlin/reflect/KType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_b

    .line 180
    .local v0, "kClass":Lkotlin/reflect/KClass;
    nop

    .line 181
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 182
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->LONG:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 183
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->DOUBLE:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 184
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->FLOAT:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 185
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->BOOLEAN:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 186
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v6, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    invoke-direct {v6, v7, v2, v3, v2}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1

    .line 188
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v1, v2

    .line 190
    .local v1, "argType":Lkotlin/reflect/KType;
    :goto_1
    if-eqz v1, :cond_8

    .line 191
    invoke-virtual {p0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forList(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v2

    return-object v2

    .line 194
    .end local v1    # "argType":Lkotlin/reflect/KType;
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    invoke-interface {p1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v2

    :cond_9
    move-object v1, v2

    .line 196
    .restart local v1    # "argType":Lkotlin/reflect/KType;
    if-eqz v1, :cond_a

    .line 197
    invoke-virtual {p0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forMap(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v2

    return-object v2

    .line 200
    .end local v1    # "argType":Lkotlin/reflect/KType;
    :cond_a
    new-instance v1, Lexpo/modules/kotlin/exception/InvalidExpectedType;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/exception/InvalidExpectedType;-><init>(Lkotlin/reflect/KType;)V

    throw v1

    .line 179
    .end local v0    # "kClass":Lkotlin/reflect/KClass;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot obtain KClass from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs merge([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 18
    .param p1, "types"    # [Lexpo/modules/kotlin/jni/ExpectedType;

    const-string v0, "types"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    nop

    .line 207
    move-object/from16 v0, p1

    .local v0, "$this$flatMap$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 219
    .local v2, "$i$f$flatMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$f$flatMapTo":I
    array-length v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v4, v8

    .line 221
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v11, 0x0

    .line 207
    .local v11, "$i$a$-flatMap-ExpectedType$Companion$merge$typesGroup$1":I
    invoke-static {v10}, Lexpo/modules/kotlin/jni/ExpectedType;->access$getInnerPossibleTypes$p(Lexpo/modules/kotlin/jni/ExpectedType;)[Lexpo/modules/kotlin/jni/SingleType;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v10

    .line 221
    .end local v10    # "it":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v11    # "$i$a$-flatMap-ExpectedType$Companion$merge$typesGroup$1":I
    nop

    .line 222
    .local v10, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 220
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "list$iv$iv":Ljava/lang/Iterable;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 224
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$flatMapTo":I
    check-cast v3, Ljava/util/List;

    .line 219
    nop

    .end local v0    # "$this$flatMap$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$flatMap":I
    check-cast v3, Ljava/lang/Iterable;

    .line 208
    move-object v0, v3

    .local v0, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 225
    .local v2, "$i$f$groupBy":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 226
    .local v5, "$i$f$groupByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 227
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lexpo/modules/kotlin/jni/SingleType;

    .local v9, "it":Lexpo/modules/kotlin/jni/SingleType;
    const/4 v10, 0x0

    .line 208
    .local v10, "$i$a$-groupBy-ExpectedType$Companion$merge$typesGroup$2":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v9

    .line 227
    .end local v9    # "it":Lexpo/modules/kotlin/jni/SingleType;
    .end local v10    # "$i$a$-groupBy-ExpectedType$Companion$merge$typesGroup$2":I
    nop

    .line 228
    .local v9, "key$iv$iv":Ljava/lang/Object;
    move-object v10, v3

    .local v10, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 229
    .local v11, "$i$f$getOrPut":I
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 230
    .local v12, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v12, :cond_1

    .line 231
    const/4 v13, 0x0

    .line 228
    .local v13, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/List;

    .line 231
    .end local v13    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object v13, v14

    .line 232
    .local v13, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    nop

    .end local v13    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 235
    :cond_1
    move-object v13, v12

    .line 230
    :goto_2
    nop

    .line 228
    .end local v10    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v11    # "$i$f$getOrPut":I
    .end local v12    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v13

    check-cast v10, Ljava/util/List;

    .line 236
    .local v10, "list$iv$iv":Ljava/util/List;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "key$iv$iv":Ljava/lang/Object;
    .end local v10    # "list$iv$iv":Ljava/util/List;
    :cond_2
    nop

    .line 225
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$groupByTo":I
    nop

    .line 208
    .end local v0    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$groupBy":I
    nop

    .line 206
    move-object v0, v3

    .line 210
    .local v0, "typesGroup":Ljava/util/Map;
    move-object v2, v0

    .local v2, "$this$map$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 240
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 241
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 210
    .local v10, "$i$a$-map-ExpectedType$Companion$merge$mergedTypes$1":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 211
    .local v11, "types":Ljava/util/List;
    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$reduce$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 242
    .local v13, "$i$f$reduce":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 243
    .local v14, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 244
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 245
    .local v15, "accumulator$iv":Ljava/lang/Object;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 246
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lexpo/modules/kotlin/jni/SingleType;

    move-object/from16 v16, v0

    .end local v0    # "typesGroup":Ljava/util/Map;
    .local v7, "b":Lexpo/modules/kotlin/jni/SingleType;
    .local v16, "typesGroup":Ljava/util/Map;
    move-object v0, v15

    check-cast v0, Lexpo/modules/kotlin/jni/SingleType;

    .local v0, "a":Lexpo/modules/kotlin/jni/SingleType;
    const/16 v17, 0x0

    .line 211
    .local v17, "$i$a$-reduce-ExpectedType$Companion$merge$mergedTypes$1$1":I
    sget-object v1, Lexpo/modules/kotlin/jni/SingleType;->Companion:Lexpo/modules/kotlin/jni/SingleType$Companion;

    invoke-virtual {v1, v0, v7}, Lexpo/modules/kotlin/jni/SingleType$Companion;->merge(Lexpo/modules/kotlin/jni/SingleType;Lexpo/modules/kotlin/jni/SingleType;)Lexpo/modules/kotlin/jni/SingleType;

    move-result-object v0

    .line 246
    .end local v0    # "a":Lexpo/modules/kotlin/jni/SingleType;
    .end local v7    # "b":Lexpo/modules/kotlin/jni/SingleType;
    .end local v17    # "$i$a$-reduce-ExpectedType$Companion$merge$mergedTypes$1$1":I
    move-object v15, v0

    move-object/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_4

    .line 248
    .end local v16    # "typesGroup":Ljava/util/Map;
    .local v0, "typesGroup":Ljava/util/Map;
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "typesGroup":Ljava/util/Map;
    .end local v12    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$reduce":I
    .end local v14    # "iterator$iv":Ljava/util/Iterator;
    .end local v15    # "accumulator$iv":Ljava/lang/Object;
    .restart local v16    # "typesGroup":Ljava/util/Map;
    move-object v0, v15

    check-cast v0, Lexpo/modules/kotlin/jni/SingleType;

    .line 211
    nop

    .line 241
    .end local v10    # "$i$a$-map-ExpectedType$Companion$merge$mergedTypes$1":I
    .end local v11    # "types":Ljava/util/List;
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_3

    .line 243
    .end local v16    # "typesGroup":Ljava/util/Map;
    .restart local v0    # "typesGroup":Ljava/util/Map;
    .restart local v10    # "$i$a$-map-ExpectedType$Companion$merge$mergedTypes$1":I
    .restart local v11    # "types":Ljava/util/List;
    .restart local v12    # "$this$reduce$iv":Ljava/lang/Iterable;
    .restart local v13    # "$i$f$reduce":I
    .restart local v14    # "iterator$iv":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "typesGroup":Ljava/util/Map;
    .restart local v16    # "typesGroup":Ljava/util/Map;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v10    # "$i$a$-map-ExpectedType$Companion$merge$mergedTypes$1":I
    .end local v11    # "types":Ljava/util/List;
    .end local v12    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$reduce":I
    .end local v14    # "iterator$iv":Ljava/util/Iterator;
    .end local v16    # "typesGroup":Ljava/util/Map;
    .restart local v0    # "typesGroup":Ljava/util/Map;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "typesGroup":Ljava/util/Map;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapTo":I
    .restart local v16    # "typesGroup":Ljava/util/Map;
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 239
    nop

    .line 210
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    .end local v3    # "$i$f$map":I
    nop

    .line 214
    .local v0, "mergedTypes":Ljava/util/List;
    new-instance v1, Lexpo/modules/kotlin/jni/ExpectedType;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 250
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 251
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 214
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Lexpo/modules/kotlin/jni/SingleType;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lexpo/modules/kotlin/jni/SingleType;

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    return-object v1
.end method
