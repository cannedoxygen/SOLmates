.class public final Lexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->AsyncFunction(Ljava/lang/String;Lkotlin/jvm/functions/Function8;)Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
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
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32\n+ 2 ArrayExtenstions.kt\nexpo/modules/kotlin/ArrayExtenstionsKt\n+ 3 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,475:1\n6#2,9:476\n57#3,4:485\n*S KotlinDebug\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32\n*L\n401#1:476,9\n402#1:485,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001\"\u0006\u0008\u0005\u0010\u0006\u0018\u0001\"\u0006\u0008\u0006\u0010\u0007\u0018\u0001\"\u0006\u0008\u0007\u0010\u0008\u0018\u0001\"\u0006\u0008\u0008\u0010\t\u0018\u0001\"\u0008\u0008\t\u0010\n*\u00020\u000b2\u0010\u0010\u000c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000e0\rH\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "P4",
        "P5",
        "P6",
        "P7",
        "T",
        "Landroid/view/View;",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function8<",
            "TP0;TP1;TP2;TP3;TP4;TP5;TP6;TP7;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function8<",
            "-TP0;-TP1;-TP2;-TP3;-TP4;-TP5;-TP6;-TP7;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32;->$body:Lkotlin/jvm/functions/Function8;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 401
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v10, p1, v1

    .local v10, "p1":Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v11, p1, v1

    .local v11, "p2":Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v12, p1, v1

    .local v12, "p3":Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v13, p1, v1

    .local v13, "p4":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "$this$component6$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 476
    .local v2, "$i$f$component6":I
    const/4 v3, 0x5

    aget-object v7, v1, v3

    .line 401
    .end local v1    # "$this$component6$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$component6":I
    nop

    .local v1, "$this$component7$iv":[Ljava/lang/Object;
    .local v7, "p5":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 480
    .local v2, "$i$f$component7":I
    const/4 v3, 0x6

    aget-object v8, v1, v3

    .line 401
    .end local v1    # "$this$component7$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$component7":I
    nop

    .local v8, "p6":Ljava/lang/Object;
    .local p1, "$this$component8$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 484
    .local v1, "$i$f$component8":I
    const/4 v2, 0x7

    aget-object v9, p1, v2

    .line 401
    .end local v1    # "$i$f$component8":I
    .end local p1    # "$this$component8$iv":[Ljava/lang/Object;
    nop

    .line 402
    .local v9, "p7":Ljava/lang/Object;
    const/4 p1, 0x0

    .line 485
    .local p1, "$i$f$enforceType":I
    nop

    .line 488
    nop

    .line 403
    .end local p1    # "$i$f$enforceType":I
    iget-object v1, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$32;->$body:Lkotlin/jvm/functions/Function8;

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-interface/range {v1 .. v9}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
