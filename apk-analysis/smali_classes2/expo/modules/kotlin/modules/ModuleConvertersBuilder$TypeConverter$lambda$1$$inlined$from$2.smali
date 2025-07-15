.class public final Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TypeConverterCollection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->TypeConverter(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "TType;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection$from$1\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n*L\n1#1,82:1\n8#2,4:83\n29#3:87\n*S KotlinDebug\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection$from$1\n*L\n42#1:83,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "Type",
        "P0",
        "",
        "value",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/types/TypeConverterCollection$from$1"
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
.field final synthetic $body$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;->$body$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TType;"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    .line 83
    .local v0, "$i$f$enforceType":I
    nop

    .line 86
    nop

    .line 43
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$a$-from-ModuleConvertersBuilder$TypeConverter$1$1":I
    iget-object v2, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;->$body$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "$i$a$-from-ModuleConvertersBuilder$TypeConverter$1$1":I
    return-object v0
.end method
