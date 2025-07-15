.class public final Lexpo/modules/clipboard/ClipboardModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;,
        Lexpo/modules/clipboard/ClipboardModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 11 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 12 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 13 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 14 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n61#2:256\n14#3:257\n25#3:258\n27#4,3:259\n31#4:500\n243#5,8:262\n251#5,2:316\n259#5:318\n262#5,3:377\n233#5:380\n234#5,2:411\n233#5:459\n234#5,2:490\n172#6,6:270\n168#6:276\n158#6,8:279\n182#6,7:319\n168#6:326\n158#6,8:329\n189#6:337\n168#6:338\n158#6,8:339\n187#6:347\n172#6,6:415\n168#6:421\n158#6,8:424\n176#6:432\n172#6,6:438\n168#6:444\n158#6,8:447\n176#6:455\n143#7,2:277\n143#7,2:327\n143#7,2:422\n143#7,2:445\n13#8,6:287\n19#8,19:297\n13#8,6:348\n19#8,19:358\n13#8,6:382\n19#8,19:392\n13#8,6:461\n19#8,19:471\n8#9,4:293\n8#9,4:354\n8#9,4:388\n8#9,4:467\n26#10:381\n26#10:460\n261#11:413\n261#11:436\n27#12:414\n30#12,3:433\n27#12:437\n30#12,3:456\n110#13,2:492\n124#13,2:494\n138#13,2:496\n131#13,2:498\n1#14:501\n*S KotlinDebug\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n36#1:256\n36#1:257\n36#1:258\n36#1:259,3\n36#1:500\n40#1:262,8\n40#1:316,2\n48#1:318\n48#1:377,3\n61#1:380\n61#1:411,2\n105#1:459\n105#1:490,2\n40#1:270,6\n40#1:276\n40#1:279,8\n48#1:319,7\n48#1:326\n48#1:329,8\n48#1:337\n48#1:338\n48#1:339,8\n48#1:347\n70#1:415,6\n70#1:421\n70#1:424,8\n70#1:432\n92#1:438,6\n92#1:444\n92#1:447,8\n92#1:455\n40#1:277,2\n48#1:327,2\n70#1:422,2\n92#1:445,2\n40#1:287,6\n40#1:297,19\n48#1:348,6\n48#1:358,19\n61#1:382,6\n61#1:392,19\n105#1:461,6\n105#1:471,19\n40#1:293,4\n48#1:354,4\n61#1:388,4\n105#1:467,4\n61#1:381\n105#1:460\n70#1:413\n92#1:436\n70#1:414\n70#1:433,3\n92#1:437\n92#1:456,3\n113#1:492,2\n118#1:494,2\n122#1:496,2\n126#1:498,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\t\u001a\u00060\nR\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "getClipboardCacheDir",
        "()Ljava/io/File;",
        "clipboardCacheDir$delegate",
        "Lkotlin/Lazy;",
        "clipboardEventEmitter",
        "Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "()Landroid/content/ClipboardManager;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "firstItem",
        "Landroid/content/ClipData$Item;",
        "getFirstItem",
        "(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;",
        "clipboardHasItemWithType",
        "",
        "mimeType",
        "",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "ClipboardEventEmitter",
        "expo-clipboard_debug"
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
.field private final clipboardCacheDir$delegate:Lkotlin/Lazy;

.field private clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 141
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$clipboardCacheDir$2;

    invoke-direct {v0, p0}, Lexpo/modules/clipboard/ClipboardModule$clipboardCacheDir$2;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    .line 35
    return-void
.end method

