.class final Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
.super Ljava/lang/Object;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/clipboard/ClipboardModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClipboardEventEmitter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n1#2:256\n12#3:257\n1549#4:258\n1620#4,3:259\n*S KotlinDebug\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter\n*L\n159#1:257\n187#1:258\n187#1:259,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0001J\r\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;",
        "",
        "(Lexpo/modules/clipboard/ClipboardModule;)V",
        "isListening",
        "",
        "listener",
        "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
        "maybeClipboardManager",
        "Landroid/content/ClipboardManager;",
        "timestamp",
        "",
        "attachListener",
        "detachListener",
        "",
        "()Lkotlin/Unit;",
        "pauseListening",
        "resumeListening",
        "expo-clipboard_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isListening:Z

.field private final listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private final maybeClipboardManager:Landroid/content/ClipboardManager;

.field final synthetic this$0:Lexpo/modules/clipboard/ClipboardModule;

.field private timestamp:J


# direct methods
.method public static synthetic $r8$lambda$-p38H5jNyXEGtaiTpKqiDpUWJco(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener$lambda$7(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 3
    .param p1, "this$0"    # Lexpo/modules/clipboard/ClipboardModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    .line 165
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    new-instance v1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    iput-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 193
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    .line 256
    .local v1, "$this$maybeClipboardManager_u24lambda_u248":Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
    const/4 v2, 0x0

    .line 193
    .local v2, "$i$a$-runCatching-ClipboardModule$ClipboardEventEmitter$maybeClipboardManager$1":I
    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object v0

    .end local v1    # "$this$maybeClipboardManager_u24lambda_u248":Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
    .end local v2    # "$i$a$-runCatching-ClipboardModule$ClipboardEventEmitter$maybeClipboardManager$1":I
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    .line 148
    return-void
.end method

.method private static final listener$lambda$7(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 13
    .param p0, "this$0"    # Lexpo/modules/clipboard/ClipboardModule;
    .param p1, "this$1"    # Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getHasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 171
    :cond_0
    nop

    .line 170
    iget-object v0, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    move-object v1, v0

    .line 256
    .local v1, "it":Landroid/content/ClipboardManager;
    const/4 v2, 0x0

    .line 170
    .local v2, "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$1":I
    iget-boolean v1, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    .end local v1    # "it":Landroid/content/ClipboardManager;
    .end local v2    # "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$1":I
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 171
    :goto_0
    if-eqz v0, :cond_8

    .line 170
    nop

    .line 171
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_8

    .line 171
    nop

    .line 172
    nop

    .local v0, "clip":Landroid/content/ClipDescription;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-let-ClipboardModule$ClipboardEventEmitter$listener$1$2":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 174
    iget-wide v3, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 175
    return-void

    .line 177
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, p1, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->timestamp:J

    .line 180
    :cond_3
    nop

    .line 181
    nop

    .line 183
    const/4 v3, 0x1

    new-array v4, v3, [Lkotlin/Pair;

    .line 184
    const/4 v5, 0x3

    new-array v5, v5, [Lexpo/modules/clipboard/ContentType;

    sget-object v6, Lexpo/modules/clipboard/ContentType;->PLAIN_TEXT:Lexpo/modules/clipboard/ContentType;

    .line 256
    move-object v7, v6

    .local v7, "it":Lexpo/modules/clipboard/ContentType;
    const/4 v8, 0x0

    .line 184
    .local v8, "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$1":I
    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$getHasTextContent(Landroid/content/ClipDescription;)Z

    move-result v7

    .end local v7    # "it":Lexpo/modules/clipboard/ContentType;
    .end local v8    # "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$1":I
    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 185
    sget-object v6, Lexpo/modules/clipboard/ContentType;->HTML:Lexpo/modules/clipboard/ContentType;

    .line 256
    move-object v8, v6

    .local v8, "it":Lexpo/modules/clipboard/ContentType;
    const/4 v9, 0x0

    .line 185
    .local v9, "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$2":I
    const-string v10, "text/html"

    invoke-virtual {v0, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    .end local v8    # "it":Lexpo/modules/clipboard/ContentType;
    .end local v9    # "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$2":I
    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    aput-object v6, v5, v3

    .line 184
    nop

    .line 186
    sget-object v3, Lexpo/modules/clipboard/ContentType;->IMAGE:Lexpo/modules/clipboard/ContentType;

    .line 256
    move-object v6, v3

    .local v6, "it":Lexpo/modules/clipboard/ContentType;
    const/4 v8, 0x0

    .line 186
    .local v8, "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$3":I
    const-string v9, "image/*"

    invoke-virtual {v0, v9}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "it":Lexpo/modules/clipboard/ContentType;
    .end local v8    # "$i$a$-takeIf-ClipboardModule$ClipboardEventEmitter$listener$1$2$3":I
    if-eqz v6, :cond_6

    move-object v2, v3

    :cond_6
    const/4 v3, 0x2

    aput-object v2, v5, v3

    .line 184
    nop

    .line 183
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 187
    nop

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 258
    .local v3, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 259
    .local v8, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 260
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lexpo/modules/clipboard/ContentType;

    .local v11, "it":Lexpo/modules/clipboard/ContentType;
    const/4 v12, 0x0

    .line 187
    .local v12, "$i$a$-map-ClipboardModule$ClipboardEventEmitter$listener$1$2$4":I
    invoke-virtual {v11}, Lexpo/modules/clipboard/ContentType;->getJsName()Ljava/lang/String;

    move-result-object v11

    .line 260
    .end local v11    # "it":Lexpo/modules/clipboard/ContentType;
    .end local v12    # "$i$a$-map-ClipboardModule$ClipboardEventEmitter$listener$1$2$4":I
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 258
    nop

    .line 183
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    const-string v2, "contentTypes"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v4, v7

    .line 182
    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 180
    const-string v3, "onClipboardChanged"

    invoke-virtual {p0, v3, v2}, Lexpo/modules/clipboard/ClipboardModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 190
    nop

    .line 172
    .end local v0    # "clip":Landroid/content/ClipDescription;
    .end local v1    # "$i$a$-let-ClipboardModule$ClipboardEventEmitter$listener$1$2":I
    goto :goto_4

    .line 171
    :cond_8
    nop

    .line 191
    :goto_4
    return-void
.end method


# virtual methods
.method public final attachListener()Ljava/lang/Object;
    .locals 5

    .line 159
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "$this$ifNull$iv":Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .line 257
    .local v1, "$i$f$ifNull":I
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 160
    .local v2, "$i$a$-ifNull-ClipboardModule$ClipboardEventEmitter$attachListener$1":I
    invoke-static {}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'CLIPBOARD_SERVICE\' unavailable. Events won\'t be received"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 257
    .end local v2    # "$i$a$-ifNull-ClipboardModule$ClipboardEventEmitter$attachListener$1":I
    move-object v0, v2

    .line 161
    .end local v0    # "$this$ifNull$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$ifNull":I
    :cond_1
    return-object v0
.end method

.method public final detachListener()Lkotlin/Unit;
    .locals 2

    .line 163
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->maybeClipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final pauseListening()V
    .locals 1

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    .line 157
    return-void
.end method

.method public final resumeListening()V
    .locals 1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->isListening:Z

    .line 153
    return-void
.end method
