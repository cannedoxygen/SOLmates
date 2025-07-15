.class final Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;
.super Ljava/lang/Object;
.source "CustomCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CustomCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,458:1\n1855#2,2:459\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n*L\n243#1:459,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;",
        "",
        "()V",
        "fromSlice",
        "Landroidx/credentials/provider/CustomCredentialEntry;",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
        "entry",
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
.field public static final INSTANCE:Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;
    .locals 25
    .param p0, "slice"    # Landroid/app/slice/Slice;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "slice.spec!!.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 232
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 233
    .local v0, "typeDisplayName":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 234
    .local v3, "title":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 235
    .local v4, "subtitle":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 236
    .local v5, "icon":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 237
    .local v6, "pendingIntent":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 238
    .local v7, "lastUsedTime":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 239
    .local v8, "autoSelectAllowed":Z
    const/4 v9, 0x0

    .line 240
    .local v9, "beginGetCredentialOptionId":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 241
    .local v10, "autoSelectAllowedFromOption":Z
    const/4 v11, 0x0

    .line 243
    .local v11, "isDefaultIcon":Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "slice.items"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 459
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v0    # "typeDisplayName":Ljava/lang/Object;
    .end local v3    # "title":Ljava/lang/Object;
    .end local v4    # "subtitle":Ljava/lang/Object;
    .end local v5    # "icon":Ljava/lang/Object;
    .end local v6    # "pendingIntent":Ljava/lang/Object;
    .end local v7    # "lastUsedTime":Ljava/lang/Object;
    .end local v8    # "autoSelectAllowed":Z
    .end local v9    # "beginGetCredentialOptionId":Ljava/lang/Object;
    .end local v10    # "autoSelectAllowedFromOption":Z
    .end local v11    # "isDefaultIcon":Z
    .local v15, "typeDisplayName":Ljava/lang/Object;
    .local v16, "title":Ljava/lang/Object;
    .local v17, "subtitle":Ljava/lang/Object;
    .local v18, "icon":Ljava/lang/Object;
    .local v19, "pendingIntent":Ljava/lang/Object;
    .local v20, "lastUsedTime":Ljava/lang/Object;
    .local v21, "autoSelectAllowed":Z
    .local v22, "beginGetCredentialOptionId":Ljava/lang/Object;
    .local v23, "autoSelectAllowedFromOption":Z
    .local v24, "isDefaultIcon":Z
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Landroid/app/slice/SliceItem;

    .local v3, "it":Landroid/app/slice/SliceItem;
    const/4 v4, 0x0

    .line 244
    .local v4, "$i$a$-forEach-CustomCredentialEntry$Api28Impl$fromSlice$1":I
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v15, v5

    .end local v15    # "typeDisplayName":Ljava/lang/Object;
    .local v5, "typeDisplayName":Ljava/lang/Object;
    goto/16 :goto_1

    .line 246
    .end local v5    # "typeDisplayName":Ljava/lang/Object;
    .restart local v15    # "typeDisplayName":Ljava/lang/Object;
    :cond_0
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v16, v5

    .end local v16    # "title":Ljava/lang/Object;
    .local v5, "title":Ljava/lang/Object;
    goto/16 :goto_1

    .line 248
    .end local v5    # "title":Ljava/lang/Object;
    .restart local v16    # "title":Ljava/lang/Object;
    :cond_1
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v17, v5

    .end local v17    # "subtitle":Ljava/lang/Object;
    .local v5, "subtitle":Ljava/lang/Object;
    goto/16 :goto_1

    .line 250
    .end local v5    # "subtitle":Ljava/lang/Object;
    .restart local v17    # "subtitle":Ljava/lang/Object;
    :cond_2
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    move-object/from16 v18, v5

    .end local v18    # "icon":Ljava/lang/Object;
    .local v5, "icon":Ljava/lang/Object;
    goto :goto_1

    .line 252
    .end local v5    # "icon":Ljava/lang/Object;
    .restart local v18    # "icon":Ljava/lang/Object;
    :cond_3
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 253
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v19, v5

    .end local v19    # "pendingIntent":Ljava/lang/Object;
    .local v5, "pendingIntent":Ljava/lang/Object;
    goto :goto_1

    .line 254
    .end local v5    # "pendingIntent":Ljava/lang/Object;
    .restart local v19    # "pendingIntent":Ljava/lang/Object;
    :cond_4
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 255
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v22, v5

    .end local v22    # "beginGetCredentialOptionId":Ljava/lang/Object;
    .local v5, "beginGetCredentialOptionId":Ljava/lang/Object;
    goto :goto_1

    .line 256
    .end local v5    # "beginGetCredentialOptionId":Ljava/lang/Object;
    .restart local v22    # "beginGetCredentialOptionId":Ljava/lang/Object;
    :cond_5
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 257
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    move-object/from16 v20, v5

    .end local v20    # "lastUsedTime":Ljava/lang/Object;
    .local v5, "lastUsedTime":Ljava/lang/Object;
    goto :goto_1

    .line 258
    .end local v5    # "lastUsedTime":Ljava/lang/Object;
    .restart local v20    # "lastUsedTime":Ljava/lang/Object;
    :cond_6
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 259
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 260
    .local v5, "autoSelectValue":Ljava/lang/CharSequence;
    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 261
    const/4 v5, 0x1

    move/from16 v21, v5

    .end local v21    # "autoSelectAllowed":Z
    .local v5, "autoSelectAllowed":Z
    goto :goto_1

    .line 263
    .end local v5    # "autoSelectAllowed":Z
    .restart local v21    # "autoSelectAllowed":Z
    :cond_7
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 264
    const/4 v5, 0x1

    move/from16 v23, v5

    .end local v23    # "autoSelectAllowedFromOption":Z
    .local v5, "autoSelectAllowedFromOption":Z
    goto :goto_1

    .line 265
    .end local v5    # "autoSelectAllowedFromOption":Z
    .restart local v23    # "autoSelectAllowedFromOption":Z
    :cond_8
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-virtual {v3, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 266
    const/4 v5, 0x1

    move/from16 v24, v5

    .line 268
    :cond_9
    :goto_1
    nop

    .line 459
    .end local v3    # "it":Landroid/app/slice/SliceItem;
    .end local v4    # "$i$a$-forEach-CustomCredentialEntry$Api28Impl$fromSlice$1":I
    nop

    .end local v0    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 460
    :cond_a
    nop

    .line 270
    .end local v12    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    nop

    .line 271
    :try_start_0
    new-instance v0, Landroidx/credentials/provider/CustomCredentialEntry;

    .line 272
    nop

    .line 273
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    nop

    .line 280
    new-instance v3, Landroidx/credentials/provider/BeginGetCustomCredentialOption;

    .line 281
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    nop

    .line 283
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 280
    invoke-direct {v3, v4, v2, v5}, Landroidx/credentials/provider/BeginGetCustomCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v12, v3

    check-cast v12, Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 285
    nop

    .line 286
    nop

    .line 271
    move-object v3, v0

    move-object v4, v2

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move/from16 v7, v21

    move-object/from16 v8, v17

    move-object v9, v15

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move/from16 v13, v23

    move/from16 v14, v24

    invoke-direct/range {v3 .. v14}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromSlice failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CredentialEntry"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x0

    move-object v0, v3

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static final toSlice(Landroidx/credentials/provider/CustomCredentialEntry;)Landroid/app/slice/Slice;
    .locals 16
    .param p0, "entry"    # Landroidx/credentials/provider/CustomCredentialEntry;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "type":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 139
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 140
    .local v4, "subtitle":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 141
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 142
    .local v6, "typeDisplayName":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v7

    .line 143
    .local v7, "lastUsedTime":Ljava/time/Instant;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 144
    .local v8, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->isAutoSelectAllowed()Z

    move-result v9

    .line 145
    .local v9, "isAutoSelectAllowed":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v10

    .line 147
    .local v10, "beginGetCredentialOption":Landroidx/credentials/provider/BeginGetCredentialOption;
    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    .line 148
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "false"

    .line 147
    :goto_0
    move-object v12, v0

    .line 152
    .local v12, "autoSelectAllowed":Ljava/lang/String;
    new-instance v0, Landroid/app/slice/Slice$Builder;

    .line 153
    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v14, Landroid/app/slice/SliceSpec;

    .line 154
    nop

    .line 153
    invoke-direct {v14, v2, v11}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 152
    invoke-direct {v0, v13, v14}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 158
    nop

    .line 159
    const-string v13, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 157
    const/4 v14, 0x0

    invoke-virtual {v0, v6, v14, v13}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 162
    nop

    .line 163
    const-string v13, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 161
    invoke-virtual {v0, v3, v14, v13}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 166
    nop

    .line 167
    const-string v13, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 165
    invoke-virtual {v0, v4, v14, v13}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 170
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    .line 171
    const-string v15, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 169
    invoke-virtual {v0, v13, v14, v15}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v10}, Landroidx/credentials/provider/BeginGetCredentialOption;->getId()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 175
    nop

    .line 176
    const-string v15, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 173
    invoke-virtual {v0, v13, v14, v15}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 179
    nop

    .line 180
    const-string v13, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 178
    invoke-virtual {v0, v8, v14, v13}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 152
    move-object v13, v0

    .line 183
    .local v13, "sliceBuilder":Landroid/app/slice/Slice$Builder;
    nop

    .line 184
    :try_start_0
    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    sget v15, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    if-ne v0, v15, :cond_1

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {v13, v11, v14, v0}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :cond_1
    :goto_1
    sget-object v0, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    .line 195
    invoke-virtual {v10}, Landroidx/credentials/provider/BeginGetCredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v15

    .line 194
    invoke-virtual {v0, v15}, Landroidx/credentials/CredentialOption$Companion;->extractAutoSelectValue$credentials_release(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-virtual {v13, v11, v14, v0}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 204
    :cond_2
    if-eqz v7, :cond_3

    .line 205
    nop

    .line 206
    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v14

    .line 207
    nop

    .line 208
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 205
    const/4 v11, 0x0

    invoke-virtual {v13, v14, v15, v11, v0}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 211
    :cond_3
    nop

    .line 212
    nop

    .line 213
    new-instance v0, Landroid/app/slice/Slice$Builder;

    invoke-direct {v0, v13}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 214
    const-string v14, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v0

    .line 216
    nop

    .line 211
    const/4 v11, 0x0

    invoke-virtual {v13, v5, v0, v11}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 218
    invoke-virtual {v13}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v0

    const-string/jumbo v11, "sliceBuilder.build()"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
