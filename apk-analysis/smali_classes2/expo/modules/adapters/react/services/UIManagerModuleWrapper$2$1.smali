.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lexpo/modules/core/interfaces/services/UIManager$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;

.field final synthetic val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;


# direct methods
.method constructor <init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0
    .param p1, "this$1"    # Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;->this$1:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;

    iput-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;->val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;->val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    return-object v1

    .line 133
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided tag is of class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " whereas React expects tags to be integers. Are you sure you\'re providing proper argument to addUIBlock?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "E_INVALID_TAG"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v1
.end method
