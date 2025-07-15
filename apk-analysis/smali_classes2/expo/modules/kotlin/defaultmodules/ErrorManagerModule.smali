.class public final Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ErrorManagerModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorManagerModule.kt\nexpo/modules/kotlin/defaultmodules/ErrorManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n*L\n1#1,35:1\n61#2:36\n14#3:37\n25#3:38\n27#4,5:39\n*S KotlinDebug\n*F\n+ 1 ErrorManagerModule.kt\nexpo/modules/kotlin/defaultmodules/ErrorManagerModule\n*L\n12#1:36\n12#1:37\n12#1:38\n12#1:39,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "reportExceptionToLogBox",
        "",
        "codedException",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "reportWarningToLogBox",
        "warning",
        "",
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
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 15

    .line 12
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .local v0, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$f$ModuleDefinition":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ModuleDefinition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "blockName$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$f$trace":I
    const-string v4, "ExpoModulesCore"

    .local v4, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$f$trace":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 39
    .local v7, "$i$f$trace":I
    invoke-static {v6}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v9, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v9, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v10, v9

    .local v10, "$this$definition_u24lambda_u240":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v11, 0x0

    .line 13
    .local v11, "$i$a$-ModuleDefinition-ErrorManagerModule$definition$1":I
    const-string v12, "ExpoModulesCoreErrorManager"

    invoke-virtual {v10, v12}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 14
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "ExpoModulesCoreErrorManager.onNewException"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string v13, "ExpoModulesCoreErrorManager.onNewWarning"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-virtual {v10, v12}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 15
    nop

    .line 36
    .end local v10    # "$this$definition_u24lambda_u240":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v11    # "$i$a$-ModuleDefinition-ErrorManagerModule$definition$1":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v8    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 43
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 41
    nop

    .line 38
    .end local v6    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 37
    .end local v4    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 36
    .end local v2    # "blockName$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    nop

    .line 15
    .end local v0    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v1    # "$i$f$ModuleDefinition":I
    return-object v9

    .line 43
    .restart local v0    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v1    # "$i$f$ModuleDefinition":I
    .restart local v2    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_0
    move-exception v8

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v8
.end method

.method public final reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 5
    .param p1, "codedException"    # Lexpo/modules/kotlin/exception/CodedException;

    const-string v0, "codedException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    nop

    .line 19
    nop

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$reportExceptionToLogBox_u24lambda_u241":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-ErrorManagerModule$reportExceptionToLogBox$1":I
    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    nop

    .end local v1    # "$this$reportExceptionToLogBox_u24lambda_u241":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-ErrorManagerModule$reportExceptionToLogBox$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    nop

    .line 18
    const-string v1, "ExpoModulesCoreErrorManager.onNewException"

    invoke-virtual {p0, v1, v0}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public final reportWarningToLogBox(Ljava/lang/String;)V
    .locals 4
    .param p1, "warning"    # Ljava/lang/String;

    const-string v0, "warning"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    nop

    .line 28
    nop

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$reportWarningToLogBox_u24lambda_u242":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-apply-ErrorManagerModule$reportWarningToLogBox$1":I
    const-string v3, "message"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    nop

    .end local v1    # "$this$reportWarningToLogBox_u24lambda_u242":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-ErrorManagerModule$reportWarningToLogBox$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    nop

    .line 27
    const-string v1, "ExpoModulesCoreErrorManager.onNewWarning"

    invoke-virtual {p0, v1, v0}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
