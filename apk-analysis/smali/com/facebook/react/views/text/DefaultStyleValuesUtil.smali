.class public final Lcom/facebook/react/views/text/DefaultStyleValuesUtil;
.super Ljava/lang/Object;
.source "DefaultStyleValuesUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultStyleValuesUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultStyleValuesUtil.kt\ncom/facebook/react/views/text/DefaultStyleValuesUtil\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,54:1\n233#2,3:55\n*S KotlinDebug\n*F\n+ 1 DefaultStyleValuesUtil.kt\ncom/facebook/react/views/text/DefaultStyleValuesUtil\n*L\n49#1:55,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/react/views/text/DefaultStyleValuesUtil;",
        "",
        "()V",
        "getDefaultTextAttribute",
        "Landroid/content/res/ColorStateList;",
        "context",
        "Landroid/content/Context;",
        "attribute",
        "",
        "getDefaultTextColor",
        "getDefaultTextColorHighlight",
        "getDefaultTextColorHint",
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


# static fields
.field public static final INSTANCE:Lcom/facebook/react/views/text/DefaultStyleValuesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;

    invoke-direct {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->INSTANCE:Lcom/facebook/react/views/text/DefaultStyleValuesUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDefaultTextAttribute(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attribute"    # I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "obtainStyledAttributes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$a$-use-DefaultStyleValuesUtil$getDefaultTextAttribute$1":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    return-object v4
.end method

.method public static final getDefaultTextColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->INSTANCE:Lcom/facebook/react/views/text/DefaultStyleValuesUtil;

    const v1, 0x1010098

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextAttribute(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultTextColorHighlight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->INSTANCE:Lcom/facebook/react/views/text/DefaultStyleValuesUtil;

    const v1, 0x1010099

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextAttribute(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getDefaultTextColorHint(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->INSTANCE:Lcom/facebook/react/views/text/DefaultStyleValuesUtil;

    const v1, 0x101009a

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextAttribute(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