.method public static final synthetic access$clipboardHasItemWithType(Lexpo/modules/clipboard/ClipboardModule;Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->clipboardHasItemWithType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getClipboardCacheDir(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;)Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;

    .line 35
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-object v0
.end method

.method public static final synthetic access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getFirstItem(Lexpo/modules/clipboard/ClipboardModule;Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;
    .param p1, "$receiver"    # Landroid/content/ClipboardManager;

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/clipboard/ClipboardModule;
    .param p1, "<set-?>"    # Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    .line 35
    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-void
.end method

.method private final clipboardHasItemWithType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getClipboardCacheDir()Ljava/io/File;
    .locals 1

    .line 141
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    .line 138
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 139
    return-object v0

    :cond_1
    new-instance v0, Lexpo/modules/clipboard/ClipboardUnavailableException;

    invoke-direct {v0}, Lexpo/modules/clipboard/ClipboardUnavailableException;-><init>()V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-requireNotNull-ClipboardModule$context$1":I
    nop

    .line 133
    .end local v0    # "$i$a$-requireNotNull-ClipboardModule$context$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 6
    .param p1, "$this$firstItem"    # Landroid/content/ClipboardManager;

    .line 215
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v2, v0

    .line 501
    .local v2, "it":Landroid/content/ClipData;
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$a$-takeIf-ClipboardModule$firstItem$1":I
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .end local v2    # "it":Landroid/content/ClipData;
    .end local v3    # "$i$a$-takeIf-ClipboardModule$firstItem$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 32

    .line 36
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 256
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

    .line 257
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 258
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

    .line 259
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 260
    nop

    .line 261
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 37
    .local v12, "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    const-string v13, "ExpoClipboard"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 40
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getStringAsync"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 262
    .local v15, "$i$f$AsyncFunction":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const-class v0, Lexpo/modules/clipboard/GetStringOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    const-class v2, Lexpo/modules/kotlin/Promise;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 263
    :try_start_2
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v18, "$i$f$ModuleDefinition":I
    :try_start_3
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 269
    new-instance v2, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;

    invoke-direct {v2, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 263
    invoke-direct {v0, v14, v3, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    goto/16 :goto_2

    .line 500
    .end local v11    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    goto/16 :goto_9

    .end local v18    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v18    # "$i$f$ModuleDefinition":I
    goto/16 :goto_9

    .line 265
    .end local v18    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v11    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_0
    move/from16 v18, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v18    # "$i$f$ModuleDefinition":I
    :try_start_4
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    .line 270
    .local v0, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 271
    const-class v2, Lexpo/modules/clipboard/GetStringOptions;

    .line 270
    .local v2, "p0$iv$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 275
    .local v3, "$i$f$toArgsArray":I
    move-object/from16 v20, v2

    move/from16 v21, v3

    const/4 v2, 0x1

    .end local v2    # "p0$iv$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$toArgsArray":I
    .local v20, "p0$iv$iv":Ljava/lang/Class;
    .local v21, "$i$f$toArgsArray":I
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v2, 0x0

    .line 276
    .local v2, "$i$f$toAnyType":I
    sget-object v22, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v22, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 277
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v2

    .end local v2    # "$i$f$toAnyType":I
    .local v24, "$i$f$toAnyType":I
    new-instance v2, Lkotlin/Pair;

    const-class v25, Lexpo/modules/clipboard/GetStringOptions;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v26, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v26, "blockName$iv$iv":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move/from16 v25, v5

    const/16 v19, 0x0

    .end local v5    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .local v2, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 276
    .end local v2    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v22    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_1

    :try_start_7
    sget-object v2, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 279
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 280
    move/from16 v22, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Lexpo/modules/clipboard/GetStringOptions;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v27, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v27, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 282
    nop

    .line 283
    nop

    .line 280
    move/from16 v23, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v23, "$i$f$trace":I
    :try_start_9
    invoke-direct {v4, v6, v7, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 285
    nop

    .line 279
    invoke-direct {v5, v4, v0}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 286
    move-object v4, v5

    goto :goto_0

    .line 500
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v20    # "p0$iv$iv":Ljava/lang/Class;
    .end local v21    # "$i$f$toArgsArray":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$toAnyType":I
    :catchall_2
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v30, v9

    goto/16 :goto_9

    .end local v23    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v7    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    goto/16 :goto_9

    .end local v23    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_9

    .line 276
    .end local v23    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v20    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v21    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toAnyType":I
    :cond_1
    move-object/from16 v27, v6

    move/from16 v23, v7

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .end local v24    # "$i$f$toAnyType":I
    :try_start_a
    aput-object v4, v3, v2

    .line 275
    nop

    .line 274
    nop

    .line 265
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v20    # "p0$iv$iv":Ljava/lang/Class;
    .end local v21    # "$i$f$toArgsArray":I
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;

    invoke-direct {v0, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v2, v3

    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$createAsyncFunctionComponent":I
    const-class v4, Ljava/lang/String;

    .line 290
    nop

    .line 291
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v5, :cond_2

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "$i$f$enforceType":I
    nop

    .line 296
    nop

    .line 297
    .end local v4    # "$i$f$enforceType":I
    :try_start_b
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    .line 299
    :cond_2
    :try_start_c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v5, :cond_3

    .line 300
    const/4 v4, 0x0

    .line 293
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 296
    nop

    .line 301
    .end local v4    # "$i$f$enforceType":I
    :try_start_d
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 303
    :cond_3
    :try_start_e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v5, :cond_4

    .line 304
    const/4 v4, 0x0

    .line 293
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 296
    nop

    .line 305
    .end local v4    # "$i$f$enforceType":I
    :try_start_f
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1

    .line 307
    :cond_4
    :try_start_10
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_5

    .line 308
    const/4 v4, 0x0

    .line 293
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 296
    nop

    .line 309
    .end local v4    # "$i$f$enforceType":I
    :try_start_11
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_1

    .line 311
    :cond_5
    :try_start_12
    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v4, :cond_6

    .line 312
    const/4 v4, 0x0

    .line 293
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 296
    nop

    .line 313
    .end local v4    # "$i$f$enforceType":I
    :try_start_13
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_1

    .line 315
    :cond_6
    :try_start_14
    new-instance v4, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 290
    :goto_1
    move-object v0, v4

    .line 269
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "$i$f$createAsyncFunctionComponent":I
    :goto_2
    nop

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 316
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    nop

    .line 269
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 262
    nop

    .line 48
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setStringAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 318
    .local v3, "$i$f$AsyncFunction":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 319
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 320
    const-class v5, Ljava/lang/String;

    .line 319
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 321
    const-class v6, Lexpo/modules/clipboard/SetStringOptions;

    .line 319
    .local v6, "p1$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 325
    .local v7, "$i$f$toArgsArray":I
    const/4 v13, 0x2

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v14, 0x0

    .line 326
    .local v14, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v20, 0x0

    .line 327
    .local v20, "$i$f$cachedAnyType":I
    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v21, "$i$f$AsyncFunction":I
    new-instance v3, Lkotlin/Pair;

    const-class v22, Ljava/lang/String;

    move-object/from16 v24, v5

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v24, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object/from16 v22, v6

    const/16 v19, 0x0

    .end local v6    # "p1$iv$iv":Ljava/lang/Class;
    .local v22, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 326
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v20    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_7

    :try_start_15
    sget-object v3, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 329
    .local v5, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 330
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v20, Ljava/lang/String;

    move/from16 v28, v5

    .end local v5    # "$i$f$toAnyType":I
    .local v28, "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 332
    nop

    .line 333
    nop

    .line 330
    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .local v20, "$i$f$toArgsArray":I
    invoke-direct {v15, v5, v7, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 335
    nop

    .line 329
    invoke-direct {v6, v15, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 336
    move-object v5, v6

    goto :goto_3

    .line 326
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toArgsArray":I
    .end local v28    # "$i$f$toAnyType":I
    .restart local v7    # "$i$f$toArgsArray":I
    :cond_7
    move/from16 v20, v7

    .end local v7    # "$i$f$toArgsArray":I
    .restart local v20    # "$i$f$toArgsArray":I
    :goto_3
    const/4 v3, 0x0

    .end local v14    # "$i$f$toAnyType":I
    :try_start_16
    aput-object v5, v13, v3

    .line 325
    nop

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, "$i$f$toAnyType":I
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v5, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v6, 0x0

    .line 327
    .local v6, "$i$f$cachedAnyType":I
    new-instance v7, Lkotlin/Pair;

    const-class v14, Lexpo/modules/clipboard/SetStringOptions;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    move/from16 v28, v3

    const/4 v15, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v28    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v7, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v7

    .line 328
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 338
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v5    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v6    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_8

    :try_start_17
    sget-object v3, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 339
    .local v5, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 340
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Lexpo/modules/clipboard/SetStringOptions;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 342
    nop

    .line 343
    nop

    .line 340
    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 345
    nop

    .line 339
    invoke-direct {v7, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 346
    nop

    .line 338
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$toAnyType":I
    :cond_8
    const/4 v3, 0x1

    .end local v28    # "$i$f$toAnyType":I
    :try_start_18
    aput-object v7, v13, v3

    .line 325
    nop

    .line 347
    nop

    .line 318
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v20    # "$i$f$toArgsArray":I
    .end local v22    # "p1$iv$iv":Ljava/lang/Class;
    .end local v24    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;

    invoke-direct {v3, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v13

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 348
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Ljava/lang/Boolean;

    .line 351
    nop

    .line 352
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v7, :cond_9

    .line 353
    const/4 v6, 0x0

    .line 354
    .local v6, "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 358
    .end local v6    # "$i$f$enforceType":I
    :try_start_19
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto :goto_4

    .line 360
    :cond_9
    :try_start_1a
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v7, :cond_a

    .line 361
    const/4 v6, 0x0

    .line 354
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 362
    .end local v6    # "$i$f$enforceType":I
    :try_start_1b
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto :goto_4

    .line 364
    :cond_a
    :try_start_1c
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v7, :cond_b

    .line 365
    const/4 v6, 0x0

    .line 354
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 366
    .end local v6    # "$i$f$enforceType":I
    :try_start_1d
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_4

    .line 368
    :cond_b
    :try_start_1e
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-eqz v7, :cond_c

    .line 369
    const/4 v6, 0x0

    .line 354
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 370
    .end local v6    # "$i$f$enforceType":I
    :try_start_1f
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto :goto_4

    .line 372
    :cond_c
    :try_start_20
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    if-eqz v6, :cond_d

    .line 373
    const/4 v6, 0x0

    .line 354
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 374
    .end local v6    # "$i$f$enforceType":I
    :try_start_21
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    goto :goto_4

    .line 376
    :cond_d
    :try_start_22
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 351
    :goto_4
    nop

    .line 377
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    move-object v3, v6

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 378
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    nop

    .line 377
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 318
    nop

    .line 61
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasStringAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 380
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 381
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 380
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;

    invoke-direct {v4, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v6

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 382
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/Boolean;

    .line 385
    nop

    .line 386
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    if-eqz v13, :cond_e

    .line 387
    const/4 v7, 0x0

    .line 388
    .local v7, "$i$f$enforceType":I
    nop

    .line 391
    nop

    .line 392
    .end local v7    # "$i$f$enforceType":I
    :try_start_23
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto :goto_5

    .line 394
    :cond_e
    :try_start_24
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    if-eqz v13, :cond_f

    .line 395
    const/4 v7, 0x0

    .line 388
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 391
    nop

    .line 396
    .end local v7    # "$i$f$enforceType":I
    :try_start_25
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    goto :goto_5

    .line 398
    :cond_f
    :try_start_26
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    if-eqz v13, :cond_10

    .line 399
    const/4 v7, 0x0

    .line 388
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 391
    nop

    .line 400
    .end local v7    # "$i$f$enforceType":I
    :try_start_27
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    goto :goto_5

    .line 402
    :cond_10
    :try_start_28
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    if-eqz v13, :cond_11

    .line 403
    const/4 v7, 0x0

    .line 388
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 391
    nop

    .line 404
    .end local v7    # "$i$f$enforceType":I
    :try_start_29
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    goto :goto_5

    .line 406
    :cond_11
    :try_start_2a
    const-class v13, Ljava/lang/String;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    if-eqz v7, :cond_12

    .line 407
    const/4 v7, 0x0

    .line 388
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 391
    nop

    .line 408
    .end local v7    # "$i$f$enforceType":I
    :try_start_2b
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    goto :goto_5

    .line 410
    :cond_12
    :try_start_2c
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 385
    :goto_5
    nop

    .line 380
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 411
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    nop

    .line 380
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 70
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    const-string v0, "getImageAsync"

    invoke-virtual {v11, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .local v0, "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/4 v2, 0x0

    .line 413
    .local v2, "$i$f$Coroutine":I
    move-object v3, v0

    .local v3, "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/4 v4, 0x0

    .line 414
    .local v4, "$i$f$SuspendBody":I
    new-instance v5, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v7

    .line 415
    .local v7, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 416
    const-class v13, Lexpo/modules/clipboard/GetImageOptions;

    .line 415
    .local v13, "p0$iv$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 420
    .local v14, "$i$f$toArgsArray":I
    move-object/from16 v20, v0

    const/4 v15, 0x1

    .end local v0    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .local v20, "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    new-array v0, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v15, 0x0

    .line 421
    .local v15, "$i$f$toAnyType":I
    sget-object v21, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v21, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v22, 0x0

    .line 422
    .local v22, "$i$f$cachedAnyType":I
    move/from16 v24, v2

    .end local v2    # "$i$f$Coroutine":I
    .local v24, "$i$f$Coroutine":I
    new-instance v2, Lkotlin/Pair;

    const-class v28, Lexpo/modules/clipboard/GetImageOptions;

    move/from16 v29, v4

    .end local v4    # "$i$f$SuspendBody":I
    .local v29, "$i$f$SuspendBody":I
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    move-object/from16 v28, v8

    const/16 v19, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v28, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_2d
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .local v2, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v21 .. v21}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    .line 421
    .end local v2    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v21    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v22    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_13

    sget-object v2, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 424
    .local v4, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 425
    move/from16 v21, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v21, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v22, Lexpo/modules/clipboard/GetImageOptions;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    move/from16 v30, v9

    .end local v9    # "$i$f$trace":I
    .local v30, "$i$f$trace":I
    :try_start_2e
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 427
    nop

    .line 428
    nop

    .line 425
    move/from16 v22, v12

    const/4 v12, 0x0

    .end local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .local v22, "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    invoke-direct {v4, v9, v12, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 430
    nop

    .line 424
    invoke-direct {v8, v4, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 431
    move-object v4, v8

    goto :goto_6

    .line 421
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v21    # "$i$f$toAnyType":I
    .end local v22    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .end local v30    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    .restart local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    :cond_13
    move/from16 v30, v9

    move/from16 v22, v12

    .end local v9    # "$i$f$trace":I
    .end local v12    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .restart local v22    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    .restart local v30    # "$i$f$trace":I
    :goto_6
    const/4 v2, 0x0

    .end local v15    # "$i$f$toAnyType":I
    aput-object v4, v0, v2

    .line 420
    nop

    .line 432
    nop

    .line 433
    .end local v7    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v2, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 414
    invoke-direct {v5, v6, v0, v2}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 433
    move-object v0, v5

    .local v0, "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    const/4 v2, 0x0

    .line 434
    .local v2, "$i$a$-also-AsyncFunctionBuilder$SuspendBody$4$iv$iv":I
    move-object v5, v0

    check-cast v5, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 435
    nop

    .line 433
    .end local v0    # "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    .end local v2    # "$i$a$-also-AsyncFunctionBuilder$SuspendBody$4$iv$iv":I
    nop

    .line 414
    nop

    .line 413
    .end local v3    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v29    # "$i$f$SuspendBody":I
    nop

    .line 92
    .end local v20    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v24    # "$i$f$Coroutine":I
    const-string v0, "setImageAsync"

    invoke-virtual {v11, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .local v0, "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$f$Coroutine":I
    move-object v3, v0

    .restart local v3    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    const/4 v5, 0x0

    .line 437
    .local v5, "$i$f$SuspendBody":I
    new-instance v6, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 438
    .local v8, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 439
    const-class v9, Ljava/lang/String;

    .line 438
    .local v9, "p0$iv$iv$iv":Ljava/lang/Class;
    const/4 v12, 0x0

    .line 443
    .local v12, "$i$f$toArgsArray":I
    const/4 v13, 0x1

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v13, 0x0

    .line 444
    .local v13, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v20, 0x0

    .line 445
    .local v20, "$i$f$cachedAnyType":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Ljava/lang/String;

    move-object/from16 v29, v0

    .end local v0    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .local v29, "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move/from16 v24, v2

    const/16 v19, 0x0

    .end local v2    # "$i$f$Coroutine":I
    .restart local v24    # "$i$f$Coroutine":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    .line 446
    .local v0, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/AnyType;

    .line 444
    .end local v0    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v20    # "$i$f$cachedAnyType":I
    if-nez v2, :cond_14

    sget-object v0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .local v0, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/AnyType;

    .line 448
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v20, Ljava/lang/String;

    move/from16 v31, v2

    .end local v2    # "$i$f$toAnyType":I
    .local v31, "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 450
    nop

    .line 451
    nop

    .line 448
    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$SuspendBody":I
    .local v20, "$i$f$SuspendBody":I
    invoke-direct {v15, v2, v5, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 453
    nop

    .line 447
    invoke-direct {v4, v15, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 454
    move-object v2, v4

    goto :goto_7

    .line 444
    .end local v0    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$SuspendBody":I
    .end local v31    # "$i$f$toAnyType":I
    .restart local v5    # "$i$f$SuspendBody":I
    :cond_14
    move/from16 v20, v5

    .end local v5    # "$i$f$SuspendBody":I
    .restart local v20    # "$i$f$SuspendBody":I
    :goto_7
    const/4 v0, 0x0

    .end local v13    # "$i$f$toAnyType":I
    aput-object v2, v14, v0

    .line 443
    nop

    .line 455
    nop

    .line 456
    .end local v8    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v9    # "p0$iv$iv$iv":Ljava/lang/Class;
    .end local v12    # "$i$f$toArgsArray":I
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 437
    invoke-direct {v6, v7, v14, v0}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 456
    move-object v0, v6

    .local v0, "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    const/4 v2, 0x0

    .line 457
    .local v2, "$i$a$-also-AsyncFunctionBuilder$SuspendBody$4$iv$iv":I
    move-object v4, v0

    check-cast v4, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 458
    nop

    .line 456
    .end local v0    # "it$iv$iv":Lexpo/modules/kotlin/functions/SuspendFunctionComponent;
    .end local v2    # "$i$a$-also-AsyncFunctionBuilder$SuspendBody$4$iv$iv":I
    nop

    .line 437
    nop

    .line 436
    .end local v3    # "this_$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    .end local v20    # "$i$f$SuspendBody":I
    nop

    .line 105
    .end local v24    # "$i$f$Coroutine":I
    .end local v29    # "$this$Coroutine$iv":Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasImageAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 459
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 459
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;

    invoke-direct {v4, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v6

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 461
    .restart local v6    # "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/Boolean;

    .line 464
    nop

    .line 465
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 466
    const/4 v7, 0x0

    .line 467
    .local v7, "$i$f$enforceType":I
    nop

    .line 470
    nop

    .line 471
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 473
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 474
    const/4 v7, 0x0

    .line 467
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 470
    nop

    .line 475
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 477
    :cond_16
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 478
    const/4 v7, 0x0

    .line 467
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 470
    nop

    .line 479
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 481
    :cond_17
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 482
    const/4 v7, 0x0

    .line 467
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 470
    nop

    .line 483
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 485
    :cond_18
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 486
    const/4 v7, 0x0

    .line 467
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 470
    nop

    .line 487
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 489
    :cond_19
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 464
    :goto_8
    nop

    .line 459
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 490
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    nop

    .line 459
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 111
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "onClipboardChanged"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v11, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 113
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 492
    .local v2, "$i$f$OnCreate":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;

    invoke-direct {v7, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    nop

    .line 118
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 494
    .local v2, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;

    invoke-direct {v7, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    nop

    .line 122
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnDestroy":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 496
    .local v2, "$i$f$OnActivityEntersBackground":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;

    invoke-direct {v7, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    nop

    .line 126
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnActivityEntersBackground":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 498
    .local v2, "$i$f$OnActivityEntersForeground":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;

    invoke-direct {v7, v1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    nop

    .line 130
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnActivityEntersForeground":I
    nop

    .line 256
    .end local v11    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v22    # "$i$a$-ModuleDefinition-ClipboardModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    .line 261
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 500
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 261
    nop

    .line 258
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    nop

    .line 257
    .end local v23    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 256
    .end local v25    # "$i$f$trace":I
    .end local v26    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 130
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 500
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    goto :goto_9

    .end local v30    # "$i$f$trace":I
    .local v9, "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v30, v9

    .end local v9    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v23    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_a
    move-exception v0

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_b
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    goto :goto_9

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_c
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 v28, v8

    move/from16 v30, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    :goto_9
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
