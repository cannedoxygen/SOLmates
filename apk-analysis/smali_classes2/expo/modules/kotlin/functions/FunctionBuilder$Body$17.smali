.class public final Lexpo/modules/kotlin/functions/FunctionBuilder$Body$17;
.super Lkotlin/jvm/internal/Lambda;
.source "FunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/FunctionBuilder;->Body(Ljava/lang/String;Lkotlin/jvm/functions/Function7;)Lexpo/modules/kotlin/functions/SyncFunctionComponent;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionBuilder.kt\nexpo/modules/kotlin/functions/FunctionBuilder$Body$17\n+ 2 ArrayExtenstions.kt\nexpo/modules/kotlin/ArrayExtenstionsKt\n+ 3 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,132:1\n6#2,5:133\n50#3,4:138\n*S KotlinDebug\n*F\n+ 1 FunctionBuilder.kt\nexpo/modules/kotlin/functions/FunctionBuilder$Body$17\n*L\n110#1:133,5\n111#1:138,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\u0006\u0008\u0005\u0010\u0007\u0018\u0001\"\u0006\u0008\u0006\u0010\u0008\u0018\u0001\"\u0006\u0008\u0007\u0010\t\u0018\u00012\u0010\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000bH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r"
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
.field final synthetic $body:Lkotlin/jvm/functions/Function7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function7<",
            "TP0;TP1;TP2;TP3;TP4;TP5;TP6;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function7<",
            "-TP0;-TP1;-TP2;-TP3;-TP4;-TP5;-TP6;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$17;->$body:Lkotlin/jvm/functions/Function7;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 113
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$17;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v9, p1, v1

    .local v9, "p1":Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v10, p1, v1

    .local v10, "p2":Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v11, p1, v1

    .local v11, "p3":Ljava/lang/Object;
    const/4 v1, 0x4

    aget-object v12, p1, v1

    .local v12, "p4":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "$this$component6$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$f$component6":I
    const/4 v3, 0x5

    aget-object v7, v1, v3

    .line 110
    .end local v1    # "$this$component6$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$component6":I
    nop

    .local v7, "p5":Ljava/lang/Object;
    .local p1, "$this$component7$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$f$component7":I
    const/4 v2, 0x6

    aget-object v8, p1, v2

    .line 110
    .end local v1    # "$i$f$component7":I
    .end local p1    # "$this$component7$iv":[Ljava/lang/Object;
    nop

    .line 111
    .local v8, "p6":Ljava/lang/Object;
    const/4 p1, 0x0

    .line 138
    .local p1, "$i$f$enforceType":I
    nop

    .line 141
    nop

    .line 112
    .end local p1    # "$i$f$enforceType":I
    iget-object v1, p0, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$17;->$body:Lkotlin/jvm/functions/Function7;

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-interface/range {v1 .. v8}, Lkotlin/jvm/functions/Function7;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
