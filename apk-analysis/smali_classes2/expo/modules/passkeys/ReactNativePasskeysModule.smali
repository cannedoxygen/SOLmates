.class public final Lexpo/modules/passkeys/ReactNativePasskeysModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ReactNativePasskeysModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactNativePasskeysModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactNativePasskeysModule.kt\nexpo/modules/passkeys/ReactNativePasskeysModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,163:1\n61#2:164\n14#3:165\n25#3:166\n27#4,3:167\n31#4:229\n109#5:170\n110#5,2:176\n109#5:178\n110#5,2:184\n272#5:186\n275#5,3:204\n272#5:207\n275#5,3:226\n26#6:171\n26#6:179\n20#7:172\n20#7:180\n13#8,3:173\n13#8,3:181\n172#9,6:187\n168#9:193\n158#9,8:196\n172#9,6:208\n168#9:214\n158#9,8:217\n176#9:225\n143#10,2:194\n143#10,2:215\n*S KotlinDebug\n*F\n+ 1 ReactNativePasskeysModule.kt\nexpo/modules/passkeys/ReactNativePasskeysModule\n*L\n38#1:164\n38#1:165\n38#1:166\n38#1:167,3\n38#1:229\n41#1:170\n41#1:176,2\n47#1:178\n47#1:184,2\n51#1:186\n51#1:204,3\n74#1:207\n74#1:226,3\n41#1:171\n47#1:179\n41#1:172\n47#1:180\n41#1:173,3\n47#1:181,3\n51#1:187,6\n51#1:193\n51#1:196,8\n74#1:208,6\n74#1:214\n74#1:217,8\n74#1:225\n51#1:194,2\n74#1:215,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/passkeys/ReactNativePasskeysModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "mainScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getAuthenticationException",
        "",
        "e",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        "getRegistrationException",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "react-native-passkeys_debug"
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
.field private final mainScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    .line 34
    return-void
.end method

