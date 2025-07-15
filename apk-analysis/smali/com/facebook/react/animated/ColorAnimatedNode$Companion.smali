.class public final Lcom/facebook/react/animated/ColorAnimatedNode$Companion;
.super Ljava/lang/Object;
.source "ColorAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/animated/ColorAnimatedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/react/animated/ColorAnimatedNode$Companion;",
        "",
        "()V",
        "getContextHelper",
        "Landroid/content/Context;",
        "node",
        "Lcom/facebook/react/animated/AnimatedNode;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/animated/ColorAnimatedNode$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContextHelper(Lcom/facebook/react/animated/ColorAnimatedNode$Companion;Lcom/facebook/react/animated/AnimatedNode;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/animated/ColorAnimatedNode$Companion;
    .param p1, "node"    # Lcom/facebook/react/animated/AnimatedNode;

    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/ColorAnimatedNode$Companion;->getContextHelper(Lcom/facebook/react/animated/AnimatedNode;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final getContextHelper(Lcom/facebook/react/animated/AnimatedNode;)Landroid/content/Context;
    .locals 5
    .param p1, "node"    # Lcom/facebook/react/animated/AnimatedNode;

    .line 98
    iget-object v0, p1, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .local v0, "children":Ljava/util/List;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-let-ColorAnimatedNode$Companion$getContextHelper$1":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/animated/AnimatedNode;

    .line 100
    .local v3, "child":Lcom/facebook/react/animated/AnimatedNode;
    instance-of v4, v3, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v4, :cond_1

    .line 101
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-virtual {v4}, Lcom/facebook/react/animated/PropsAnimatedNode;->getConnectedView()Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .end local v4    # "view":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    sget-object v1, Lcom/facebook/react/animated/ColorAnimatedNode;->Companion:Lcom/facebook/react/animated/ColorAnimatedNode$Companion;

    invoke-direct {v1, v3}, Lcom/facebook/react/animated/ColorAnimatedNode$Companion;->getContextHelper(Lcom/facebook/react/animated/AnimatedNode;)Landroid/content/Context;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 107
    .end local v3    # "child":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    nop

    .line 98
    .end local v0    # "children":Ljava/util/List;
    .end local v2    # "$i$a$-let-ColorAnimatedNode$Companion$getContextHelper$1":I
    nop

    .line 108
    :cond_3
    return-object v1
.end method
