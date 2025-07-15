.class public Lexpo/modules/kotlin/viewevent/ViewEvent;
.super Ljava/lang/Object;
.source "ViewEvent.kt"

# interfaces
.implements Lexpo/modules/kotlin/viewevent/ViewEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewEvent.kt\nexpo/modules/kotlin/viewevent/ViewEvent\n+ 2 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,66:1\n12#2:67\n12#2:68\n12474#3,2:69\n*S KotlinDebug\n*F\n+ 1 ViewEvent.kt\nexpo/modules/kotlin/viewevent/ViewEvent\n*L\n29#1:67\n33#1:68\n38#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002BF\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012/\u0010\u0007\u001a+\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c\u00a2\u0006\u0002\u0010\rJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016R7\u0010\u0007\u001a+\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/viewevent/ViewEvent;",
        "T",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "name",
        "",
        "view",
        "Landroid/view/View;",
        "coalescingKey",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "event",
        "",
        "Lexpo/modules/kotlin/viewevent/CoalescingKey;",
        "(Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "isValidated",
        "",
        "convertEventBody",
        "Lcom/facebook/react/bridge/WritableMap;",
        "arg",
        "(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;",
        "invoke",
        "",
        "(Ljava/lang/Object;)V",
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
.field private final coalescingKey:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private isValidated:Z

.field private final name:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coalescingKey"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lexpo/modules/kotlin/viewevent/ViewEvent;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    .line 19
    iput-object p3, p0, Lexpo/modules/kotlin/viewevent/ViewEvent;->coalescingKey:Lkotlin/jvm/functions/Function1;

    .line 16
    return-void
.end method

.method private final convertEventBody(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    .line 57
    sget-object v0, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "converted":Ljava/lang/Object;
    instance-of v1, v0, Lkotlin/Unit;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 59
    :cond_2
    instance-of v1, v0, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    goto :goto_2

    .line 60
    :cond_3
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/JSTypeConverter$DefaultContainerProvider;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$convertEventBody_u24lambda_u243":Lcom/facebook/react/bridge/WritableMap;
    const/4 v3, 0x0

    .line 61
    .local v3, "$i$a$-apply-ViewEvent$convertEventBody$1":I
    const-string v4, "payload"

    invoke-static {v2, v4, v0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    nop

    .line 60
    .end local v2    # "$this$convertEventBody_u24lambda_u243":Lcom/facebook/react/bridge/WritableMap;
    .end local v3    # "$i$a$-apply-ViewEvent$convertEventBody$1":I
    nop

    .line 57
    .end local v0    # "converted":Ljava/lang/Object;
    :goto_2
    return-object v1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 17
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    move-object/from16 v0, p0

    iget-object v1, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 25
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v1}, Lexpo/modules/kotlin/ReactExtensionsKt;->getUnimoduleProxy(Lcom/facebook/react/bridge/ReactContext;)Lexpo/modules/adapters/react/NativeModulesProxy;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 26
    .local v2, "nativeModulesProxy":Lexpo/modules/adapters/react/NativeModulesProxy;
    :cond_0
    invoke-virtual {v2}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    .line 28
    .local v3, "appContext":Lexpo/modules/kotlin/AppContext;
    iget-boolean v4, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->isValidated:Z

    const/4 v5, 0x0

    if-nez v4, :cond_7

    .line 29
    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v4

    iget-object v6, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/Class;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v4

    .local v4, "$this$ifNull$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$f$ifNull":I
    const/4 v7, 0x2

    if-nez v4, :cond_1

    const/4 v8, 0x0

    .line 30
    .local v8, "$i$a$-ifNull-ViewEvent$invoke$holder$1":I
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v9

    iget-object v10, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u26a0\ufe0f Cannot get module holder for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5, v7, v5}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    return-void

    .line 29
    .end local v4    # "$this$ifNull$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$ifNull":I
    .end local v8    # "$i$a$-ifNull-ViewEvent$invoke$holder$1":I
    :cond_1
    nop

    .line 33
    .local v4, "holder":Lexpo/modules/kotlin/ModuleHolder;
    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v6

    iget-object v8, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Lexpo/modules/kotlin/ModuleRegistry;->getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/Class;)Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getCallbacksDefinition()Lexpo/modules/kotlin/views/CallbacksDefinition;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    .local v6, "$this$ifNull$iv":Ljava/lang/Object;
    :goto_0
    const/4 v8, 0x0

    .line 68
    .local v8, "$i$f$ifNull":I
    if-nez v6, :cond_3

    const/4 v9, 0x0

    .line 34
    .local v9, "$i$a$-ifNull-ViewEvent$invoke$callbacks$1":I
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v10

    invoke-virtual {v4}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u26a0\ufe0f Cannot get callbacks for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5, v7, v5}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 35
    return-void

    .line 33
    .end local v6    # "$this$ifNull$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$ifNull":I
    .end local v9    # "$i$a$-ifNull-ViewEvent$invoke$callbacks$1":I
    :cond_3
    nop

    .line 38
    .local v6, "callbacks":Lexpo/modules/kotlin/views/CallbacksDefinition;
    invoke-virtual {v6}, Lexpo/modules/kotlin/views/CallbacksDefinition;->getNames()[Ljava/lang/String;

    move-result-object v8

    .local v8, "$this$any$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 69
    .local v9, "$i$f$any":I
    array-length v10, v8

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v12, v10, :cond_5

    aget-object v14, v8, v12

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 38
    .local v16, "$i$a$-any-ViewEvent$invoke$1":I
    iget-object v11, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->name:Ljava/lang/String;

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 69
    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-any-ViewEvent$invoke$1":I
    if-eqz v11, :cond_4

    move v11, v13

    goto :goto_2

    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 70
    :cond_5
    const/4 v11, 0x0

    .line 38
    .end local v8    # "$this$any$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$any":I
    :goto_2
    if-nez v11, :cond_6

    .line 39
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v8

    iget-object v9, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u26a0\ufe0f Event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " wasn\'t exported from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5, v7, v5}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 40
    return-void

    .line 43
    :cond_6
    iput-boolean v13, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->isValidated:Z

    .line 48
    .end local v4    # "holder":Lexpo/modules/kotlin/ModuleHolder;
    .end local v6    # "callbacks":Lexpo/modules/kotlin/views/CallbacksDefinition;
    :cond_7
    nop

    .line 46
    nop

    .line 47
    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getCallbackInvoker$expo_modules_core_debug()Lexpo/modules/kotlin/events/EventEmitter;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_9

    .line 47
    nop

    .line 49
    iget-object v6, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->view:Landroid/view/View;

    .line 50
    iget-object v7, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->name:Ljava/lang/String;

    .line 51
    invoke-direct/range {p0 .. p1}, Lexpo/modules/kotlin/viewevent/ViewEvent;->convertEventBody(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 52
    iget-object v9, v0, Lexpo/modules/kotlin/viewevent/ViewEvent;->coalescingKey:Lkotlin/jvm/functions/Function1;

    if-eqz v9, :cond_8

    move-object/from16 v10, p1

    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    goto :goto_3

    :cond_8
    move-object/from16 v10, p1

    .line 48
    :goto_3
    invoke-interface {v4, v6, v7, v8, v5}, Lexpo/modules/kotlin/events/EventEmitter;->emit(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V

    goto :goto_4

    :cond_9
    move-object/from16 v10, p1

    .line 54
    :goto_4
    return-void
.end method
