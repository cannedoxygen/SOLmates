.class final Landroidx/credentials/provider/CreateEntry$Api28Impl;
.super Ljava/lang/Object;
.source "CreateEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CreateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,487:1\n1855#2,2:488\n1855#2,2:490\n215#3,2:492\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n*L\n347#1:488,2\n388#1:490,2\n404#1:492,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0001\u00a2\u0006\u0002\u0008\tJ%\u0010\n\u001a\u0004\u0018\u00010\u00082\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0001\u00a2\u0006\u0002\u0008\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eH\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/credentials/provider/CreateEntry$Api28Impl;",
        "",
        "()V",
        "convertBundleToCredentialCountInfo",
        "",
        "",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "convertBundleToCredentialCountInfo$credentials_release",
        "convertCredentialCountInfoToBundle",
        "credentialCountInformationMap",
        "convertCredentialCountInfoToBundle$credentials_release",
        "fromSlice",
        "Landroidx/credentials/provider/CreateEntry;",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
        "createEntry",
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


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/CreateEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/CreateEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/CreateEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/CreateEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/CreateEntry$Api28Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v0, "credentialCountMap":Ljava/util/HashMap;
    if-nez p0, :cond_0

    .line 386
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bundle.keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 490
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 389
    .local v6, "$i$a$-forEach-CreateEntry$Api28Impl$convertBundleToCredentialCountInfo$1":I
    nop

    .line 390
    :try_start_0
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    const-string v8, "it"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Issue unpacking credential count info bundle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CreateEntry"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 490
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-forEach-CreateEntry$Api28Impl$convertBundleToCredentialCountInfo$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 491
    :cond_1
    nop

    .line 395
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method public static final convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 10
    .param p0, "credentialCountInformationMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "credentialCountInformationMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "foundCredentialCount":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, p0

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 492
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    move-object v6, v5

    .local v6, "it":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 405
    .local v7, "$i$a$-forEach-CreateEntry$Api28Impl$convertCredentialCountInfoToBundle$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 406
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    const/4 v0, 0x1

    .line 409
    :cond_0
    nop

    .line 492
    .end local v6    # "it":Ljava/util/Map$Entry;
    .end local v7    # "$i$a$-forEach-CreateEntry$Api28Impl$convertCredentialCountInfoToBundle$1":I
    nop

    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 493
    :cond_1
    nop

    .line 410
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v3    # "$i$f$forEach":I
    if-nez v0, :cond_2

    .line 411
    const/4 v2, 0x0

    return-object v2

    .line 413
    :cond_2
    return-object v1
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CreateEntry;
    .locals 20
    .param p0, "slice"    # Landroid/app/slice/Slice;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "accountName":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 342
    .local v2, "icon":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 343
    .local v3, "pendingIntent":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "credentialCountInfo":Ljava/lang/Object;
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v5

    check-cast v4, Ljava/util/Map;

    .line 344
    const/4 v5, 0x0

    .line 345
    .local v5, "description":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 346
    .local v6, "lastUsedTime":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 347
    .local v7, "autoSelectAllowed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, "slice.items"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 488
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v19, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v0    # "accountName":Ljava/lang/Object;
    .local v2, "accountName":Ljava/lang/Object;
    .local v3, "icon":Ljava/lang/Object;
    .local v4, "pendingIntent":Ljava/lang/Object;
    .local v5, "credentialCountInfo":Ljava/lang/Object;
    .local v6, "description":Ljava/lang/Object;
    .local v7, "lastUsedTime":Ljava/lang/Object;
    .local v19, "autoSelectAllowed":Z
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v11, v0

    check-cast v11, Landroid/app/slice/SliceItem;

    .local v11, "it":Landroid/app/slice/SliceItem;
    const/4 v12, 0x0

    .line 348
    .local v12, "$i$a$-forEach-CreateEntry$Api28Impl$fromSlice$1":I
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 349
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    .line 350
    :cond_0
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 351
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto/16 :goto_1

    .line 352
    :cond_1
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 353
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1

    .line 354
    :cond_2
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 355
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Int?>"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    .line 357
    :cond_3
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 358
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    goto :goto_1

    .line 359
    :cond_4
    const-string v14, "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE"

    invoke-virtual {v11, v14}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 360
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 362
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    goto :goto_1

    .line 363
    :cond_6
    const-string v13, "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED"

    invoke-virtual {v11, v13}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 364
    invoke-virtual {v11}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 365
    .local v13, "autoSelectValue":Ljava/lang/CharSequence;
    const-string/jumbo v14, "true"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 366
    const/4 v14, 0x1

    move/from16 v19, v14

    .line 369
    .end local v13    # "autoSelectValue":Ljava/lang/CharSequence;
    :cond_7
    :goto_1
    nop

    .line 488
    .end local v11    # "it":Landroid/app/slice/SliceItem;
    .end local v12    # "$i$a$-forEach-CreateEntry$Api28Impl$fromSlice$1":I
    nop

    .end local v0    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 489
    :cond_8
    nop

    .line 370
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    nop

    .line 371
    :try_start_0
    new-instance v0, Landroidx/credentials/provider/CreateEntry;

    .line 372
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 373
    nop

    .line 371
    move-object v11, v0

    move-object v12, v2

    move-object v13, v4

    move-object v14, v3

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fromSlice failed with: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CreateEntry"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v8, 0x0

    move-object v0, v8

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static final toSlice(Landroidx/credentials/provider/CreateEntry;)Landroid/app/slice/Slice;
    .locals 13
    .param p0, "createEntry"    # Landroidx/credentials/provider/CreateEntry;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "createEntry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getAccountName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 274
    .local v0, "accountName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 275
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 276
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v3

    .line 277
    .local v3, "lastUsedTime":Ljava/time/Instant;
    invoke-static {p0}, Landroidx/credentials/provider/CreateEntry;->access$getCredentialCountInformationMap$p(Landroidx/credentials/provider/CreateEntry;)Ljava/util/Map;

    move-result-object v4

    .line 278
    .local v4, "credentialCountInformationMap":Ljava/util/Map;
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 279
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/slice/Slice$Builder;

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 280
    new-instance v8, Landroid/app/slice/SliceSpec;

    const-string v9, "CreateEntry"

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 279
    invoke-direct {v6, v7, v8}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 282
    .local v6, "sliceBuilder":Landroid/app/slice/Slice$Builder;
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->isAutoSelectAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    const-string/jumbo v7, "true"

    goto :goto_0

    .line 285
    :cond_0
    const-string v7, "false"

    .line 282
    :goto_0
    nop

    .line 288
    .local v7, "autoSelectAllowed":Ljava/lang/String;
    nop

    .line 289
    nop

    .line 290
    const-string v8, "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 288
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v8}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 292
    if-eqz v3, :cond_1

    .line 293
    nop

    .line 294
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 295
    nop

    .line 294
    const-string v8, "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 293
    invoke-virtual {v6, v10, v11, v9, v8}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 299
    :cond_1
    if-eqz v2, :cond_2

    .line 300
    nop

    .line 301
    nop

    .line 302
    const-string v8, "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 300
    invoke-virtual {v6, v2, v9, v8}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 305
    :cond_2
    if-eqz v1, :cond_3

    .line 306
    nop

    .line 307
    nop

    .line 308
    const-string v8, "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 306
    invoke-virtual {v6, v1, v9, v8}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 311
    :cond_3
    nop

    .line 312
    nop

    .line 311
    invoke-static {v4}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v8

    .line 314
    .local v8, "credentialCountBundle":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 316
    invoke-static {v4}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v10

    .line 318
    nop

    .line 319
    nop

    .line 318
    const-string v11, "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 315
    invoke-virtual {v6, v10, v9, v11}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 323
    :cond_4
    nop

    .line 324
    nop

    .line 325
    new-instance v10, Landroid/app/slice/Slice$Builder;

    invoke-direct {v10, v6}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 326
    const-string v11, "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT"

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 327
    invoke-virtual {v10}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v10

    .line 328
    nop

    .line 323
    invoke-virtual {v6, v5, v10, v9}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 330
    move-object v11, v7

    check-cast v11, Ljava/lang/CharSequence;

    .line 331
    const-string v12, "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED"

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 329
    invoke-virtual {v10, v11, v9, v12}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 333
    invoke-virtual {v6}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v9

    const-string/jumbo v10, "sliceBuilder.build()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9
.end method
