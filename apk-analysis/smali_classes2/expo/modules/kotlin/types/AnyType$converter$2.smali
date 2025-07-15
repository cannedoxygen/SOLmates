.class final Lexpo/modules/kotlin/types/AnyType$converter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnyType.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/types/TypeConverter<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/types/TypeConverter;",
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
.field final synthetic this$0:Lexpo/modules/kotlin/types/AnyType;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/types/AnyType;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/kotlin/types/AnyType$converter$2;->this$0:Lexpo/modules/kotlin/types/AnyType;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/types/TypeConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lexpo/modules/kotlin/types/AnyType$converter$2;->this$0:Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/AnyType;->getConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lexpo/modules/kotlin/types/AnyType$converter$2;->this$0:Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/AnyType;->getConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/kotlin/types/AnyType$converter$2;->this$0:Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_0
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    iget-object v1, p0, Lexpo/modules/kotlin/types/AnyType$converter$2;->this$0:Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/AnyType$converter$2;->invoke()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    return-object v0
.end method
