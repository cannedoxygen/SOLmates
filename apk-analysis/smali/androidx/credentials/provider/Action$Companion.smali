.class public final Landroidx/credentials/provider/Action$Companion;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1855#2,2:197\n*S KotlinDebug\n*F\n+ 1 Action.kt\nandroidx/credentials/provider/Action$Companion\n*L\n177#1:197,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/credentials/provider/Action$Companion;",
        "",
        "()V",
        "SLICE_HINT_PENDING_INTENT",
        "",
        "SLICE_HINT_SUBTITLE",
        "SLICE_HINT_TITLE",
        "SLICE_SPEC_REVISION",
        "",
        "SLICE_SPEC_TYPE",
        "TAG",
        "fromSlice",
        "Landroidx/credentials/provider/Action;",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
        "action",
        "credentials_release"
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/credentials/provider/Action$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/Action;
    .locals 11
    .param p1, "slice"    # Landroid/app/slice/Slice;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "slice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    .local v0, "title":Ljava/lang/Object;
    const-string v0, ""

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "subtitle":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 177
    .local v2, "pendingIntent":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "slice.items"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 197
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/app/slice/SliceItem;

    .local v7, "it":Landroid/app/slice/SliceItem;
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$a$-forEach-Action$Companion$fromSlice$1":I
    const-string v9, "androidx.credentials.provider.action.HINT_ACTION_TITLE"

    invoke-virtual {v7, v9}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 179
    invoke-virtual {v7}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    const-string v10, "it.text"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_1

    .line 180
    :cond_0
    const-string v9, "androidx.credentials.provider.action.HINT_ACTION_SUBTEXT"

    invoke-virtual {v7, v9}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 181
    invoke-virtual {v7}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 182
    :cond_1
    const-string v9, "androidx.credentials.provider.action.SLICE_HINT_PENDING_INTENT"

    invoke-virtual {v7, v9}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 183
    invoke-virtual {v7}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    .line 185
    :cond_2
    :goto_1
    nop

    .line 197
    .end local v7    # "it":Landroid/app/slice/SliceItem;
    .end local v8    # "$i$a$-forEach-Action$Companion$fromSlice$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 198
    :cond_3
    nop

    .line 187
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 188
    :try_start_0
    new-instance v3, Landroidx/credentials/provider/Action;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v2, v1}, Landroidx/credentials/provider/Action;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromSlice failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Action"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v4, 0x0

    move-object v3, v4

    .line 187
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3
.end method

.method public final toSlice(Landroidx/credentials/provider/Action;)Landroid/app/slice/Slice;
    .locals 8
    .param p1, "action"    # Landroidx/credentials/provider/Action;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroidx/credentials/provider/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroidx/credentials/provider/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    .local v1, "subtitle":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroidx/credentials/provider/Action;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 139
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/slice/Slice$Builder;

    .line 140
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v5, Landroid/app/slice/SliceSpec;

    .line 141
    nop

    .line 140
    const-string v6, "Action"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 139
    invoke-direct {v3, v4, v5}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 145
    nop

    .line 146
    const-string v4, "androidx.credentials.provider.action.HINT_ACTION_TITLE"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 144
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    .line 149
    nop

    .line 150
    const-string v4, "androidx.credentials.provider.action.HINT_ACTION_SUBTEXT"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v1, v5, v4}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    .line 139
    nop

    .line 152
    .local v3, "sliceBuilder":Landroid/app/slice/Slice$Builder;
    nop

    .line 153
    nop

    .line 154
    new-instance v4, Landroid/app/slice/Slice$Builder;

    invoke-direct {v4, v3}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 155
    const-string v6, "androidx.credentials.provider.action.SLICE_HINT_PENDING_INTENT"

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v4

    .line 157
    nop

    .line 152
    invoke-virtual {v3, v2, v4, v5}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 159
    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v4

    const-string/jumbo v5, "sliceBuilder.build()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method
