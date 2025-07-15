.class public final Lcom/facebook/react/modules/common/ModuleDataCleaner;
.super Ljava/lang/Object;
.source "ModuleDataCleaner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDataCleaner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDataCleaner.kt\ncom/facebook/react/modules/common/ModuleDataCleaner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1855#2,2:48\n*S KotlinDebug\n*F\n+ 1 ModuleDataCleaner.kt\ncom/facebook/react/modules/common/ModuleDataCleaner\n*L\n22#1:48,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/react/modules/common/ModuleDataCleaner;",
        "",
        "()V",
        "cleanDataFromModules",
        "",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "Cleanable",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/modules/common/ModuleDataCleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/modules/common/ModuleDataCleaner;

    invoke-direct {v0}, Lcom/facebook/react/modules/common/ModuleDataCleaner;-><init>()V

    sput-object v0, Lcom/facebook/react/modules/common/ModuleDataCleaner;->INSTANCE:Lcom/facebook/react/modules/common/ModuleDataCleaner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cleanDataFromModules(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 9
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "reactContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModules()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "getNativeModules(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/bridge/NativeModule;

    .local v4, "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    const/4 v5, 0x0

    .line 23
    .local v5, "$i$a$-forEach-ModuleDataCleaner$cleanDataFromModules$1":I
    instance-of v6, v4, Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;

    if-eqz v6, :cond_0

    .line 24
    invoke-interface {v4}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleaning data from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ReactNative"

    invoke-static {v7, v6}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    move-object v6, v4

    check-cast v6, Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;

    invoke-interface {v6}, Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;->clearSensitiveData()V

    .line 27
    :cond_0
    nop

    .line 48
    .end local v4    # "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    .end local v5    # "$i$a$-forEach-ModuleDataCleaner$cleanDataFromModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 49
    :cond_1
    nop

    .line 28
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