.method public static final synthetic access$getAuthenticationException(Lexpo/modules/passkeys/ReactNativePasskeysModule;Landroidx/credentials/exceptions/GetCredentialException;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/passkeys/ReactNativePasskeysModule;
    .param p1, "e"    # Landroidx/credentials/exceptions/GetCredentialException;

    .line 34
    invoke-direct {p0, p1}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->getAuthenticationException(Landroidx/credentials/exceptions/GetCredentialException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMainScope$p(Lexpo/modules/passkeys/ReactNativePasskeysModule;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/passkeys/ReactNativePasskeysModule;

    .line 34
    iget-object v0, p0, Lexpo/modules/passkeys/ReactNativePasskeysModule;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final synthetic access$getRegistrationException(Lexpo/modules/passkeys/ReactNativePasskeysModule;Landroidx/credentials/exceptions/CreateCredentialException;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/passkeys/ReactNativePasskeysModule;
    .param p1, "e"    # Landroidx/credentials/exceptions/CreateCredentialException;

    .line 34
    invoke-direct {p0, p1}, Lexpo/modules/passkeys/ReactNativePasskeysModule;->getRegistrationException(Landroidx/credentials/exceptions/CreateCredentialException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getAuthenticationException(Landroidx/credentials/exceptions/GetCredentialException;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Landroidx/credentials/exceptions/GetCredentialException;

    .line 128
    nop

    .line 129
    instance-of v0, p1, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p1

    check-cast v0, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    invoke-virtual {v0}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;->getDomError()Landroidx/credentials/exceptions/domerrors/DomError;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/credentials/exceptions/domerrors/DomError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "UserCancelled"

    goto :goto_0

    .line 137
    :cond_1
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialInterruptedException;

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "Interrupted"

    goto :goto_0

    .line 141
    :cond_2
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    if-eqz v0, :cond_3

    .line 142
    const-string v0, "NotConfigured"

    goto :goto_0

    .line 145
    :cond_3
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "UnknownError"

    goto :goto_0

    .line 149
    :cond_4
    instance-of v0, p1, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    if-eqz v0, :cond_5

    .line 150
    const-string v0, "NotSupported"

    goto :goto_0

    .line 153
    :cond_5
    instance-of v0, p1, Landroidx/credentials/exceptions/NoCredentialException;

    if-eqz v0, :cond_6

    .line 154
    const-string v0, "NoCredentials"

    goto :goto_0

    .line 158
    :cond_6
    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0
.end method

.method private final getRegistrationException(Landroidx/credentials/exceptions/CreateCredentialException;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Landroidx/credentials/exceptions/CreateCredentialException;

    .line 99
    nop

    .line 100
    instance-of v0, p1, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p1

    check-cast v0, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    invoke-virtual {v0}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;->getDomError()Landroidx/credentials/exceptions/domerrors/DomError;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/credentials/exceptions/domerrors/DomError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p1, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "UserCancelled"

    goto :goto_0

    .line 108
    :cond_1
    instance-of v0, p1, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "Interrupted"

    goto :goto_0

    .line 112
    :cond_2
    instance-of v0, p1, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    if-eqz v0, :cond_3

    .line 113
    const-string v0, "NotConfigured"

    goto :goto_0

    .line 116
    :cond_3
    instance-of v0, p1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    if-eqz v0, :cond_4

    .line 117
    const-string v0, "UnknownError"

    goto :goto_0

    .line 120
    :cond_4
    instance-of v0, p1, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    if-eqz v0, :cond_5

    .line 121
    const-string v0, "NotSupported"

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p1}, Landroidx/credentials/exceptions/CreateCredentialException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 30

    .line 38
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 164
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

    .line 165
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 166
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

    .line 167
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 168
    nop

    .line 169
    const/4 v0, 0x0

    .line 164
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 39
    .local v12, "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    const-string v13, "ReactNativePasskeys"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 41
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "isSupported"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 170
    .local v15, "$i$f$FunctionWithoutArgs":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/16 v17, 0x0

    .line 171
    .local v17, "$i$f$emptyArray":I
    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x0

    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v19, "$i$f$ModuleDefinition":I
    :try_start_1
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 170
    .end local v17    # "$i$f$emptyArray":I
    const/16 v17, 0x0

    .line 172
    .local v17, "$i$f$toReturnType":I
    sget-object v20, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v20, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v21, 0x0

    .line 173
    .local v21, "$i$f$get":I
    invoke-virtual/range {v20 .. v20}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v2

    const-class v23, Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object/from16 v24, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v24, "blockName$iv$iv":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/ReturnType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v2, :cond_0

    :try_start_3
    new-instance v2, Lexpo/modules/kotlin/types/ReturnType;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v2, v4}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v4, v2

    .local v4, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v23, 0x0

    .line 174
    .local v23, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v25, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v26, v2

    invoke-virtual/range {v25 .. v25}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v2

    const-class v25, Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_4
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    nop

    .line 173
    .end local v4    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v23    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    move-object/from16 v2, v26

    goto :goto_0

    .line 229
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$FunctionWithoutArgs":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "$i$f$toReturnType":I
    .end local v20    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v21    # "$i$f$get":I
    :catchall_0
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    goto/16 :goto_3

    .end local v27    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v5    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto/16 :goto_3

    .line 173
    .end local v27    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$FunctionWithoutArgs":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "$i$f$toReturnType":I
    .restart local v20    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .restart local v21    # "$i$f$get":I
    :cond_0
    move/from16 v27, v5

    .line 172
    .end local v5    # "$i$f$trace":I
    .end local v20    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v21    # "$i$f$get":I
    .restart local v27    # "$i$f$trace":I
    :goto_0
    nop

    .line 170
    .end local v17    # "$i$f$toReturnType":I
    :try_start_5
    new-instance v4, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v4}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v14, v3, v2, v4}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    nop

    .line 170
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 47
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$FunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isAutoFillAvailable"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$f$FunctionWithoutArgs":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x0

    .line 179
    .local v5, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 178
    .end local v5    # "$i$f$emptyArray":I
    const/4 v5, 0x0

    .line 180
    .local v5, "$i$f$toReturnType":I
    sget-object v13, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v13, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v15, 0x0

    .line 181
    .local v15, "$i$f$get":I
    move/from16 v17, v3

    .end local v3    # "$i$f$FunctionWithoutArgs":I
    .local v17, "$i$f$FunctionWithoutArgs":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v20, Ljava/lang/Object;

    move/from16 v21, v5

    .end local v5    # "$i$f$toReturnType":I
    .local v21, "$i$f$toReturnType":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/ReturnType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-nez v3, :cond_1

    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/types/ReturnType;

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v3, v5}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v5, v3

    .local v5, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v20, 0x0

    .line 182
    .local v20, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v23, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v25, v3

    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v23, Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v26, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v26, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 183
    nop

    .line 181
    .end local v5    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v20    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    move-object/from16 v3, v25

    goto :goto_1

    .line 229
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .end local v13    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v15    # "$i$f$get":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "$i$f$FunctionWithoutArgs":I
    .end local v21    # "$i$f$toReturnType":I
    :catchall_2
    move-exception v0

    move/from16 v29, v7

    move-object/from16 v21, v8

    goto/16 :goto_3

    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_3

    .line 181
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .restart local v13    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .restart local v15    # "$i$f$get":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "$i$f$FunctionWithoutArgs":I
    .restart local v21    # "$i$f$toReturnType":I
    :cond_1
    move-object/from16 v26, v6

    .line 180
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v13    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v15    # "$i$f$get":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_1
    nop

    .line 178
    .end local v21    # "$i$f$toReturnType":I
    :try_start_8
    new-instance v5, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$FunctionWithoutArgs$2;

    invoke-direct {v5}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$FunctionWithoutArgs$2;-><init>()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v14, v3, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 184
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    nop

    .line 178
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 51
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v17    # "$i$f$FunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "create"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 187
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 188
    const-class v6, LPublicKeyCredentialCreationOptions;

    .line 187
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v13, 0x0

    .line 192
    .local v13, "$i$f$toArgsArray":I
    const/4 v14, 0x1

    new-array v15, v14, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v17, 0x0

    .line 193
    .local v17, "$i$f$toAnyType":I
    sget-object v20, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v20, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v21, 0x0

    .line 194
    .local v21, "$i$f$cachedAnyType":I
    new-instance v14, Lkotlin/Pair;

    const-class v25, LPublicKeyCredentialCreationOptions;

    move/from16 v28, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v28, "$i$f$AsyncFunctionWithPromise":I
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v25, v6

    const/16 v22, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v25, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v14, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v14

    .line 195
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v20 .. v20}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 193
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v20    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v21    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_2

    sget-object v3, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 196
    .local v6, "$i$f$toAnyType":I
    new-instance v14, Lexpo/modules/kotlin/types/AnyType;

    .line 197
    move/from16 v20, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v21, LPublicKeyCredentialCreationOptions;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move/from16 v29, v7

    .end local v7    # "$i$f$trace":I
    .local v29, "$i$f$trace":I
    :try_start_9
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 199
    nop

    .line 200
    nop

    .line 197
    move-object/from16 v21, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v21, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_a
    invoke-direct {v6, v7, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 202
    nop

    .line 196
    invoke-direct {v14, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 203
    move-object v6, v14

    goto :goto_2

    .line 229
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .end local v13    # "$i$f$toArgsArray":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "$i$f$toAnyType":I
    .end local v20    # "$i$f$toAnyType":I
    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    .end local v28    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_3

    .line 193
    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    .restart local v13    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "$i$f$toAnyType":I
    .restart local v25    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v28    # "$i$f$AsyncFunctionWithPromise":I
    :cond_2
    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "$i$f$trace":I
    :goto_2
    const/4 v3, 0x0

    .end local v17    # "$i$f$toAnyType":I
    aput-object v6, v15, v3

    .line 192
    nop

    .line 191
    nop

    .line 204
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v3, v1}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 186
    invoke-direct {v4, v2, v15, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 204
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 205
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    nop

    .line 204
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 186
    nop

    .line 74
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v28    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "get"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 208
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 209
    const-class v6, LPublicKeyCredentialRequestOptions;

    .line 208
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 213
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v13, 0x0

    .line 214
    .local v13, "$i$f$toAnyType":I
    sget-object v14, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v14, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 215
    .local v15, "$i$f$cachedAnyType":I
    move/from16 v17, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v17, "$i$f$AsyncFunctionWithPromise":I
    new-instance v3, Lkotlin/Pair;

    const-class v20, LPublicKeyCredentialRequestOptions;

    move-object/from16 v23, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v23, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v25, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .local v25, "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v14}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 214
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_3

    sget-object v3, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 217
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 218
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, LPublicKeyCredentialRequestOptions;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 220
    nop

    .line 221
    nop

    .line 218
    move/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v20    # "$i$f$toAnyType":I
    invoke-direct {v14, v15, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 223
    nop

    .line 217
    invoke-direct {v7, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 224
    move-object v6, v7

    .line 214
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_3
    const/4 v3, 0x0

    .end local v13    # "$i$f$toAnyType":I
    aput-object v6, v8, v3

    .line 213
    nop

    .line 225
    nop

    .line 226
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "p0$iv$iv":Ljava/lang/Class;
    .end local v25    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v3, v1}, Lexpo/modules/passkeys/ReactNativePasskeysModule$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/passkeys/ReactNativePasskeysModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 207
    invoke-direct {v4, v2, v8, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 226
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 227
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    nop

    .line 226
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 207
    nop

    .line 96
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v17    # "$i$f$AsyncFunctionWithPromise":I
    nop

    .line 164
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ReactNativePasskeysModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 169
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 229
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 169
    nop

    .line 166
    .end local v9    # "$i$f$trace":I
    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 165
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$trace":I
    nop

    .line 164
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 96
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 229
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v29    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    goto :goto_3

    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "$i$f$trace":I
    goto :goto_3

    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "$i$f$trace":I
    goto :goto_3

    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v29    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v29    # "$i$f$trace":I
    goto :goto_3

    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v29    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v29    # "$i$f$trace":I
    goto :goto_3

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v29    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v24, v4

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v21, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v21    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v29    # "$i$f$trace":I
    :goto_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
