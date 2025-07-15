.class public final Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$$inlined$UseBorderStyleProp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CSSProps.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseBorderStyleProp(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCSSProps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt\n*L\n1#1,176:1\n1#2:177\n119#3,2:178\n118#3,5:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroid/view/View;",
        "view",
        "style",
        "",
        "invoke",
        "(Landroid/view/View;Ljava/lang/String;)V",
        "expo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$1"
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

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderStyleProp$$inlined$UseBorderStyleProp$1;->invoke(Landroid/view/View;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 177
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$a$-let-CSSPropsKt$UseBorderStyleProp$1$parsedBorderStyle$1":I
    sget-object v2, Lcom/facebook/react/uimanager/style/BorderStyle;->Companion:Lcom/facebook/react/uimanager/style/BorderStyle$Companion;

    invoke-virtual {v2, p2}, Lcom/facebook/react/uimanager/style/BorderStyle$Companion;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-CSSPropsKt$UseBorderStyleProp$1$parsedBorderStyle$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    :goto_0
    move-object v1, v0

    .local v1, "style":Lcom/facebook/react/uimanager/style/BorderStyle;
    move-object v2, p1

    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$a$-UseBorderStyleProp-CSSPropsKt$UseBorderStyleProp$2":I
    nop

    .line 179
    nop

    .line 180
    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    .line 184
    nop

    .line 111
    .end local v1    # "style":Lcom/facebook/react/uimanager/style/BorderStyle;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "$i$a$-UseBorderStyleProp-CSSPropsKt$UseBorderStyleProp$2":I
    nop

    .line 112
    return-void
.end method
