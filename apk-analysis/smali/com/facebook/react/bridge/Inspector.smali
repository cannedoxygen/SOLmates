.class public Lcom/facebook/react/bridge/Inspector;
.super Ljava/lang/Object;
.source "Inspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/Inspector$Page;,
        Lcom/facebook/react/bridge/Inspector$RemoteConnection;,
        Lcom/facebook/react/bridge/Inspector$LocalConnection;
    }
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .param p1, "hybridData"    # Lcom/facebook/jni/HybridData;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/react/bridge/Inspector;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 56
    return-void
.end method

.method public static connect(ILcom/facebook/react/bridge/Inspector$RemoteConnection;)Lcom/facebook/react/bridge/Inspector$LocalConnection;
    .locals 3
    .param p0, "pageId"    # I
    .param p1, "remote"    # Lcom/facebook/react/bridge/Inspector$RemoteConnection;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/Inspector;->instance()Lcom/facebook/react/bridge/Inspector;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/bridge/Inspector;->connectNative(ILcom/facebook/react/bridge/Inspector$RemoteConnection;)Lcom/facebook/react/bridge/Inspector$LocalConnection;

    move-result-object v0

    .line 38
    .local v0, "local":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t open failed connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "pageId":I
    .end local p1    # "remote":Lcom/facebook/react/bridge/Inspector$RemoteConnection;
    throw v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "local":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    .restart local p0    # "pageId":I
    .restart local p1    # "remote":Lcom/facebook/react/bridge/Inspector$RemoteConnection;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ReactNative"

    const-string v2, "Inspector doesn\'t work in open source yet"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private native connectNative(ILcom/facebook/react/bridge/Inspector$RemoteConnection;)Lcom/facebook/react/bridge/Inspector$LocalConnection;
.end method

.method public static getPages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/Inspector$Page;",
            ">;"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/Inspector;->instance()Lcom/facebook/react/bridge/Inspector;

    move-result-object v0

    invoke-direct {v0}, Lcom/facebook/react/bridge/Inspector;->getPagesNative()[Lcom/facebook/react/bridge/Inspector$Page;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ReactNative"

    const-string v2, "Inspector doesn\'t work in open source yet"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private native getPagesNative()[Lcom/facebook/react/bridge/Inspector$Page;
.end method

.method private static native instance()Lcom/facebook/react/bridge/Inspector;
.end method
