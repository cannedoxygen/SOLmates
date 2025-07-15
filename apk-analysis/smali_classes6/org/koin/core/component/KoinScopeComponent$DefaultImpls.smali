.class public final Lorg/koin/core/component/KoinScopeComponent$DefaultImpls;
.super Ljava/lang/Object;
.source "KoinScopeComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/component/KoinScopeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static closeScope(Lorg/koin/core/component/KoinScopeComponent;)V
    .locals 1
    .param p0, "$this"    # Lorg/koin/core/component/KoinScopeComponent;
    .annotation runtime Lkotlin/Deprecated;
        message = "not used internaly anymore"
    .end annotation

    .line 35
    invoke-interface {p0}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->isNotClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p0}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->close()V

    .line 38
    :cond_0
    return-void
.end method

.method public static getKoin(Lorg/koin/core/component/KoinScopeComponent;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "$this"    # Lorg/koin/core/component/KoinScopeComponent;

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    invoke-static {v0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    .line 39
    return-object v0
.end method
