.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBoxShadowProp$$inlined$UseBoxShadowProp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CSSProps.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBoxShadowProp(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCSSProps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBoxShadowProp$1\n+ 2 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt\n*L\n1#1,176:1\n157#2,2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroid/view/View;",
        "view",
        "shadows",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "invoke",
        "(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V",
        "expo/modules/kotlin/views/decorators/CSSPropsKt$UseBoxShadowProp$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 139
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBoxShadowProp$$inlined$UseBoxShadowProp$1;->invoke(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadows"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    if-nez p2, :cond_0

    .line 141
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .local v0, "shadows":Ljava/util/List;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$a$-UseBoxShadowProp-CSSPropsKt$UseBoxShadowProp$2":I
    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Ljava/util/List;)V

    .line 178
    nop

    .line 141
    .end local v0    # "shadows":Ljava/util/List;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "$i$a$-UseBoxShadowProp-CSSPropsKt$UseBoxShadowProp$2":I
    nop

    .line 142
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 146
    .local v0, "shadowStyle":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 147
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lexpo/modules/rncompatibility/RNCompatibleStaticWrapperKt;->parseBoxShadow(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)Lcom/facebook/react/uimanager/style/BoxShadow;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 148
    .local v3, "shadow":Lcom/facebook/react/uimanager/style/BoxShadow;
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v3    # "shadow":Lcom/facebook/react/uimanager/style/BoxShadow;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_2
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    .local v2, "shadows":Ljava/util/List;
    const/4 v3, 0x0

    .line 177
    .local v3, "$i$a$-UseBoxShadowProp-CSSPropsKt$UseBoxShadowProp$2":I
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Ljava/util/List;)V

    .line 178
    nop

    .line 150
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "shadows":Ljava/util/List;
    .end local v3    # "$i$a$-UseBoxShadowProp-CSSPropsKt$UseBoxShadowProp$2":I
    nop

    .line 151
    return-void
.end method
