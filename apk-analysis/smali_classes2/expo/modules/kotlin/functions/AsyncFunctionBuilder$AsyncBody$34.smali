.class public final Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34;
.super Lkotlin/jvm/internal/Lambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->AsyncFunctionWithPromise(Lkotlin/jvm/functions/Function8;)Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34\n+ 2 ArrayExtenstions.kt\nexpo/modules/kotlin/ArrayExtenstionsKt\n+ 3 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,269:1\n6#2,5:270\n50#3,4:275\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34\n*L\n249#1:270,5\n250#1:275,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\u0006\u0008\u0005\u0010\u0007\u0018\u0001\"\u0006\u0008\u0006\u0010\u0008\u0018\u0001\"\u0006\u0008\u0007\u0010\t\u0018\u00012\u0010\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "P4",
        "P5",
        "P6",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V"
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
            "TP0;TP1;TP2;TP3;TP4;TP5;TP6;",
            "Lexpo/modules/kotlin/Promise;",
            "TR;>;"
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
            "-TP0;-TP1;-TP2;-TP3;-TP4;-TP5;-TP6;-",
            "Lexpo/modules/kotlin/Promise;",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34;->$body:Lkotlin/jvm/functions/Function8;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 252
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 16
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v0, p1

    const-string v1, "<name for destructuring parameter 0>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    move-object/from16 v11, p2

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .local v1, "p0":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v12, v0, v2

    .local v12, "p1":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object v13, v0, v2

    .local v13, "p2":Ljava/lang/Object;
    const/4 v2, 0x3

    aget-object v14, v0, v2

    .local v14, "p3":Ljava/lang/Object;
    const/4 v2, 0x4

    aget-object v15, v0, v2

    .local v15, "p4":Ljava/lang/Object;
    move-object/from16 v2, p1

    .local v2, "$this$component6$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$f$component6":I
    const/4 v4, 0x5

    aget-object v8, v2, v4

    .line 249
    .end local v2    # "$this$component6$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$component6":I
    nop

    .local v0, "$this$component7$iv":[Ljava/lang/Object;
    .local v8, "p5":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 274
    .local v2, "$i$f$component7":I
    const/4 v3, 0x6

    aget-object v9, v0, v3

    .line 249
    .end local v0    # "$this$component7$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$component7":I
    nop

    .line 250
    .local v9, "p6":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$enforceType":I
    nop

    .line 278
    nop

    .line 251
    .end local v0    # "$i$f$enforceType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder$AsyncBody$34;->$body:Lkotlin/jvm/functions/Function8;

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v10, p2

    invoke-interface/range {v2 .. v10}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method
