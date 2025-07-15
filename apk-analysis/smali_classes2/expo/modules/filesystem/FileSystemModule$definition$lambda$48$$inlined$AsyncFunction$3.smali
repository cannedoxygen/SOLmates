.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,611:1\n15#2,4:612\n113#3,21:616\n134#3,36:638\n1#4:637\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

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

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .local v3, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    .line 636
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 259
    aget-object v6, v0, v4

    .line 260
    .local v6, "p1":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v0    # "$i$f$enforceType":I
    move-object v7, v6

    check-cast v7, Lexpo/modules/filesystem/InfoOptions;

    .local v7, "options":Lexpo/modules/filesystem/InfoOptions;
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .local v8, "_uriStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 616
    .local v9, "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    invoke-static {v8}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "uriStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 619
    .local v10, "uri":Landroid/net/Uri;
    move-object v11, v10

    .line 621
    .local v11, "absoluteUri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 622
    iget-object v12, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const-string v14, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lexpo/modules/filesystem/FileSystemModule;->access$parseFileUri(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v12, v11

    move-object v11, v0

    goto :goto_0

    .line 621
    :cond_0
    move-object v12, v11

    move-object v11, v0

    .line 625
    .end local v0    # "uriStr":Ljava/lang/String;
    .local v11, "uriStr":Ljava/lang/String;
    .local v12, "absoluteUri":Landroid/net/Uri;
    :goto_0
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v14, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v0, v12, v14}, Lexpo/modules/filesystem/FileSystemModule;->access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 627
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "md5"

    const-string v14, "size"

    const-string v15, "uri"

    const-string v2, "isDirectory"

    const-string v4, "exists"

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v12}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 629
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 630
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 p1, v16

    .local p1, "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u243":Landroid/os/Bundle;
    const/16 v18, 0x0

    .line 631
    .local v18, "$i$a$-apply-FileSystemModule$definition$1$2$1":I
    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v6

    const/4 v6, 0x1

    .end local v6    # "p1":Ljava/lang/Object;
    .local v3, "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u243":Landroid/os/Bundle;
    .local v19, "p0":Ljava/lang/Object;
    .local p1, "p1":Ljava/lang/Object;
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v2, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    move-object v6, v8

    move/from16 v20, v9

    .end local v8    # "_uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .local v6, "_uriStr":Ljava/lang/String;
    .local v20, "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    invoke-static {v2, v0}, Lexpo/modules/filesystem/FileSystemModule;->access$getFileSize(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v3, v14, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 635
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v8, v14

    const-string v2, "modificationTime"

    invoke-virtual {v3, v2, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 636
    invoke-virtual {v7}, Lexpo/modules/filesystem/InfoOptions;->getMd5()Ljava/lang/Boolean;

    move-result-object v2

    move-object v4, v2

    .line 637
    .local v4, "it":Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 636
    .local v8, "$i$a$-takeIf-FileSystemModule$definition$1$2$1$1":I
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "it":Ljava/lang/Boolean;
    .end local v8    # "$i$a$-takeIf-FileSystemModule$definition$1$2$1$1":I
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 637
    .local v2, "it":Z
    const/4 v4, 0x0

    .line 636
    .local v4, "$i$a$-let-FileSystemModule$definition$1$2$1$2":I
    iget-object v5, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v5, v0}, Lexpo/modules/filesystem/FileSystemModule;->access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .end local v2    # "it":Z
    .end local v4    # "$i$a$-let-FileSystemModule$definition$1$2$1$2":I
    :cond_2
    nop

    .line 630
    .end local v3    # "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u243":Landroid/os/Bundle;
    .end local v18    # "$i$a$-apply-FileSystemModule$definition$1$2$1":I
    goto/16 :goto_6

    .line 640
    .end local v19    # "p0":Ljava/lang/Object;
    .end local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .end local p1    # "p1":Ljava/lang/Object;
    .local v3, "p0":Ljava/lang/Object;
    .local v6, "p1":Ljava/lang/Object;
    .local v8, "_uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    :cond_3
    move-object/from16 v19, v3

    move-object/from16 p1, v6

    move-object v6, v8

    move/from16 v20, v9

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v8    # "_uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .local v6, "_uriStr":Ljava/lang/String;
    .restart local v19    # "p0":Ljava/lang/Object;
    .restart local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .restart local p1    # "p1":Ljava/lang/Object;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v5, v3

    .local v5, "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u244":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 641
    .local v8, "$i$a$-apply-FileSystemModule$definition$1$2$2":I
    const/4 v9, 0x0

    invoke-virtual {v5, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    invoke-virtual {v5, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    nop

    .line 640
    .end local v5    # "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u244":Landroid/os/Bundle;
    .end local v8    # "$i$a$-apply-FileSystemModule$definition$1$2$2":I
    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 645
    .end local v0    # "file":Ljava/io/File;
    .end local v19    # "p0":Ljava/lang/Object;
    .end local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .end local p1    # "p1":Ljava/lang/Object;
    .restart local v3    # "p0":Ljava/lang/Object;
    .local v6, "p1":Ljava/lang/Object;
    .local v8, "_uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 p1, v6

    move-object v6, v8

    move/from16 v20, v9

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v8    # "_uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .local v6, "_uriStr":Ljava/lang/String;
    .restart local v19    # "p0":Ljava/lang/Object;
    .restart local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .restart local p1    # "p1":Ljava/lang/Object;
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "asset"

    if-nez v0, :cond_6

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 673
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_6
    :goto_2
    nop

    .line 647
    :try_start_0
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_8

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 648
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    .line 647
    :sswitch_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 649
    :cond_7
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v10}, Lexpo/modules/filesystem/FileSystemModule;->access$openAssetInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 665
    :catch_0
    move-exception v0

    move-object v15, v10

    goto :goto_5

    .line 650
    :cond_8
    :goto_3
    :try_start_2
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v11}, Lexpo/modules/filesystem/FileSystemModule;->access$openResourceInputStream(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 647
    :goto_4
    if-eqz v0, :cond_a

    .line 653
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v8, v3

    .local v8, "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u245":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 654
    .local v9, "$i$a$-apply-FileSystemModule$definition$1$2$3":I
    const/4 v1, 0x1

    invoke-virtual {v8, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 655
    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v17, v9

    move-object v15, v10

    .end local v9    # "$i$a$-apply-FileSystemModule$definition$1$2$3":I
    .end local v10    # "uri":Landroid/net/Uri;
    .local v15, "uri":Landroid/net/Uri;
    .local v17, "$i$a$-apply-FileSystemModule$definition$1$2$3":I
    int-to-double v9, v1

    :try_start_3
    invoke-virtual {v8, v14, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 660
    invoke-virtual {v7}, Lexpo/modules/filesystem/InfoOptions;->getMd5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 661
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 662
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    const-string v9, "encodeHex(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v1    # "md5bytes":[B
    :cond_9
    nop

    .line 653
    .end local v8    # "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u245":Landroid/os/Bundle;
    .end local v17    # "$i$a$-apply-FileSystemModule$definition$1$2$3":I
    move-object/from16 v16, v3

    goto :goto_6

    .line 651
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_a
    move-object v15, v10

    .end local v10    # "uri":Landroid/net/Uri;
    .restart local v15    # "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v6    # "_uriStr":Ljava/lang/String;
    .end local v7    # "options":Lexpo/modules/filesystem/InfoOptions;
    .end local v11    # "uriStr":Ljava/lang/String;
    .end local v12    # "absoluteUri":Landroid/net/Uri;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v19    # "p0":Ljava/lang/Object;
    .end local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .end local p1    # "p1":Ljava/lang/Object;
    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 665
    .restart local v6    # "_uriStr":Ljava/lang/String;
    .restart local v7    # "options":Lexpo/modules/filesystem/InfoOptions;
    .restart local v11    # "uriStr":Ljava/lang/String;
    .restart local v12    # "absoluteUri":Landroid/net/Uri;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v19    # "p0":Ljava/lang/Object;
    .restart local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    .restart local p1    # "p1":Ljava/lang/Object;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v10    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object v15, v10

    .line 666
    .end local v10    # "uri":Landroid/net/Uri;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "uri":Landroid/net/Uri;
    :goto_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .local v3, "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u246":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 667
    .local v5, "$i$a$-apply-FileSystemModule$definition$1$2$4":I
    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    nop

    .line 666
    .end local v3    # "$this$definition_u24lambda_u2448_u24lambda_u247_u24lambda_u246":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-FileSystemModule$definition$1$2$4":I
    move-object/from16 v16, v1

    .line 261
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "_uriStr":Ljava/lang/String;
    .end local v7    # "options":Lexpo/modules/filesystem/InfoOptions;
    .end local v11    # "uriStr":Ljava/lang/String;
    .end local v12    # "absoluteUri":Landroid/net/Uri;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v20    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$2":I
    :goto_6
    return-object v16

    :sswitch_data_0
    .sparse-switch
        0x58ceaf0 -> :sswitch_1
        0x38b73479 -> :sswitch_0
    .end sparse-switch
.end method
