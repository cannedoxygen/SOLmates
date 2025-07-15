.class public final Lexpo/modules/kotlin/jni/JavaCallback;
.super Ljava/lang/Object;
.source "JavaCallback.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaCallback.kt\nexpo/modules/kotlin/jni/JavaCallback\n*L\n1#1,121:1\n99#1,12:122\n99#1,12:134\n99#1,12:146\n99#1,12:158\n99#1,12:170\n99#1,12:182\n99#1,12:194\n99#1,12:206\n99#1,12:218\n99#1,12:230\n*S KotlinDebug\n*F\n+ 1 JavaCallback.kt\nexpo/modules/kotlin/jni/JavaCallback\n*L\n16#1:122,12\n44#1:134,12\n48#1:146,12\n52#1:158,12\n56#1:170,12\n60#1:182,12\n64#1:194,12\n68#1:206,12\n72#1:218,12\n76#1:230,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0082\u0008J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0004J\t\u0010\u000b\u001a\u00020\u0006H\u0086\u0002J\u0013\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0010H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0011H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0012H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0013H\u0086\u0002J\u0019\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0086\u0002J\u0019\u0010\u000b\u001a\u00020\u00062\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016H\u0086\u0002J\u001f\u0010\u000b\u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0017H\u0086\u0002J\u0011\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0019H\u0082 J\u0011\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001bH\u0082 J\u0011\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001dH\u0082 J\u0011\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001fH\u0082 J\t\u0010 \u001a\u00020\u0006H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020!H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\"H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020#H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0010H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0011H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0012H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0013H\u0082 J\u0019\u0010 \u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0082 J\u0019\u0010 \u001a\u00020\u00062\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016H\u0082 J\u001f\u0010 \u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0017H\u0082 R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaCallback;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "(Lcom/facebook/jni/HybridData;)V",
        "checkIfValid",
        "",
        "body",
        "Lkotlin/Function0;",
        "deallocate",
        "finalize",
        "invoke",
        "value",
        "",
        "result",
        "",
        "",
        "",
        "",
        "",
        "code",
        "errorMessage",
        "",
        "",
        "invokeDoubleArray",
        "",
        "invokeFloatArray",
        "",
        "invokeIntArray",
        "",
        "invokeLongArray",
        "",
        "invokeNative",
        "Lcom/facebook/react/bridge/WritableNativeArray;",
        "Lcom/facebook/react/bridge/WritableNativeMap;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 1
    .param p1, "mHybridData"    # Lcom/facebook/jni/HybridData;

    const-string v0, "mHybridData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private final checkIfValid(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "body"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    .local v0, "$i$f$checkIfValid":I
    nop

    .line 100
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return-void

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v2}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v2

    const-string v3, "Invalidated JavaCallback was invoked"

    invoke-virtual {v2, v3, v1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 108
    :cond_0
    throw v1
.end method

.method private final native invokeDoubleArray([D)V
.end method

.method private final native invokeFloatArray([F)V
.end method

.method private final native invokeIntArray([I)V
.end method

.method private final native invokeLongArray([J)V
.end method

.method private final native invokeNative()V
.end method

.method private final native invokeNative(D)V
.end method

.method private final native invokeNative(F)V
.end method

.method private final native invokeNative(I)V
.end method

.method private final native invokeNative(Lcom/facebook/react/bridge/WritableNativeArray;)V
.end method

.method private final native invokeNative(Lcom/facebook/react/bridge/WritableNativeMap;)V
.end method

.method private final native invokeNative(Lexpo/modules/kotlin/sharedobjects/SharedObject;)V
.end method

.method private final native invokeNative(Ljava/lang/String;)V
.end method

.method private final native invokeNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native invokeNative(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native invokeNative(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native invokeNative(Z)V
.end method


# virtual methods
.method public deallocate()V
    .locals 1

    .line 118
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 119
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->deallocate()V

    .line 115
    return-void
.end method

.method public final invoke()V
    .locals 5

    .line 44
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 135
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$2":I
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    nop

    .line 135
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$2":I
    nop

    .line 145
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    .line 137
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    nop

    .line 46
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 143
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(D)V
    .locals 5
    .param p1, "result"    # D

    .line 56
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 170
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 171
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$5":I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    nop

    .line 171
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$5":I
    nop

    .line 181
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v2

    .line 173
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    nop

    .line 58
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 179
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(F)V
    .locals 5
    .param p1, "result"    # F

    .line 60
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 183
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$6":I
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    nop

    .line 183
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$6":I
    nop

    .line 193
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    .line 185
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    nop

    .line 62
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 191
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(I)V
    .locals 5
    .param p1, "result"    # I

    .line 48
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 147
    const/4 v2, 0x0

    .line 49
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$3":I
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    nop

    .line 147
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$3":I
    nop

    .line 157
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v2

    .line 149
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    nop

    .line 50
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 155
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 16
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 123
    const/4 v2, 0x0

    .line 17
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$1":I
    :try_start_0
    sget-object v3, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    .local v3, "result":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 19
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative()V

    .line 20
    return-void

    .line 23
    :cond_0
    nop

    .line 24
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(I)V

    goto/16 :goto_0

    .line 25
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Z)V

    goto/16 :goto_0

    .line 26
    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(D)V

    goto/16 :goto_0

    .line 27
    :cond_3
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(F)V

    goto/16 :goto_0

    .line 28
    :cond_4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_5
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Collection;)V

    goto :goto_0

    .line 30
    :cond_6
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 32
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Map;)V

    goto :goto_0

    .line 33
    :cond_7
    instance-of v4, v3, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v4, :cond_8

    move-object v4, v3

    check-cast v4, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lcom/facebook/react/bridge/WritableNativeArray;)V

    goto :goto_0

    .line 34
    :cond_8
    instance-of v4, v3, Lcom/facebook/react/bridge/WritableNativeMap;

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lcom/facebook/react/bridge/WritableNativeMap;)V

    goto :goto_0

    .line 35
    :cond_9
    instance-of v4, v3, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lexpo/modules/kotlin/sharedobjects/SharedObject;)V

    goto :goto_0

    .line 36
    :cond_a
    instance-of v4, v3, [I

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, [I

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeIntArray([I)V

    goto :goto_0

    .line 37
    :cond_b
    instance-of v4, v3, [J

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, [J

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeLongArray([J)V

    goto :goto_0

    .line 38
    :cond_c
    instance-of v4, v3, [F

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, [F

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeFloatArray([F)V

    goto :goto_0

    .line 39
    :cond_d
    instance-of v4, v3, [D

    if-eqz v4, :cond_e

    move-object v4, v3

    check-cast v4, [D

    invoke-direct {p0, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeDoubleArray([D)V

    .line 42
    :goto_0
    nop

    .line 123
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$1":I
    .end local v3    # "result":Ljava/lang/Object;
    nop

    .line 133
    goto :goto_1

    .line 40
    .restart local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$1":I
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_e
    new-instance v4, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local p1    # "value":Ljava/lang/Object;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$1":I
    .end local v3    # "result":Ljava/lang/Object;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local p1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 125
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_f

    .line 128
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    nop

    .line 42
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 131
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_f
    throw v2
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 195
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$7":I
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 195
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$7":I
    nop

    .line 205
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v2

    .line 197
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    nop

    .line 66
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 203
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 231
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$10":I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    nop

    .line 231
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$10":I
    nop

    .line 241
    goto :goto_0

    .line 232
    :catchall_0
    move-exception v2

    .line 233
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    nop

    .line 78
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 239
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(Ljava/util/Collection;)V
    .locals 5
    .param p1, "result"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 206
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 207
    const/4 v2, 0x0

    .line 69
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$8":I
    :try_start_0
    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, v3}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    nop

    .line 207
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$8":I
    nop

    .line 217
    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    nop

    .line 70
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 215
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(Ljava/util/Map;)V
    .locals 5
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 218
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 219
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$9":I
    :try_start_0
    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .line 219
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$9":I
    nop

    .line 229
    goto :goto_0

    .line 220
    :catchall_0
    move-exception v2

    .line 221
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    nop

    .line 74
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 227
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method

.method public final invoke(Z)V
    .locals 5
    .param p1, "result"    # Z

    .line 52
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$f$checkIfValid":I
    nop

    .line 159
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-checkIfValid-JavaCallback$invoke$4":I
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    nop

    .line 159
    .end local v2    # "$i$a$-checkIfValid-JavaCallback$invoke$4":I
    nop

    .line 169
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v2

    .line 161
    .local v2, "e$iv":Ljava/lang/Throwable;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Invalidated JavaCallback was invoked"

    invoke-virtual {v3, v4, v2}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    nop

    .line 54
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .end local v1    # "$i$f$checkIfValid":I
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 167
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/jni/JavaCallback;
    .restart local v1    # "$i$f$checkIfValid":I
    .restart local v2    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    throw v2
.end method
