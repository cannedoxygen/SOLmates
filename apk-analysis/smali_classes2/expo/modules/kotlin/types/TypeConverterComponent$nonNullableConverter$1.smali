.class final Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TypeConverterCollection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/types/TypeConverterComponent;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/types/TypeConverterCollection<",
        "TType;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/types/TypeConverterCollection;",
        "Type",
        "",
        "invoke"
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
.field final synthetic this$0:Lexpo/modules/kotlin/types/TypeConverterComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/types/TypeConverterComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;->this$0:Lexpo/modules/kotlin/types/TypeConverterComponent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;->this$0:Lexpo/modules/kotlin/types/TypeConverterComponent;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNotNullableType()Lkotlin/reflect/KType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/types/TypeConverterCollection;-><init>(Lkotlin/reflect/KType;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;->invoke()Lexpo/modules/kotlin/types/TypeConverterCollection;

    move-result-object v0

    return-object v0
.end method
