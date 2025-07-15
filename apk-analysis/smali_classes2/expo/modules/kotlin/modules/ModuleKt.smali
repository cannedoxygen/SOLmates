.class public final Lexpo/modules/kotlin/modules/ModuleKt;
.super Ljava/lang/Object;
.source "Module.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n*L\n1#1,68:1\n14#2:69\n25#2:70\n14#2:76\n25#2:77\n27#3,5:71\n27#3,5:78\n*S KotlinDebug\n*F\n+ 1 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n*L\n61#1:69\n61#1:70\n66#1:76\n66#1:77\n61#1:71,5\n66#1:78,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0019\u0008\u0004\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a+\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0019\u0008\u0004\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "ModuleConverters",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "Lexpo/modules/kotlin/modules/Module;",
        "block",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "ModuleDefinition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
        "expo-modules-core_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ModuleConverters(Lexpo/modules/kotlin/modules/Module;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 10
    .param p0, "$this$ModuleConverters"    # Lexpo/modules/kotlin/modules/Module;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/Module;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/types/TypeConverterProvider;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$ModuleConverters":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".TypeConverters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "blockName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "$i$f$trace":I
    const-string v3, "ExpoModulesCore"

    .local v3, "tag$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 77
    .local v4, "$i$f$trace":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 78
    .local v6, "$i$f$trace":I
    invoke-static {v5}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$a$-trace-ModuleKt$ModuleConverters$1":I
    const/4 v8, 0x1

    :try_start_0
    new-instance v9, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;

    invoke-direct {v9}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;-><init>()V

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->buildTypeConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v7    # "$i$a$-trace-ModuleKt$ModuleConverters$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 82
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 80
    nop

    .line 77
    .end local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    nop

    .line 76
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    nop

    .line 66
    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    return-object v9

    .line 82
    .restart local v1    # "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    :catchall_0
    move-exception v7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v7
.end method

.method public static final ModuleDefinition(Lexpo/modules/kotlin/modules/Module;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 10
    .param p0, "$this$ModuleDefinition"    # Lexpo/modules/kotlin/modules/Module;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/Module;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/modules/ModuleDefinitionData;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$ModuleDefinition":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "blockName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, "$i$f$trace":I
    const-string v3, "ExpoModulesCore"

    .local v3, "tag$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$f$trace":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, "$i$f$trace":I
    invoke-static {v5}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 72
    nop

    .line 73
    const/4 v7, 0x0

    .line 61
    .local v7, "$i$a$-trace-ModuleKt$ModuleDefinition$1":I
    const/4 v8, 0x1

    :try_start_0
    new-instance v9, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v9, p0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v7    # "$i$a$-trace-ModuleKt$ModuleDefinition$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 75
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 73
    nop

    .line 70
    .end local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    nop

    .line 69
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    nop

    .line 61
    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    return-object v9

    .line 75
    .restart local v1    # "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    :catchall_0
    move-exception v7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v7
.end method
