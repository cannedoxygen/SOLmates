.class Lcom/facebook/react/LazyReactPackage$1;
.super Ljava/lang/Object;
.source "LazyReactPackage.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/LazyReactPackage;->getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/facebook/react/bridge/ModuleHolder;",
        ">;"
    }
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/facebook/react/LazyReactPackage;

.field final synthetic val$nativeModules:Ljava/util/List;

.field final synthetic val$reactModuleInfoMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/facebook/react/LazyReactPackage;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/LazyReactPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/facebook/react/LazyReactPackage$1;->this$0:Lcom/facebook/react/LazyReactPackage;

    iput-object p2, p0, Lcom/facebook/react/LazyReactPackage$1;->val$nativeModules:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/react/LazyReactPackage$1;->val$reactModuleInfoMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 p2, 0x0

    iput p2, p0, Lcom/facebook/react/LazyReactPackage$1;->position:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/facebook/react/LazyReactPackage$1;->position:I

    iget-object v1, p0, Lcom/facebook/react/LazyReactPackage$1;->val$nativeModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/facebook/react/bridge/ModuleHolder;
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/facebook/react/LazyReactPackage$1;->val$nativeModules:Ljava/util/List;

    iget v1, p0, Lcom/facebook/react/LazyReactPackage$1;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/react/LazyReactPackage$1;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ModuleSpec;

    .line 52
    .local v0, "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/react/LazyReactPackage$1;->val$reactModuleInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 55
    .local v2, "reactModuleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-nez v2, :cond_0

    .line 57
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/NativeModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .local v3, "module":Lcom/facebook/react/bridge/NativeModule;
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 62
    nop

    .line 63
    new-instance v4, Lcom/facebook/react/bridge/ModuleHolder;

    invoke-direct {v4, v3}, Lcom/facebook/react/bridge/ModuleHolder;-><init>(Lcom/facebook/react/bridge/NativeModule;)V

    move-object v3, v4

    .line 64
    .local v3, "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    goto :goto_0

    .line 61
    .end local v3    # "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 62
    throw v3

    .line 65
    :cond_0
    new-instance v3, Lcom/facebook/react/bridge/ModuleHolder;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/facebook/react/bridge/ModuleHolder;-><init>(Lcom/facebook/react/module/model/ReactModuleInfo;Ljavax/inject/Provider;)V

    .line 67
    .restart local v3    # "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    :goto_0
    return-object v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/facebook/react/LazyReactPackage$1;->next()Lcom/facebook/react/bridge/ModuleHolder;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove native modules from the list"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
