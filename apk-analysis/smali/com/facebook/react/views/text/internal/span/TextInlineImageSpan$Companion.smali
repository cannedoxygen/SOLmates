.class public final Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan$Companion;
.super Ljava/lang/Object;
.source "TextInlineImageSpan.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInlineImageSpan.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInlineImageSpan.kt\ncom/facebook/react/views/text/internal/span/TextInlineImageSpan$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,59:1\n13309#2,2:60\n*S KotlinDebug\n*F\n+ 1 TextInlineImageSpan.kt\ncom/facebook/react/views/text/internal/span/TextInlineImageSpan$Companion\n*L\n52#1:60,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan$Companion;",
        "",
        "()V",
        "possiblyUpdateInlineImageSpans",
        "",
        "spannable",
        "Landroid/text/Spannable;",
        "view",
        "Landroid/widget/TextView;",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V
    .locals 7
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "view"    # Landroid/widget/TextView;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "spannable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getSpans(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$forEach":I
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;

    .local v5, "s":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    const/4 v6, 0x0

    .line 53
    .local v6, "$i$a$-forEach-TextInlineImageSpan$Companion$possiblyUpdateInlineImageSpans$1":I
    invoke-virtual {v5}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->onAttachedToWindow()V

    .line 54
    invoke-virtual {v5, p2}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->setTextView(Landroid/widget/TextView;)V

    .line 55
    nop

    .line 60
    .end local v5    # "s":Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;
    .end local v6    # "$i$a$-forEach-TextInlineImageSpan$Companion$possiblyUpdateInlineImageSpans$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    nop

    .line 56
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
