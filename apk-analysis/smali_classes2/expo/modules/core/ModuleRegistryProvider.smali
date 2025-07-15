.class public Lexpo/modules/core/ModuleRegistryProvider;
.super Ljava/lang/Object;
.source "ModuleRegistryProvider.java"


# instance fields
.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "initialPackages":Ljava/util/List;, "Ljava/util/List<Lexpo/modules/core/interfaces/Package;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lexpo/modules/core/ModuleRegistryProvider;->mPackages:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public createInternalModules(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "internalModules":Ljava/util/Collection;, "Ljava/util/Collection<Lexpo/modules/core/interfaces/InternalModule;>;"
    invoke-virtual {p0}, Lexpo/modules/core/ModuleRegistryProvider;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/Package;

    .line 38
    .local v2, "pkg":Lexpo/modules/core/interfaces/Package;
    invoke-interface {v2, p1}, Lexpo/modules/core/interfaces/Package;->createInternalModules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 39
    .end local v2    # "pkg":Lexpo/modules/core/interfaces/Package;
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method public createSingletonModules(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lexpo/modules/core/interfaces/SingletonModule;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "singletonModules":Ljava/util/Collection;, "Ljava/util/Collection<Lexpo/modules/core/interfaces/SingletonModule;>;"
    invoke-virtual {p0}, Lexpo/modules/core/ModuleRegistryProvider;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/Package;

    .line 46
    .local v2, "pkg":Lexpo/modules/core/interfaces/Package;
    invoke-interface {v2, p1}, Lexpo/modules/core/interfaces/Package;->createSingletonModules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 47
    .end local v2    # "pkg":Lexpo/modules/core/interfaces/Package;
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method

.method public get(Landroid/content/Context;)Lexpo/modules/core/ModuleRegistry;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Lexpo/modules/core/ModuleRegistry;

    .line 30
    invoke-virtual {p0, p1}, Lexpo/modules/core/ModuleRegistryProvider;->createInternalModules(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 31
    invoke-virtual {p0, p1}, Lexpo/modules/core/ModuleRegistryProvider;->createSingletonModules(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexpo/modules/core/ModuleRegistry;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 29
    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lexpo/modules/core/ModuleRegistryProvider;->mPackages:Ljava/util/List;

    return-object v0
.end method
