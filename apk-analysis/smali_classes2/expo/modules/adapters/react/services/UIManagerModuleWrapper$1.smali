.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lexpo/modules/adapters/react/services/UIBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->addUIBlock(ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

.field final synthetic val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

.field final synthetic val$tClass:Ljava/lang/Class;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    iput p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tag:I

    iput-object p3, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    iput-object p4, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 5
    .param p1, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .param p2, "uiBlockViewResolver"    # Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    .line 87
    iget v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected view for this tag not to be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    :cond_0
    :try_start_0
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    iget-object v2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected view to be of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {v1, v2}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    invoke-interface {v2, v1}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 1
    .param p1, "uiBlockViewResolver"    # Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    .line 84
    return-void
.end method

.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1
    .param p1, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    .line 79
    return-void
.end method
