.class final Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->invoke()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n14#2:179\n25#2:180\n27#3,3:181\n31#3:186\n1855#4,2:184\n*S KotlinDebug\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2\n*L\n58#1:179\n58#1:180\n58#1:181,3\n58#1:186\n60#1:184,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lexpo/modules/kotlin/modules/Module;",
        "key",
        "",
        "definition",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appContext:Lexpo/modules/kotlin/AppContext;

.field final synthetic $jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

.field final synthetic $viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

.field final synthetic this$0:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/jni/JNIDeallocator;",
            "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;",
            "Lexpo/modules/kotlin/AppContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    iput-object p2, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    iput-object p3, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    iput-object p4, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$appContext:Lexpo/modules/kotlin/AppContext;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->invoke(Ljava/lang/String;Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Lexpo/modules/kotlin/views/ViewManagerDefinition;)V
    .locals 21
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "definition"    # Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "key"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getAsyncFunctions()Ljava/util/List;

    move-result-object v4

    .line 55
    .local v4, "viewFunctions":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    const-string v5, "Attaching view prototype"

    .local v5, "blockName$iv":Ljava/lang/String;
    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    iget-object v6, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    iget-object v7, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    iget-object v8, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$appContext:Lexpo/modules/kotlin/AppContext;

    const/4 v9, 0x0

    .line 179
    .local v9, "$i$f$trace":I
    const-string v10, "ExpoModulesCore"

    .local v10, "tag$iv$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 180
    .local v11, "$i$f$trace":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 181
    .local v13, "$i$f$trace":I
    invoke-static {v12}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 182
    nop

    .line 183
    const/4 v14, 0x0

    .line 59
    .local v14, "$i$a$-trace-ModuleHolder$jsObject$2$1$2$1":I
    :try_start_0
    new-instance v15, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v15, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    move-object v0, v15

    .line 60
    .local v0, "viewDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    move-object v15, v4

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 184
    .local v16, "$i$f$forEach":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "element$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    move-object/from16 v20, v19

    .local v20, "function":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    const/16 v19, 0x0

    .line 61
    .local v19, "$i$a$-forEach-ModuleHolder$jsObject$2$1$2$1$1":I
    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    .end local v20    # "function":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .local v3, "function":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    invoke-virtual {v3, v8, v0, v1}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 62
    nop

    .line 184
    .end local v3    # "function":Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .end local v19    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$2$1$1":I
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .end local v18    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 185
    :cond_1
    nop

    .line 63
    .end local v15    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEach":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    goto :goto_1

    :pswitch_0
    const-string v1, "DEFAULT_MODULE_VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_1
    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_debug()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v6, v1, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 64
    nop

    .end local v0    # "viewDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v14    # "$i$a$-trace-ModuleHolder$jsObject$2$1$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    nop

    .line 186
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 183
    nop

    .line 180
    .end local v12    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v13    # "$i$f$trace":I
    nop

    .line 179
    .end local v10    # "tag$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$f$trace":I
    nop

    .line 65
    .end local v5    # "blockName$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    return-void

    .line 186
    .restart local v5    # "blockName$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v10    # "tag$iv$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$trace":I
    .restart local v12    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v13    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2d8c8b7a
        :pswitch_0
    .end packed-switch
.end method
