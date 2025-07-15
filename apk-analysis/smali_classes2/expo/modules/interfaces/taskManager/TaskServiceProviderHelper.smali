.class public final Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;
.super Ljava/lang/Object;
.source "TaskServiceProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskServiceProviderHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskServiceProviderHelper.kt\nexpo/modules/interfaces/taskManager/TaskServiceProviderHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n800#2,11:43\n1054#2:54\n800#2,11:55\n*S KotlinDebug\n*F\n+ 1 TaskServiceProviderHelper.kt\nexpo/modules/interfaces/taskManager/TaskServiceProviderHelper\n*L\n32#1:43,11\n33#1:54\n37#1:55,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;",
        "",
        "()V",
        "getTaskServiceImpl",
        "Lexpo/modules/interfaces/taskManager/TaskServiceInterface;",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    invoke-direct {v0}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;-><init>()V

    sput-object v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 23
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "expo.modules.ExpoModulesPackageList"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    nop

    .line 28
    .local v1, "expoModules":Ljava/lang/Class;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "getPackageList"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_1

    return-object v0

    .line 31
    .local v3, "getPackageList":Ljava/lang/reflect/Method;
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    return-object v0

    .line 32
    .local v2, "result":Ljava/util/List;
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$f$filterIsInstance":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 52
    .local v8, "$i$f$filterIsInstanceTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    instance-of v11, v10, Lexpo/modules/core/interfaces/Package;

    if-eqz v11, :cond_4

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterIsInstanceTo":I
    check-cast v6, Ljava/util/List;

    .line 43
    nop

    .end local v4    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterIsInstance":I
    check-cast v6, Ljava/lang/Iterable;

    .line 33
    move-object v4, v6

    .local v4, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$f$sortedByDescending":I
    new-instance v6, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper$getTaskServiceImpl$$inlined$sortedByDescending$1;

    invoke-direct {v6}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper$getTaskServiceImpl$$inlined$sortedByDescending$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 33
    .end local v4    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$sortedByDescending":I
    nop

    .line 32
    nop

    .line 39
    .local v4, "packages":Ljava/util/List;
    nop

    .line 36
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .line 37
    nop

    .local v5, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 55
    .local v6, "$i$f$filterIsInstance":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 64
    .local v9, "$i$f$filterIsInstanceTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    instance-of v12, v11, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;

    if-eqz v12, :cond_6

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterIsInstanceTo":I
    check-cast v7, Ljava/util/List;

    .line 55
    nop

    .line 37
    .end local v5    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterIsInstance":I
    nop

    .line 38
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;

    .line 39
    if-eqz v5, :cond_8

    .line 38
    nop

    .line 39
    invoke-interface {v5, p1}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;->getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object v0

    .line 36
    :cond_8
    return-object v0

    .line 24
    .end local v1    # "expoModules":Ljava/lang/Class;
    .end local v2    # "result":Ljava/util/List;
    .end local v3    # "getPackageList":Ljava/lang/reflect/Method;
    .end local v4    # "packages":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method
