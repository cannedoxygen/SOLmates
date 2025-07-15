.class public Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
.super Ljava/lang/Object;
.source "ConstantComponentBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantComponentBuilder.kt\nexpo/modules/kotlin/objects/ConstantComponentBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ$\u0010\u000f\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010\u0010\u0018\u00012\u000e\u0008\u0004\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0006H\u0086\u0008\u00f8\u0001\u0000R$\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/ConstantComponentBuilder;",
        "",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "getter",
        "Lkotlin/Function0;",
        "getGetter",
        "()Lkotlin/jvm/functions/Function0;",
        "setGetter",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getName",
        "()Ljava/lang/String;",
        "build",
        "Lexpo/modules/kotlin/objects/ConstantComponent;",
        "get",
        "R",
        "body",
        "expo-modules-core_debug"
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
.field private getter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final build()Lexpo/modules/kotlin/objects/ConstantComponent;
    .locals 4

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    new-instance v2, Lexpo/modules/kotlin/objects/ConstantComponent;

    invoke-direct {v2, v0, v1}, Lexpo/modules/kotlin/objects/ConstantComponent;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v2

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 16
    .local v0, "$i$a$-requireNotNull-ConstantComponentBuilder$build$1":I
    iget-object v1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The constant \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t have getter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-requireNotNull-ConstantComponentBuilder$build$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final synthetic get(Lkotlin/jvm/functions/Function0;)Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
    .locals 4
    .param p1, "body"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)",
            "Lexpo/modules/kotlin/objects/ConstantComponentBuilder;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$get":I
    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    .local v1, "$this$get_u24lambda_u240":Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
    const/4 v2, 0x0

    .line 12
    .local v2, "$i$a$-apply-ConstantComponentBuilder$get$1":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lexpo/modules/kotlin/objects/ConstantComponentBuilder$get$1$1;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder$get$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    .line 13
    nop

    .line 11
    .end local v1    # "$this$get_u24lambda_u240":Lexpo/modules/kotlin/objects/ConstantComponentBuilder;
    .end local v2    # "$i$a$-apply-ConstantComponentBuilder$get$1":I
    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    .line 13
    return-object v1
.end method

.method public final getGetter()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setGetter(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->getter:Lkotlin/jvm/functions/Function0;

    return-void
.end method
