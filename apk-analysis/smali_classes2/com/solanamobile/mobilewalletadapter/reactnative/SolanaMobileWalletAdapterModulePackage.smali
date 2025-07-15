.class public final Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModulePackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "SolanaMobileWalletAdapterPackage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModulePackage;",
        "Lcom/facebook/react/TurboReactPackage;",
        "()V",
        "getModule",
        "Lcom/facebook/react/bridge/NativeModule;",
        "name",
        "",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getReactModuleInfoProvider",
        "Lcom/facebook/react/module/model/ReactModuleInfoProvider;",
        "solana-mobile_mobile-wallet-adapter-protocol_debug"
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
.method public static synthetic $r8$lambda$PnXBbJMoA2C0Bgaqa4FiNyXVBqI()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModulePackage;->getReactModuleInfoProvider$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method

.method private static final getReactModuleInfoProvider$lambda$0()Ljava/util/Map;
    .locals 10

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 22
    .local v0, "moduleInfos":Ljava/util/Map;
    nop

    .line 23
    new-instance v9, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 24
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 23
    const-string v2, "SolanaMobileWalletAdapter"

    const-string v3, "SolanaMobileWalletAdapter"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    const-string v1, "SolanaMobileWalletAdapter"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method


# virtual methods
.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "SolanaMobileWalletAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-direct {v0, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModulePackage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModulePackage$$ExternalSyntheticLambda0;-><init>()V

    .line 20
    return-object v0
.end method
