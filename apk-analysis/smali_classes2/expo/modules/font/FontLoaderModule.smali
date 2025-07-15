.class public Lexpo/modules/font/FontLoaderModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "FontLoaderModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontLoaderModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontLoaderModule.kt\nexpo/modules/font/FontLoaderModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 12 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 13 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 14 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 15 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n61#2:73\n14#3:74\n25#3:75\n27#4,3:76\n31#4:148\n109#5:79\n110#5,2:85\n259#5:87\n262#5,3:145\n26#6:80\n20#7:81\n13#8,3:82\n182#9,7:88\n168#9:95\n158#9,8:98\n189#9:106\n168#9:107\n158#9,8:108\n143#10,2:96\n13#11,6:116\n19#11,19:126\n8#12,4:122\n11383#13,9:149\n13309#13:158\n13310#13:160\n11392#13:161\n1#14:159\n766#15:162\n857#15,2:163\n*S KotlinDebug\n*F\n+ 1 FontLoaderModule.kt\nexpo/modules/font/FontLoaderModule\n*L\n24#1:73\n24#1:74\n24#1:75\n24#1:76,3\n24#1:148\n30#1:79\n30#1:85,2\n34#1:87\n34#1:145,3\n30#1:80\n30#1:81\n30#1:82,3\n34#1:88,7\n34#1:95\n34#1:98,8\n34#1:106\n34#1:107\n34#1:108,8\n34#1:96,2\n34#1:116,6\n34#1:126,19\n34#1:122,4\n65#1:149,9\n65#1:158\n65#1:160\n65#1:161\n65#1:159\n68#1:162\n68#1:163,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/font/FontLoaderModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "queryCustomNativeFonts",
        "",
        "",
        "expo-font_debug"
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

    .line 20
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$queryCustomNativeFonts(Lexpo/modules/font/FontLoaderModule;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/font/FontLoaderModule;

    .line 20
    invoke-direct {p0}, Lexpo/modules/font/FontLoaderModule;->queryCustomNativeFonts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lexpo/modules/font/FontLoaderModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final queryCustomNativeFonts()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p0}, Lexpo/modules/font/FontLoaderModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^(.+?)(_bold|_italic|_bold_italic)?\\.(ttf|otf)$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "fontFileRegex":Lkotlin/text/Regex;
    nop

    .line 64
    const-string v2, "fonts/"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 64
    nop

    .line 65
    nop

    .local v2, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 149
    .local v4, "$i$f$mapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 157
    .local v7, "$i$f$mapNotNullTo":I
    move-object v8, v6

    .local v8, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 158
    .local v9, "$i$f$forEach":I
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_2

    aget-object v13, v8, v12

    .local v13, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 157
    .local v15, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "fileName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 66
    .local v17, "$i$a$-mapNotNull-FontLoaderModule$queryCustomNativeFonts$1":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v0

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .local v18, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v19, v2

    .end local v2    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .local v19, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x2

    invoke-static {v1, v0, v11, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v0, v3

    .line 157
    .end local v16    # "fileName":Ljava/lang/String;
    .end local v17    # "$i$a$-mapNotNull-FontLoaderModule$queryCustomNativeFonts$1":I
    :goto_1
    if-eqz v0, :cond_1

    .line 159
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    :cond_1
    nop

    .end local v13    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    goto :goto_0

    .line 160
    .end local v18    # "assetManager":Landroid/content/res/AssetManager;
    .end local v19    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    .local v2, "$this$mapNotNull$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    .line 161
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v8    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    .restart local v18    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v19    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapNotNullTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 149
    nop

    .line 65
    .end local v4    # "$i$f$mapNotNull":I
    .end local v19    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    nop

    .line 68
    nop

    .line 65
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 68
    .local v9, "$i$a$-filter-FontLoaderModule$queryCustomNativeFonts$2":I
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 163
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-filter-FontLoaderModule$queryCustomNativeFonts$2":I
    if-nez v10, :cond_3

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 162
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    goto :goto_3

    .line 65
    .end local v18    # "assetManager":Landroid/content/res/AssetManager;
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :cond_5
    move-object/from16 v18, v0

    .line 69
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v18    # "assetManager":Landroid/content/res/AssetManager;
    :goto_3
    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 64
    :cond_6
    return-object v3
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 30

    .line 24
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 73
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

    .line 74
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 75
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

    .line 76
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    const/4 v0, 0x0

    .line 73
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 26
    .local v12, "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v13, "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-static/range {p0 .. p0}, Lexpo/modules/font/FontLoaderModule;->access$queryCustomNativeFonts(Lexpo/modules/font/FontLoaderModule;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    const-string v14, "ExpoFontLoader"

    invoke-virtual {v11, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 30
    move-object v14, v11

    check-cast v14, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v15, "getLoadedFonts"

    .local v14, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v15, "name$iv":Ljava/lang/String;
    const/16 v16, 0x0

    .line 79
    .local v16, "$i$f$FunctionWithoutArgs":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/16 v18, 0x0

    .line 80
    .local v18, "$i$f$emptyArray":I
    move-object/from16 v19, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v19, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x0

    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_1
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 79
    .end local v18    # "$i$f$emptyArray":I
    const/16 v18, 0x0

    .line 81
    .local v18, "$i$f$toReturnType":I
    sget-object v21, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v21, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v22, 0x0

    .line 82
    .local v22, "$i$f$get":I
    invoke-virtual/range {v21 .. v21}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v2

    const-class v24, Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object/from16 v25, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v25, "blockName$iv$iv":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/ReturnType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-nez v2, :cond_0

    :try_start_3
    new-instance v2, Lexpo/modules/kotlin/types/ReturnType;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v2, v4}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v4, v2

    .local v4, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v24, 0x0

    .line 83
    .local v24, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v26, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v27, v2

    invoke-virtual/range {v26 .. v26}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v2

    const-class v26, Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v28, v5

    .end local v5    # "$i$f$trace":I
    .local v28, "$i$f$trace":I
    :try_start_4
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    nop

    .line 82
    .end local v4    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v24    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    move-object/from16 v2, v27

    goto :goto_0

    .line 148
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    .end local v13    # "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v15    # "name$iv":Ljava/lang/String;
    .end local v16    # "$i$f$FunctionWithoutArgs":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v18    # "$i$f$toReturnType":I
    .end local v21    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v22    # "$i$f$get":I
    :catchall_0
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    goto/16 :goto_3

    .end local v28    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v28, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v5    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    goto/16 :goto_3

    .line 82
    .end local v28    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    .restart local v13    # "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v15    # "name$iv":Ljava/lang/String;
    .restart local v16    # "$i$f$FunctionWithoutArgs":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v18    # "$i$f$toReturnType":I
    .restart local v21    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .restart local v22    # "$i$f$get":I
    :cond_0
    move/from16 v28, v5

    .line 81
    .end local v5    # "$i$f$trace":I
    .end local v21    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v22    # "$i$f$get":I
    .restart local v28    # "$i$f$trace":I
    :goto_0
    nop

    .line 79
    .end local v18    # "$i$f$toReturnType":I
    :try_start_5
    new-instance v4, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v4, v13}, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v15, v3, v2, v4}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 79
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 34
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v15    # "name$iv":Ljava/lang/String;
    .end local v16    # "$i$f$FunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "loadAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$f$AsyncFunction":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 88
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 89
    const-class v5, Ljava/lang/String;

    .line 88
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 90
    const-class v14, Ljava/lang/String;

    .line 88
    .local v14, "p1$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 94
    .local v15, "$i$f$toArgsArray":I
    move/from16 v16, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v16, "$i$f$AsyncFunction":I
    const/4 v3, 0x2

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v18, 0x0

    .line 95
    .local v18, "$i$f$toAnyType":I
    sget-object v21, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v21, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v22, 0x0

    .line 96
    .local v22, "$i$f$cachedAnyType":I
    move-object/from16 v24, v5

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v24, "p0$iv$iv":Ljava/lang/Class;
    new-instance v5, Lkotlin/Pair;

    const-class v26, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v27, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v27, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_6
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v26, v7

    const/16 v23, 0x0

    .end local v7    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v21 .. v21}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 95
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v21    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v22    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_1

    sget-object v5, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$1;->INSTANCE:Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 98
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 99
    move/from16 v21, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v21, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v22, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v29, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v29, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 101
    nop

    .line 102
    nop

    .line 99
    move/from16 v22, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v22, "$i$f$trace":I
    :try_start_9
    invoke-direct {v6, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 104
    nop

    .line 98
    invoke-direct {v7, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 105
    move-object v6, v7

    goto :goto_1

    .line 148
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    .end local v13    # "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "p1$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v16    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v18    # "$i$f$toAnyType":I
    .end local v21    # "$i$f$toAnyType":I
    .end local v22    # "$i$f$trace":I
    .end local v24    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v9    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    goto/16 :goto_3

    .line 95
    .end local v22    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    .restart local v13    # "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v15    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$f$AsyncFunction":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v18    # "$i$f$toAnyType":I
    .restart local v24    # "p0$iv$iv":Ljava/lang/Class;
    :cond_1
    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    .end local v18    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 94
    nop

    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 96
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v21, v5

    const/16 v18, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .restart local v21    # "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v8

    .line 97
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 107
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_2

    sget-object v5, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 108
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 109
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 111
    nop

    .line 112
    nop

    .line 109
    move/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v18    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 114
    nop

    .line 108
    invoke-direct {v8, v7, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 115
    nop

    .line 107
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$toAnyType":I
    :cond_2
    nop

    .end local v21    # "$i$f$toAnyType":I
    const/4 v5, 0x1

    aput-object v8, v3, v5

    .line 94
    nop

    .line 93
    nop

    .line 87
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p1$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v24    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;

    invoke-direct {v4, v1, v13}, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/font/FontLoaderModule;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 116
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 119
    nop

    .line 120
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "$i$f$enforceType":I
    nop

    .line 125
    nop

    .line 126
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 128
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    const/4 v6, 0x0

    .line 122
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 125
    nop

    .line 130
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 132
    :cond_4
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 133
    const/4 v6, 0x0

    .line 122
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 125
    nop

    .line 134
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 136
    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    const/4 v6, 0x0

    .line 122
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 125
    nop

    .line 138
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 140
    :cond_6
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 141
    const/4 v6, 0x0

    .line 122
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 125
    nop

    .line 142
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 144
    :cond_7
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 119
    :goto_2
    nop

    .line 145
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    move-object v3, v6

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 146
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    nop

    .line 145
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 87
    nop

    .line 53
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v16    # "$i$f$AsyncFunction":I
    nop

    .line 73
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-FontLoaderModule$definition$1":I
    .end local v13    # "loadedFonts":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 78
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 148
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 78
    nop

    .line 75
    .end local v22    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 74
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 73
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    nop

    .line 53
    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 148
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v22    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_3

    .end local v22    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v22    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v22    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v22    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move/from16 v28, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v22    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v25, v4

    move/from16 v28, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v22    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v25, v4

    move/from16 v28, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v29, v8

    move/from16 v22, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v22    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
