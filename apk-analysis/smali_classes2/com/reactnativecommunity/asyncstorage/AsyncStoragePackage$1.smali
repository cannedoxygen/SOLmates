.class Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage$1;
.super Ljava/lang/Object;
.source "AsyncStoragePackage.java"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    .line 58
    iput-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage$1;->this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReactModuleInfos()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "reactModuleInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    const/4 v9, 0x0

    .line 64
    .local v9, "isTurboModule":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v10, v1

    .line 69
    .local v10, "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    array-length v11, v10

    move v12, v3

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    .line 70
    .local v13, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v1, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v13, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/facebook/react/module/annotations/ReactModule;

    .line 72
    .local v14, "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    nop

    .line 73
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 75
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v4

    .line 78
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v5

    .line 79
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->hasConstants()Z

    move-result v6

    .line 80
    invoke-interface {v14}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v7

    move-object v1, v8

    move-object/from16 v16, v10

    move-object v10, v8

    .end local v10    # "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .local v16, "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 72
    invoke-interface {v0, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v13    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v14    # "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    .line 84
    .end local v16    # "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .restart local v10    # "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    :cond_0
    return-object v0
.end method
