.class public final Lorg/koin/core/registry/ScopeRegistry;
.super Ljava/lang/Object;
.source "ScopeRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/registry/ScopeRegistry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n28#2:112\n46#2,2:113\n29#2:115\n36#2,12:116\n1#3:128\n1855#4,2:129\n1855#4,2:131\n*S KotlinDebug\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n*L\n60#1:112\n60#1:113,2\n60#1:115\n62#1:116,12\n91#1:129,2\n97#1:131,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 (2\u00020\u0001:\u0001(B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u0017\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002J(\u0010\u001b\u001a\u00020\r2\n\u0010\u001c\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\u001d\u001a\u00020\u00072\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0001J\u0015\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008!J\u0019\u0010\u001f\u001a\u00020\u00182\n\u0010\u001c\u001a\u00060\u000bj\u0002`\u000cH\u0000\u00a2\u0006\u0002\u0008!J\u0016\u0010\"\u001a\u0004\u0018\u00010\r2\n\u0010\u001c\u001a\u00060\u000bj\u0002`\u000cH\u0001J\u0010\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%H\u0002J\u0014\u0010&\u001a\u00020\u00182\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020%0\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lorg/koin/core/registry/ScopeRegistry;",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "(Lorg/koin/core/Koin;)V",
        "_scopeDefinitions",
        "Ljava/util/HashSet;",
        "Lorg/koin/core/qualifier/Qualifier;",
        "Lkotlin/collections/HashSet;",
        "_scopes",
        "",
        "",
        "Lorg/koin/core/scope/ScopeID;",
        "Lorg/koin/core/scope/Scope;",
        "rootScope",
        "getRootScope$annotations",
        "()V",
        "getRootScope",
        "()Lorg/koin/core/scope/Scope;",
        "scopeDefinitions",
        "",
        "getScopeDefinitions",
        "()Ljava/util/Set;",
        "close",
        "",
        "close$koin_core",
        "closeAllScopes",
        "createScope",
        "scopeId",
        "qualifier",
        "source",
        "deleteScope",
        "scope",
        "deleteScope$koin_core",
        "getScopeOrNull",
        "loadModule",
        "module",
        "Lorg/koin/core/module/Module;",
        "loadScopes",
        "modules",
        "Companion",
        "koin-core"
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
.field public static final Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

.field private static final ROOT_SCOPE_ID:Ljava/lang/String; = "_root_"

.field private static final rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;


# instance fields
.field private final _koin:Lorg/koin/core/Koin;

.field private final _scopeDefinitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/qualifier/Qualifier;",
            ">;"
        }
    .end annotation
.end field

.field private final _scopes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final rootScope:Lorg/koin/core/scope/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/registry/ScopeRegistry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    .line 109
    const-string v0, "_root_"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->_q(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 5
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    .line 43
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->safeHashMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    .line 46
    new-instance v0, Lorg/koin/core/scope/Scope;

    sget-object v1, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    const-string v4, "_root_"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/koin/core/scope/Scope;-><init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;ZLorg/koin/core/Koin;)V

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 48
    nop

    .line 49
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    nop

    .line 37
    return-void
.end method

.method public static final synthetic access$getRootScopeQualifier$cp()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 36
    sget-object v0, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method private final closeAllScopes()V
    .locals 6

    .line 91
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 129
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/Scope;

    .local v4, "scope":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 92
    .local v5, "$i$a$-forEach-ScopeRegistry$closeAllScopes$1":I
    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->close()V

    .line 93
    nop

    .line 129
    .end local v4    # "scope":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$closeAllScopes$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 130
    :cond_0
    nop

    .line 94
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic createScope$default(Lorg/koin/core/registry/ScopeRegistry;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    .line 59
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRootScope$annotations()V
    .locals 0

    return-void
.end method

.method private final loadModule(Lorg/koin/core/module/Module;)V
    .locals 2
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 103
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getScopes()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public final close$koin_core()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lorg/koin/core/registry/ScopeRegistry;->closeAllScopes()V

    .line 86
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 88
    return-void
.end method

.method public final createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 8
    .param p1, "scopeId"    # Ljava/lang/String;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "source"    # Ljava/lang/Object;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|- (+) Scope - id:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' q:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 112
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 114
    :cond_0
    nop

    .line 115
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 61
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .restart local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "| Scope \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not defined. Creating it ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 116
    .local v2, "$i$f$warn":I
    sget-object v3, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .restart local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .restart local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 126
    .restart local v5    # "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 127
    :cond_1
    nop

    .line 117
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 63
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$warn":I
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    new-instance v0, Lorg/koin/core/scope/Scope;

    iget-object v5, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/scope/Scope;-><init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;ZLorg/koin/core/Koin;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .local v0, "scope":Lorg/koin/core/scope/Scope;
    if-eqz p3, :cond_3

    move-object v1, p3

    .line 128
    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 69
    .local v2, "$i$a$-let-ScopeRegistry$createScope$1":I
    invoke-virtual {v0, p3}, Lorg/koin/core/scope/Scope;->set_source(Ljava/lang/Object;)V

    .line 70
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ScopeRegistry$createScope$1":I
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/koin/core/scope/Scope;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/koin/core/scope/Scope;->linkTo([Lorg/koin/core/scope/Scope;)V

    .line 71
    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0

    .line 66
    .end local v0    # "scope":Lorg/koin/core/scope/Scope;
    :cond_4
    new-instance v0, Lorg/koin/core/error/ScopeAlreadyCreatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/koin/core/error/ScopeAlreadyCreatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deleteScope$koin_core(Ljava/lang/String;)V
    .locals 2
    .param p1, "scopeId"    # Ljava/lang/String;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    if-eqz v0, :cond_0

    .line 128
    .local v0, "it":Lorg/koin/core/scope/Scope;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-let-ScopeRegistry$deleteScope$1":I
    invoke-virtual {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V

    .line 77
    .end local v0    # "it":Lorg/koin/core/scope/Scope;
    .end local v1    # "$i$a$-let-ScopeRegistry$deleteScope$1":I
    :cond_0
    return-void
.end method

.method public final deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V
    .locals 2
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/koin/core/registry/InstanceRegistry;->dropScopeInstances$koin_core(Lorg/koin/core/scope/Scope;)V

    .line 81
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public final getRootScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public final getScopeDefinitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/koin/core/qualifier/Qualifier;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p1, "scopeId"    # Ljava/lang/String;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public final loadScopes(Ljava/util/Set;)V
    .locals 6
    .param p1, "modules"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "it":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 98
    .local v5, "$i$a$-forEach-ScopeRegistry$loadScopes$1":I
    invoke-direct {p0, v4}, Lorg/koin/core/registry/ScopeRegistry;->loadModule(Lorg/koin/core/module/Module;)V

    .line 99
    nop

    .line 131
    .end local v4    # "it":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$loadScopes$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 132
    :cond_0
    nop

    .line 100
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
