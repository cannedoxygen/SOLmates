.class public final Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;
.super Ljava/lang/Object;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageLoadStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,43:1\n1282#2,2:44\n*S KotlinDebug\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n*L\n40#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;",
        "",
        "()V",
        "VALUES",
        "",
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        "[Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        "fromInt",
        "value",
        "",
        "ui-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 9
    .param p1, "value"    # I

    .line 40
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object v0

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    const/4 v7, 0x0

    .line 40
    .local v7, "$i$a$-firstOrNull-ImageLoadStatus$Companion$fromInt$1":I
    invoke-virtual {v6}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->getValue()I

    move-result v8

    if-ne v8, p1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    .line 44
    .end local v6    # "it":Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .end local v7    # "$i$a$-firstOrNull-ImageLoadStatus$Companion$fromInt$1":I
    :goto_1
    if-eqz v8, :cond_1

    goto :goto_2

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const/4 v5, 0x0

    .line 40
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_2
    return-object v5
.end method
