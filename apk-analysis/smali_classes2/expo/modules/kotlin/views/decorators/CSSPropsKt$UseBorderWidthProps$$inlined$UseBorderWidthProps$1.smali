.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$UseBorderWidthProps$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CSSProps.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBorderWidthProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCSSProps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1\n+ 2 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt\n*L\n1#1,176:1\n66#2,3:177\n65#2,6:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroid/view/View;",
        "view",
        "index",
        "",
        "width",
        "",
        "invoke",
        "(Landroid/view/View;ILjava/lang/Float;)V",
        "expo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1"
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

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1, v2}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$$inlined$UseBorderWidthProps$1;->invoke(Landroid/view/View;ILjava/lang/Float;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/view/View;ILjava/lang/Float;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "width"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {v0, p2}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/style/LogicalEdge;

    .local v0, "edge":Lcom/facebook/react/uimanager/style/LogicalEdge;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p3

    .local v2, "width":Ljava/lang/Float;
    const/4 v3, 0x0

    .line 177
    .local v3, "$i$a$-UseBorderWidthProps-CSSPropsKt$UseBorderWidthProps$2":I
    nop

    .line 178
    nop

    .line 179
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 180
    invoke-static {v1, v0, v4}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    .line 185
    nop

    .line 58
    .end local v0    # "edge":Lcom/facebook/react/uimanager/style/LogicalEdge;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "width":Ljava/lang/Float;
    .end local v3    # "$i$a$-UseBorderWidthProps-CSSPropsKt$UseBorderWidthProps$2":I
    nop

    .line 59
    return-void
.end method
