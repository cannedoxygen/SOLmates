.class public final Lexpo/modules/kotlin/objects/PropertyComponent;
.super Ljava/lang/Object;
.source "PropertyComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyComponent.kt\nexpo/modules/kotlin/objects/PropertyComponent\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,58:1\n37#2,2:59\n37#2,2:62\n26#3:61\n26#3:64\n*S KotlinDebug\n*F\n+ 1 PropertyComponent.kt\nexpo/modules/kotlin/objects/PropertyComponent\n*L\n50#1:59,2\n53#1:62,2\n50#1:61\n53#1:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/PropertyComponent;",
        "",
        "name",
        "",
        "getter",
        "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "setter",
        "(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V",
        "getGetter",
        "()Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "getName",
        "()Ljava/lang/String;",
        "getSetter",
        "attachToJSObject",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "jsObject",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
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
.field private final getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

.field private final name:Ljava/lang/String;

.field private final setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;


# direct methods
.method public static synthetic $r8$lambda$6iLcJ3HumQZS0quTKRT-eCaJ9Og(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject$lambda$0(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J_QAMhT4xyANEVIIwy3cS-1-wqo(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject$lambda$1(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "getter"    # Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .param p3, "setter"    # Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 23
    iput-object p3, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/functions/SyncFunctionComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 9
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 18
    move-object p2, v0

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 23
    move-object p3, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/objects/PropertyComponent;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 57
    return-void
.end method

.method private static final attachToJSObject$lambda$0(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "this$0"    # Lexpo/modules/kotlin/objects/PropertyComponent;
    .param p1, "$appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0, p2, p1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->callUserImplementation([Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final attachToJSObject$lambda$1(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/kotlin/objects/PropertyComponent;
    .param p1, "$appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0, p2, p1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->callUserImplementation([Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
    .locals 11
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "jsObject"    # Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lexpo/modules/kotlin/objects/PropertyComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lexpo/modules/kotlin/objects/PropertyComponent$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;)V

    move-object v6, v0

    goto :goto_0

    .line 35
    :cond_0
    move-object v6, v1

    .line 29
    :goto_0
    nop

    .line 38
    .local v6, "jniGetter":Lexpo/modules/kotlin/jni/JNIFunctionBody;
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    if-eqz v0, :cond_1

    new-instance v1, Lexpo/modules/kotlin/objects/PropertyComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lexpo/modules/kotlin/objects/PropertyComponent$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/objects/PropertyComponent;Lexpo/modules/kotlin/AppContext;)V

    move-object v9, v1

    goto :goto_1

    .line 44
    :cond_1
    move-object v9, v1

    .line 38
    :goto_1
    nop

    .line 47
    .local v9, "jniSetter":Lexpo/modules/kotlin/jni/JNIFunctionBody;
    nop

    .line 48
    iget-object v3, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->name:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_debug()Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 50
    :goto_2
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_debug()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 59
    .local v5, "$i$f$toTypedArray":I
    move-object v7, v0

    .line 60
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 50
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lexpo/modules/kotlin/jni/ExpectedType;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$emptyArray":I
    new-array v5, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 51
    .end local v0    # "$i$f$emptyArray":I
    :goto_4
    nop

    .line 52
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_debug()Z

    move-result v0

    if-ne v0, v1, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v2

    .line 53
    :goto_5
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_debug()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$f$toTypedArray":I
    move-object v8, v0

    .line 63
    .local v8, "thisCollection$iv":Ljava/util/Collection;
    new-array v10, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 53
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v8    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lexpo/modules/kotlin/jni/ExpectedType;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v8, v0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$f$emptyArray":I
    new-array v1, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    move-object v8, v1

    .line 54
    .end local v0    # "$i$f$emptyArray":I
    :goto_7
    nop

    .line 47
    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 56
    return-void
.end method

.method public final getGetter()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetter()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponent;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method
