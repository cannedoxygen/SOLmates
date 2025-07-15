.class public final Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/font/FontLoaderModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FontLoaderModule.kt\nexpo/modules/font/FontLoaderModule\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,611:1\n15#2,4:612\n35#3,10:616\n45#3,8:627\n1#4:626\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $loadedFonts$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lexpo/modules/font/FontLoaderModule;


# direct methods
.method public constructor <init>(Lexpo/modules/font/FontLoaderModule;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/font/FontLoaderModule;

    iput-object p2, p0, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->$loadedFonts$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .local v1, "p0":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 260
    .local p1, "p1":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v2    # "$i$f$enforceType":I
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .local v2, "localUri":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .local v3, "fontFamilyName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$a$-AsyncFunction-FontLoaderModule$definition$1$2":I
    iget-object v5, p0, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/font/FontLoaderModule;

    invoke-virtual {v5}, Lexpo/modules/font/FontLoaderModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 619
    .local v5, "context":Landroid/content/Context;
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "asset://"

    invoke-static {v2, v8, v0, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 622
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "substring(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 619
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 626
    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 625
    .local v7, "$i$a$-let-FontLoaderModule$definition$1$2$typeface$file$1":I
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-FontLoaderModule$definition$1$2$typeface$file$1":I
    move-object v6, v8

    .line 629
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 624
    .end local v6    # "file":Ljava/io/File;
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 619
    :goto_0
    nop

    .line 632
    .local v6, "typeface":Landroid/graphics/Typeface;
    sget-object v7, Lcom/facebook/react/common/assets/ReactFontManager;->Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    invoke-virtual {v7}, Lcom/facebook/react/common/assets/ReactFontManager$Companion;->getInstance()Lcom/facebook/react/common/assets/ReactFontManager;

    move-result-object v7

    invoke-virtual {v7, v3, v0, v6}, Lcom/facebook/react/common/assets/ReactFontManager;->setTypeface(Ljava/lang/String;ILandroid/graphics/Typeface;)V

    .line 633
    iget-object v0, p0, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->$loadedFonts$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;->$loadedFonts$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 626
    move-object v8, v7

    .local v8, "$this$definition_u24lambda_u244_u24lambda_u243_u24lambda_u242":Ljava/util/Set;
    const/4 v9, 0x0

    .line 633
    .local v9, "$i$a$-apply-FontLoaderModule$definition$1$2$1":I
    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v8    # "$this$definition_u24lambda_u244_u24lambda_u243_u24lambda_u242":Ljava/util/Set;
    .end local v9    # "$i$a$-apply-FontLoaderModule$definition$1$2$1":I
    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 634
    nop

    .end local v2    # "localUri":Ljava/lang/String;
    .end local v3    # "fontFamilyName":Ljava/lang/String;
    .end local v4    # "$i$a$-AsyncFunction-FontLoaderModule$definition$1$2":I
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 261
    return-object v0

    .line 627
    .restart local v2    # "localUri":Ljava/lang/String;
    .restart local v3    # "fontFamilyName":Ljava/lang/String;
    .restart local v4    # "$i$a$-AsyncFunction-FontLoaderModule$definition$1$2":I
    .restart local v5    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Lexpo/modules/font/FileNotFoundException;

    invoke-direct {v0, v2}, Lexpo/modules/font/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    .end local v5    # "context":Landroid/content/Context;
    :cond_2
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method
