.class Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;
.super Ljava/lang/Object;
.source "TurboModuleInteropUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;,
        Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertClassToJniType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 217
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertParamClassToJniType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 140
    .local p2, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    .line 141
    const-string v0, "Z"

    return-object v0

    .line 144
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 145
    const-string v0, "I"

    return-object v0

    .line 148
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    .line 149
    const-string v0, "D"

    return-object v0

    .line 152
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 153
    const-string v0, "F"

    return-object v0

    .line 156
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_5

    const-class v0, Lcom/facebook/react/bridge/Callback;

    if-eq p2, v0, :cond_5

    const-class v0, Lcom/facebook/react/bridge/Promise;

    if-eq p2, v0, :cond_5

    const-class v0, Lcom/facebook/react/bridge/ReadableMap;

    if-eq p2, v0, :cond_5

    const-class v0, Lcom/facebook/react/bridge/ReadableArray;

    if-eq p2, v0, :cond_5

    const-class v0, Lcom/facebook/react/bridge/Dynamic;

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 169
    :cond_4
    new-instance v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse JNI signature. Detected unsupported parameter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_5
    :goto_0
    invoke-static {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->convertClassToJniType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertReturnClassToJniType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 178
    .local p2, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    .line 179
    const-string v0, "Z"

    return-object v0

    .line 182
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 183
    const-string v0, "I"

    return-object v0

    .line 186
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    .line 187
    const-string v0, "D"

    return-object v0

    .line 190
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 191
    const-string v0, "F"

    return-object v0

    .line 194
    :cond_3
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    .line 195
    const-string v0, "V"

    return-object v0

    .line 198
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_6

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_6

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_6

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_6

    const-class v0, Lcom/facebook/react/bridge/WritableMap;

    if-eq p2, v0, :cond_6

    const-class v0, Lcom/facebook/react/bridge/WritableArray;

    if-eq p2, v0, :cond_6

    const-class v0, Ljava/util/Map;

    if-ne p2, v0, :cond_5

    goto :goto_0

    .line 209
    :cond_5
    new-instance v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse JNI signature. Detected unsupported return class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_6
    :goto_0
    invoke-static {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->convertClassToJniType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createJSIReturnKind(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    .local p2, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 241
    aget-object v1, p2, v0

    const-class v2, Lcom/facebook/react/bridge/Promise;

    if-ne v1, v2, :cond_1

    .line 242
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 249
    const-string v1, "PromiseKind"

    return-object v1

    .line 243
    :cond_0
    new-instance v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    const-string v2, "Unable to parse JSI return kind. Promises must be used as last parameter only."

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_b

    const-class v0, Ljava/lang/Boolean;

    if-ne p3, v0, :cond_3

    goto :goto_3

    .line 257
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_a

    const-class v0, Ljava/lang/Double;

    if-eq p3, v0, :cond_a

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_a

    const-class v0, Ljava/lang/Float;

    if-eq p3, v0, :cond_a

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    if-ne p3, v0, :cond_4

    goto :goto_2

    .line 266
    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_5

    .line 267
    const-string v0, "StringKind"

    return-object v0

    .line 270
    :cond_5
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_6

    .line 271
    const-string v0, "VoidKind"

    return-object v0

    .line 274
    :cond_6
    const-class v0, Lcom/facebook/react/bridge/WritableMap;

    if-eq p3, v0, :cond_9

    const-class v0, Ljava/util/Map;

    if-ne p3, v0, :cond_7

    goto :goto_1

    .line 278
    :cond_7
    const-class v0, Lcom/facebook/react/bridge/WritableArray;

    if-ne p3, v0, :cond_8

    .line 279
    const-string v0, "ArrayKind"

    return-object v0

    .line 282
    :cond_8
    new-instance v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse JSI return kind. Detected unsupported return class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_9
    :goto_1
    const-string v0, "ObjectKind"

    return-object v0

    .line 263
    :cond_a
    :goto_2
    const-string v0, "NumberKind"

    return-object v0

    .line 254
    :cond_b
    :goto_3
    const-string v0, "BooleanKind"

    return-object v0
.end method

.method private static createJniSignature(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 129
    .local p2, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "jniSignature":Ljava/lang/StringBuilder;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 131
    .local v3, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v3}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->convertParamClassToJniType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .end local v3    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {p0, p1, p3}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->convertReturnClassToJniType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getJsArgCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 3
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 221
    .local p2, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 222
    aget-object v1, p2, v0

    const-class v2, Lcom/facebook/react/bridge/Promise;

    if-ne v1, v2, :cond_1

    .line 223
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 231
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 224
    :cond_0
    new-instance v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    const-string v2, "Unable to parse JavaScript arg count. Promises must be used as last parameter only."

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_2
    array-length v0, p2

    return v0
.end method

.method static getMethodDescriptorsFromModule(Lcom/facebook/react/bridge/NativeModule;)Ljava/util/List;
    .locals 15
    .param p0, "module"    # Lcom/facebook/react/bridge/NativeModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/NativeModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->getMethodsFromModule(Lcom/facebook/react/bridge/NativeModule;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "methods":[Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "methodDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v2, "methodNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 75
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Lcom/facebook/react/bridge/ReactMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/ReactMethod;

    .line 76
    .local v6, "annotation":Lcom/facebook/react/bridge/ReactMethod;
    invoke-interface {p0}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "moduleName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "methodName":Ljava/lang/String;
    const-string v9, "getConstants"

    if-nez v6, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 79
    goto :goto_2

    .line 82
    :cond_0
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 88
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 91
    .local v10, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    .line 93
    .local v11, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    const-class v9, Ljava/util/Map;

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReactMethod;->isBlockingSynchronousMethod()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v11, v9, :cond_3

    .line 98
    :cond_2
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReactMethod;->isBlockingSynchronousMethod()Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 103
    :cond_3
    :goto_1
    new-instance v9, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;

    .line 106
    invoke-static {v7, v8, v10, v11}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->createJniSignature(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-static {v7, v8, v10, v11}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->createJSIReturnKind(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    .line 108
    invoke-static {v7, v8, v10}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->getJsArgCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I

    move-result v14

    invoke-direct {v9, v8, v12, v13, v14}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "annotation":Lcom/facebook/react/bridge/ReactMethod;
    .end local v7    # "moduleName":Ljava/lang/String;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v10    # "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "annotation":Lcom/facebook/react/bridge/ReactMethod;
    .restart local v7    # "moduleName":Ljava/lang/String;
    .restart local v8    # "methodName":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Module exports two methods to JavaScript with the same name: \""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 111
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "annotation":Lcom/facebook/react/bridge/ReactMethod;
    .end local v7    # "moduleName":Ljava/lang/String;
    .end local v8    # "methodName":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private static getMethodsFromModule(Lcom/facebook/react/bridge/NativeModule;)[Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "module"    # Lcom/facebook/react/bridge/NativeModule;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 116
    .local v0, "classForMethods":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    nop

    .line 117
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 118
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v2, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    move-object v0, v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    return-object v2
.end method
