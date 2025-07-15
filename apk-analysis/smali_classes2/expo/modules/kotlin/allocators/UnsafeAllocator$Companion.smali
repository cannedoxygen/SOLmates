.class public final Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;
.super Ljava/lang/Object;
.source "UnsafeAllocator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/allocators/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;",
        "",
        "()V",
        "createAllocator",
        "Lexpo/modules/kotlin/allocators/UnsafeAllocator;",
        "T",
        "clazz",
        "Ljava/lang/Class;",
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
.field static final synthetic $$INSTANCE:Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;


# direct methods
.method public static synthetic $r8$lambda$1EURWgeN2CotLbv0tgnyLMskdsY(Ljava/lang/reflect/Method;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;->createAllocator$lambda$0(Ljava/lang/reflect/Method;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fdvTcEdl3ezxN4A9mo7RCTprR1Q(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;->createAllocator$lambda$1(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gv2Y002hON-E-0W4Pr1tJcKihIo(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;->createAllocator$lambda$2(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;

    invoke-direct {v0}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;->$$INSTANCE:Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createAllocator$lambda$0(Ljava/lang/reflect/Method;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .param p0, "$newInstance"    # Ljava/lang/reflect/Method;
    .param p1, "$clazz"    # Ljava/lang/Class;
    .param p2, "$constructorId"    # I

    const-string v0, "$clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final createAllocator$lambda$1(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "$allocateInstance"    # Ljava/lang/reflect/Method;
    .param p1, "$unsafeObj"    # Ljava/lang/Object;
    .param p2, "$clazz"    # Ljava/lang/Class;

    const-string v0, "$clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final createAllocator$lambda$2(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "$clazz"    # Ljava/lang/Class;

    const-string v0, "$clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final createAllocator(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/UnsafeAllocator;
    .locals 9
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/UnsafeAllocator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-class v3, Ljava/io/ObjectStreamClass;

    .line 20
    const-string v4, "getConstructorId"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 21
    .local v3, "getConstructorId":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22
    const-class v4, Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "constructorId":I
    const-class v5, Ljava/io/ObjectStreamClass;

    .line 23
    const-string v6, "newInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 24
    .local v5, "newInstance":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    new-instance v6, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, p1, v4}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    .line 28
    .end local v3    # "getConstructorId":Ljava/lang/reflect/Method;
    .end local v4    # "constructorId":I
    .end local v5    # "newInstance":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v3

    .line 32
    nop

    .line 33
    :try_start_1
    const-string v3, "sun.misc.Unsafe"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 34
    .local v3, "unsafeClass":Ljava/lang/Class;
    const-string v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 35
    .local v4, "theUnsafe":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "unsafeObj":Ljava/lang/Object;
    const-string v5, "allocateInstance"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v2, v1

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    .local v1, "allocateInstance":Ljava/lang/reflect/Method;
    new-instance v2, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0, p1}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    .line 41
    .end local v0    # "unsafeObj":Ljava/lang/Object;
    .end local v1    # "allocateInstance":Ljava/lang/reflect/Method;
    .end local v3    # "unsafeClass":Ljava/lang/Class;
    .end local v4    # "theUnsafe":Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v0

    .line 44
    new-instance v0, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
