.class public final Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;
.super Lexpo/modules/kotlin/modules/Module;
.source "SafeAreaProviderManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAreaProviderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAreaProviderManager.kt\ndevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n*L\n1#1,36:1\n61#2:37\n14#3:38\n25#3:39\n27#4,3:40\n31#4:54\n94#5,11:43\n*S KotlinDebug\n*F\n+ 1 SafeAreaProviderManager.kt\ndevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager\n*L\n10#1:37\n10#1:38\n10#1:39\n10#1:40,3\n10#1:54\n15#1:43,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\"\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "initialWindowMetrics",
        "",
        "",
        "",
        "getInitialWindowMetrics",
        "()Ljava/util/Map;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-dev-menu_debug"
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

    .line 9
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitialWindowMetrics(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;

    .line 9
    invoke-direct {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;->getInitialWindowMetrics()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final getInitialWindowMetrics()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 23
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 24
    .local v2, "decorView":Landroid/view/ViewGroup;
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 25
    .local v3, "contentView":Landroid/view/View;
    :cond_1
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v4

    .line 26
    .local v4, "insets":Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    invoke-static {v2, v3}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;->getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    move-result-object v5

    .line 27
    .local v5, "frame":Ldevmenu/com/th3rdwave/safeareacontext/Rect;
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    nop

    .line 31
    invoke-static {v4}, Ldevmenu/com/th3rdwave/safeareacontext/SerializationUtils;->edgeInsetsToJavaMap(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;)Ljava/util/Map;

    move-result-object v1

    .line 32
    nop

    .line 33
    invoke-static {v5}, Ldevmenu/com/th3rdwave/safeareacontext/SerializationUtils;->rectToJavaMap(Ldevmenu/com/th3rdwave/safeareacontext/Rect;)Ljava/util/Map;

    move-result-object v6

    .line 29
    const-string v7, "insets"

    const-string v8, "frame"

    invoke-static {v7, v1, v8, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 28
    :cond_3
    :goto_0
    nop

    .line 27
    :goto_1
    return-object v1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 24

    .line 10
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 39
    .local v7, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 40
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    nop

    .line 42
    const/4 v0, 0x0

    .line 37
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 11
    .local v12, "$i$a$-ModuleDefinition-SafeAreaProviderManager$definition$1":I
    const-string v13, "RNCSafeAreaProvider"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 12
    new-instance v13, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$1$1;

    invoke-direct {v13, v1}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$1$1;-><init>(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 15
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v14, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .local v13, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .local v14, "viewClass$iv":Lkotlin/reflect/KClass;
    const/4 v15, 0x0

    .line 43
    .local v15, "$i$f$View":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 44
    nop

    .line 45
    new-instance v23, Lexpo/modules/kotlin/types/LazyKType;

    const-class v17, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    .line 43
    sget-object v17, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;->INSTANCE:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;

    move-object/from16 v20, v17

    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 45
    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v22}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v23

    check-cast v1, Lkotlin/reflect/KType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    invoke-virtual {v13}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v2

    .line 43
    invoke-direct {v0, v14, v1, v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 49
    .local v0, "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    invoke-static {v0}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 51
    move-object v1, v0

    .local v1, "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v2, 0x0

    .line 16
    .local v2, "$i$a$-View-SafeAreaProviderManager$definition$1$2":I
    move/from16 v18, v2

    .end local v2    # "$i$a$-View-SafeAreaProviderManager$definition$1$2":I
    .local v18, "$i$a$-View-SafeAreaProviderManager$definition$1$2":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v19, "onInsetsChange"

    const/16 v20, 0x0

    aput-object v19, v2, v20

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 17
    nop

    .line 51
    .end local v1    # "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v18    # "$i$a$-View-SafeAreaProviderManager$definition$1$2":I
    nop

    .line 52
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v1

    invoke-virtual {v13, v1}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 53
    nop

    .line 18
    .end local v0    # "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v14    # "viewClass$iv":Lkotlin/reflect/KClass;
    .end local v15    # "$i$f$View":I
    nop

    .line 37
    .end local v11    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-SafeAreaProviderManager$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 54
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 42
    nop

    .line 39
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 38
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 37
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 18
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    return-object v0

    .line 54
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
