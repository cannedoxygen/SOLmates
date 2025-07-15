.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;
.super Ljava/lang/Object;
.source "CircularList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1#2:31\n1549#3:32\n1620#3,3:33\n*S KotlinDebug\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n*L\n28#1:32\n28#1:33,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;",
        "",
        "size",
        "",
        "(I)V",
        "getSize",
        "()I",
        "getPosition",
        "target",
        "isTargetAhead",
        "",
        "from",
        "length",
        "sublist",
        "",
        "animated-drawable_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    return-void
.end method


# virtual methods
.method public final getPosition(I)I
    .locals 5
    .param p1, "target"    # I

    .line 23
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    rem-int v0, p1, v0

    .line 25
    .local v0, "circularPosition":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 31
    .local v2, "it":I
    const/4 v3, 0x0

    .line 25
    .local v3, "$i$a$-takeIf-CircularList$getPosition$1":I
    if-ltz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .end local v2    # "it":I
    .end local v3    # "$i$a$-takeIf-CircularList$getPosition$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    add-int/2addr v1, v0

    :goto_2
    return v1
.end method

.method public final getSize()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    return v0
.end method

.method public final isTargetAhead(III)Z
    .locals 4
    .param p1, "from"    # I
    .param p2, "target"    # I
    .param p3, "length"    # I

    .line 13
    add-int v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    move-result v0

    .line 15
    .local v0, "endPosition":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 16
    if-gt p1, p2, :cond_0

    if-gt p2, v0, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    goto :goto_2

    .line 18
    :cond_1
    if-gt p1, p2, :cond_2

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    if-gt p2, v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_5

    if-ltz p2, :cond_3

    if-gt p2, v0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 15
    :cond_5
    :goto_2
    return v1
.end method

.method public final sublist(II)Ljava/util/List;
    .locals 10
    .param p1, "from"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 33
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 34
    .local v6, "item$iv$iv":I
    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 28
    .local v8, "$i$a$-map-CircularList$sublist$1":I
    add-int v9, p1, v7

    invoke-virtual {p0, v9}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    move-result v7

    .end local v7    # "it":I
    .end local v8    # "$i$a$-map-CircularList$sublist$1":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 34
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v6    # "item$iv$iv":I
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 32
    nop

    .line 28
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method
