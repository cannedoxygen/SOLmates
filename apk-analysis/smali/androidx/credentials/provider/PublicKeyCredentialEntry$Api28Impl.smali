.class final Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;
.super Ljava/lang/Object;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PublicKeyCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,440:1\n1855#2,2:441\n*S KotlinDebug\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n*L\n250#1:441,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;",
        "",
        "()V",
        "fromSlice",
        "Landroidx/credentials/provider/PublicKeyCredentialEntry;",
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
.field public static final INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .locals 26
    .param p0, "slice"    # Landroid/app/slice/Slice;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "typeDisplayName":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 241
    .local v2, "title":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 242
    .local v3, "subtitle":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 243
    .local v4, "icon":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 244
    .local v5, "pendingIntent":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 245
    .local v6, "lastUsedTime":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 246
    .local v7, "autoSelectAllowed":Z
    const/4 v8, 0x0

    .line 247
    .local v8, "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 248
    .local v9, "autoSelectAllowedFromOption":Z
    const/4 v10, 0x0

    .line 250
    .local v10, "isDefaultIcon":Z
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v11

    const-string/jumbo v12, "slice.items"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 441
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v25, v10

    move v10, v9

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v0    # "typeDisplayName":Ljava/lang/Object;
    .local v2, "typeDisplayName":Ljava/lang/Object;
    .local v3, "title":Ljava/lang/Object;
    .local v4, "subtitle":Ljava/lang/Object;
    .local v5, "icon":Ljava/lang/Object;
    .local v6, "pendingIntent":Ljava/lang/Object;
    .local v7, "lastUsedTime":Ljava/lang/Object;
    .local v8, "autoSelectAllowed":Z
    .local v9, "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    .local v10, "autoSelectAllowedFromOption":Z
    .local v25, "isDefaultIcon":Z
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v14, v0

    check-cast v14, Landroid/app/slice/SliceItem;

    .local v14, "it":Landroid/app/slice/SliceItem;
    const/4 v15, 0x0

    .line 251
    .local v15, "$i$a$-forEach-PublicKeyCredentialEntry$Api28Impl$fromSlice$1":I
    move-object/from16 v16, v0

    .end local v0    # "element$iv":Ljava/lang/Object;
    .local v16, "element$iv":Ljava/lang/Object;
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "typeDisplayName":Ljava/lang/Object;
    .local v0, "typeDisplayName":Ljava/lang/Object;
    goto/16 :goto_1

    .line 253
    .end local v0    # "typeDisplayName":Ljava/lang/Object;
    .restart local v2    # "typeDisplayName":Ljava/lang/Object;
    :cond_0
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "title":Ljava/lang/Object;
    .local v0, "title":Ljava/lang/Object;
    goto/16 :goto_1

    .line 255
    .end local v0    # "title":Ljava/lang/Object;
    .restart local v3    # "title":Ljava/lang/Object;
    :cond_1
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "subtitle":Ljava/lang/Object;
    .local v0, "subtitle":Ljava/lang/Object;
    goto/16 :goto_1

    .line 257
    .end local v0    # "subtitle":Ljava/lang/Object;
    .restart local v4    # "subtitle":Ljava/lang/Object;
    :cond_2
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "icon":Ljava/lang/Object;
    .local v0, "icon":Ljava/lang/Object;
    goto :goto_1

    .line 259
    .end local v0    # "icon":Ljava/lang/Object;
    .restart local v5    # "icon":Ljava/lang/Object;
    :cond_3
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "pendingIntent":Ljava/lang/Object;
    .local v0, "pendingIntent":Ljava/lang/Object;
    goto :goto_1

    .line 261
    .end local v0    # "pendingIntent":Ljava/lang/Object;
    .restart local v6    # "pendingIntent":Ljava/lang/Object;
    :cond_4
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    .local v0, "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    goto :goto_1

    .line 263
    .end local v0    # "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    .restart local v9    # "beginGetPublicKeyCredentialOptionId":Ljava/lang/Object;
    :cond_5
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "lastUsedTime":Ljava/lang/Object;
    .local v0, "lastUsedTime":Ljava/lang/Object;
    goto :goto_1

    .line 265
    .end local v0    # "lastUsedTime":Ljava/lang/Object;
    .restart local v7    # "lastUsedTime":Ljava/lang/Object;
    :cond_6
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v14}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    .local v0, "autoSelectValue":Ljava/lang/CharSequence;
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 268
    const/4 v0, 0x1

    move v8, v0

    .end local v8    # "autoSelectAllowed":Z
    .local v0, "autoSelectAllowed":Z
    goto :goto_1

    .line 270
    .end local v0    # "autoSelectAllowed":Z
    .restart local v8    # "autoSelectAllowed":Z
    :cond_7
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    const/4 v0, 0x1

    move v10, v0

    .end local v10    # "autoSelectAllowedFromOption":Z
    .local v0, "autoSelectAllowedFromOption":Z
    goto :goto_1

    .line 272
    .end local v0    # "autoSelectAllowedFromOption":Z
    .restart local v10    # "autoSelectAllowedFromOption":Z
    :cond_8
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-virtual {v14, v0}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    const/4 v0, 0x1

    move/from16 v25, v0

    .line 275
    :cond_9
    :goto_1
    nop

    .line 441
    .end local v14    # "it":Landroid/app/slice/SliceItem;
    .end local v15    # "$i$a$-forEach-PublicKeyCredentialEntry$Api28Impl$fromSlice$1":I
    move-object/from16 v1, p0

    .end local v16    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 442
    :cond_a
    nop

    .line 277
    .end local v11    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEach":I
    nop

    .line 278
    :try_start_0
    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    .line 279
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    nop

    .line 281
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 283
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 284
    nop

    .line 285
    nop

    .line 286
    sget-object v1, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption$Companion;

    .line 287
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 288
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 286
    invoke-virtual {v1, v11, v12}, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption$Companion;->createFromEntrySlice$credentials_release(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    move-result-object v22

    .line 290
    nop

    .line 291
    nop

    .line 278
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v23, v10

    move/from16 v24, v25

    invoke-direct/range {v14 .. v24}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fromSlice failed with: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "PublicKeyCredEntry"

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    move-object v0, v1

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static final toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;
    .locals 15
    .param p0, "entry"    # Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getUsername()Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 150
    .local v2, "subTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 151
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 152
    .local v4, "typeDisplayName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v5

    .line 153
    .local v5, "lastUsedTime":Ljava/time/Instant;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 154
    .local v6, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowed()Z

    move-result v7

    .line 155
    .local v7, "isAutoSelectAllowed":Z
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v8

    .line 157
    .local v8, "beginGetPublicKeyCredentialOption":Landroidx/credentials/provider/BeginGetCredentialOption;
    if-eqz v7, :cond_0

    .line 158
    const-string/jumbo v9, "true"

    goto :goto_0

    .line 160
    :cond_0
    const-string v9, "false"

    .line 157
    :goto_0
    nop

    .line 162
    .local v9, "autoSelectAllowed":Ljava/lang/String;
    new-instance v10, Landroid/app/slice/Slice$Builder;

    .line 163
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v12, Landroid/app/slice/SliceSpec;

    .line 164
    nop

    .line 163
    const/4 v13, 0x1

    invoke-direct {v12, v0, v13}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 162
    invoke-direct {v10, v11, v12}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 168
    nop

    .line 169
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 167
    const/4 v12, 0x0

    invoke-virtual {v10, v4, v12, v11}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 172
    nop

    .line 173
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 171
    invoke-virtual {v10, v1, v12, v11}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 176
    nop

    .line 177
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 175
    invoke-virtual {v10, v2, v12, v11}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 180
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    .line 181
    const-string v14, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 179
    invoke-virtual {v10, v11, v12, v14}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 184
    invoke-virtual {v8}, Landroidx/credentials/provider/BeginGetCredentialOption;->getId()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 185
    nop

    .line 186
    const-string v14, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 183
    invoke-virtual {v10, v11, v12, v14}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 189
    nop

    .line 190
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 188
    invoke-virtual {v10, v6, v12, v11}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v10

    .line 162
    nop

    .line 192
    .local v10, "sliceBuilder":Landroid/app/slice/Slice$Builder;
    nop

    .line 193
    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v11

    sget v14, Landroidx/credentials/R$drawable;->ic_passkey:I

    if-ne v11, v14, :cond_1

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 194
    invoke-virtual {v10, v13, v12, v11}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v11

    .line 203
    :cond_1
    :goto_1
    sget-object v11, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    .line 204
    invoke-virtual {v8}, Landroidx/credentials/provider/BeginGetCredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v14

    .line 203
    invoke-virtual {v11, v14}, Landroidx/credentials/CredentialOption$Companion;->extractAutoSelectValue$credentials_release(Landroid/os/Bundle;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 207
    invoke-virtual {v10, v13, v12, v11}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 213
    :cond_2
    if-eqz v5, :cond_3

    .line 214
    nop

    .line 215
    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v13

    .line 216
    nop

    .line 217
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 214
    invoke-virtual {v10, v13, v14, v12, v11}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 220
    :cond_3
    nop

    .line 221
    nop

    .line 222
    new-instance v11, Landroid/app/slice/Slice$Builder;

    invoke-direct {v11, v10}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 223
    const-string v13, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v11

    .line 224
    invoke-virtual {v11}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v11

    .line 225
    nop

    .line 220
    invoke-virtual {v10, v3, v11, v12}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 227
    invoke-virtual {v10}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v11

    const-string/jumbo v12, "sliceBuilder.build()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v11
.end method
