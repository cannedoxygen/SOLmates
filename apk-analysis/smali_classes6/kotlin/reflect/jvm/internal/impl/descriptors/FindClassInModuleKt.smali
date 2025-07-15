.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;
.super Ljava/lang/Object;
.source "findClassInModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfindClassInModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n1#1,66:1\n43#1,2:67\n*S KotlinDebug\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n23#1:67,2\n*E\n"
.end annotation


# direct methods
.method public static final findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 2
    .param p0, "$this$findClassAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 17
    .param p0, "$this$findClassifierAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object/from16 v0, p0

    .local v0, "$this$withResolutionAnchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$withResolutionAnchor":I
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;->getResolutionAnchorIfAny(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v4

    .line 68
    .local v4, "anchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v5, 0x1

    const-string v6, "first(...)"

    const-string v7, "pathSegments(...)"

    const-string v8, "getPackageFqName(...)"

    if-nez v4, :cond_5

    move-object v10, v0

    .local v10, "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v11, 0x0

    .line 24
    .local v11, "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v8

    .line 25
    .local v8, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v12

    .line 26
    .local v7, "segments":Ljava/util/List;
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v12

    .line 27
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v12, v13, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-nez v6, :cond_0

    .line 29
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 30
    .local v6, "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_0
    move-object v12, v6

    .line 31
    .local v12, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v7, v5, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v13, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    instance-of v14, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v14, :cond_1

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 33
    :cond_1
    move-object v14, v12

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v14

    .line 34
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v14, v13, v15}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v14

    instance-of v15, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v15, :cond_2

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 33
    :goto_1
    if-eqz v14, :cond_3

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v12, v14

    .end local v13    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_0

    .line 35
    .restart local v13    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 37
    .end local v13    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_4
    move-object v9, v12

    goto/16 :goto_7

    .line 68
    .end local v6    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v7    # "segments":Ljava/util/List;
    .end local v8    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v10    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v11    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v12    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_5
    move-object v10, v4

    .restart local v10    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v11, 0x0

    .line 24
    .restart local v11    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v12

    .line 25
    .local v12, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .local v13, "segments":Ljava/util/List;
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v14

    .line 27
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v9, v16

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v14, v15, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v9

    if-nez v9, :cond_6

    .line 29
    const/4 v9, 0x0

    goto :goto_4

    .line 30
    .local v9, "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_6
    move-object v14, v9

    .line 31
    .local v14, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v13, v5, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v5, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    instance-of v1, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v1, :cond_7

    const/4 v9, 0x0

    goto :goto_4

    .line 33
    :cond_7
    move-object v1, v14

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    .line 34
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v2, v16

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v1, v5, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 33
    :goto_3
    if-eqz v1, :cond_9

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v14, v1

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .end local v5    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_2

    .line 35
    .restart local v5    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 37
    .end local v5    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_a
    move-object v9, v14

    .line 68
    .end local v9    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v10    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v11    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v12    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v13    # "segments":Ljava/util/List;
    .end local v14    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :goto_4
    if-nez v9, :cond_10

    move-object v1, v0

    .local v1, "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v5

    .line 25
    .local v5, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v8

    .line 26
    .restart local v7    # "segments":Ljava/util/List;
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v8

    .line 27
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v8, v9, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-nez v6, :cond_b

    .line 29
    const/4 v9, 0x0

    goto :goto_7

    .line 30
    .restart local v6    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_b
    move-object v8, v6

    .line 31
    .local v8, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v7, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v10, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    instance-of v11, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v11, :cond_c

    const/4 v9, 0x0

    goto :goto_7

    .line 33
    :cond_c
    move-object v11, v8

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v11

    .line 34
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v11, v10, v12}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v11

    instance-of v12, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v12, :cond_d

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    .line 33
    :goto_6
    if-eqz v11, :cond_e

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v8, v11

    .end local v10    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_5

    .line 35
    .restart local v10    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 37
    .end local v10    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_f
    move-object v9, v8

    .line 68
    .end local v1    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v2    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v5    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v6    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v7    # "segments":Ljava/util/List;
    .end local v8    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_10
    :goto_7
    nop

    .line 38
    .end local v0    # "$this$withResolutionAnchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v3    # "$i$f$withResolutionAnchor":I
    .end local v4    # "anchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    return-object v9
.end method

.method public static final findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 3
    .param p0, "$this$findNonGenericClassAcrossDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .param p2, "notFoundClasses"    # Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    .line 54
    .local v0, "existingClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "typeParametersCount":Ljava/util/List;
    invoke-virtual {p2, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public static final findTypeAliasAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;
    .locals 2
    .param p0, "$this$findTypeAliasAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
