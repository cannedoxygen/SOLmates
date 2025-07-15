.class public final Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;
.super Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.source "ErrorType.kt"


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

.field private final debugMessage:Ljava/lang/String;

.field private final formatParams:[Ljava/lang/String;

.field private final isMarkedNullable:Z

.field private final kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

.field private final memberScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# direct methods
.method public varargs constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 3
    .param p1, "constructor"    # Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .param p2, "memberScope"    # Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .param p3, "kind"    # Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;
    .param p4, "arguments"    # Ljava/util/List;
    .param p5, "isMarkedNullable"    # Z
    .param p6, "formatParams"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;-><init>()V

    .line 13
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->constructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 14
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->memberScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 15
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 16
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->arguments:Ljava/util/List;

    .line 17
    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->isMarkedNullable:Z

    .line 18
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->formatParams:[Ljava/lang/String;

    .line 20
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->formatParams:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->debugMessage:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    move-object v4, p4

    goto :goto_0

    .line 12
    :cond_0
    move-object v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 17
    const/4 p5, 0x0

    move v5, p5

    goto :goto_1

    .line 12
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 1

    .line 13
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->constructor:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object v0
.end method

.method public final getDebugMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->debugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;
    .locals 1

    .line 15
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    return-object v0
.end method

.method public getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->memberScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0
.end method

.method public isMarkedNullable()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->isMarkedNullable:Z

    return v0
.end method

.method public makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8
    .param p1, "newNullability"    # Z

    .line 31
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->getArguments()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->formatParams:[Ljava/lang/String;

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v7
.end method

.method public bridge synthetic makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1
    .param p1, "newNullability"    # Z

    .line 12
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object v0
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .param p1, "kotlinTypeRefiner"    # Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    .line 12
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1
    .param p1, "kotlinTypeRefiner"    # Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    .line 12
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object v0
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;
    .locals 1
    .param p1, "kotlinTypeRefiner"    # Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object p0
.end method

.method public final replaceArguments(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;
    .locals 8
    .param p1, "newArguments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;"
        }
    .end annotation

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v3

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->kind:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->isMarkedNullable()Z

    move-result v6

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->formatParams:[Ljava/lang/String;

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1
    .param p1, "newAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public bridge synthetic replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1
    .param p1, "newAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 12
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object v0
.end method
