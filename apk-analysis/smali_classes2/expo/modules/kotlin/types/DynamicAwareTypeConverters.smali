.class public abstract Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.super Lexpo/modules/kotlin/types/NullAwareTypeConverter;
.source "TypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u000c\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\u000eJ\u001f\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "T",
        "",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter;",
        "isOptional",
        "",
        "(Z)V",
        "convertFromAny",
        "value",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;",
        "convertNonOptional",
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


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isOptional"    # Z

    .line 64
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/types/NullAwareTypeConverter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of v0, p1, Lcom/facebook/react/bridge/Dynamic;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/Dynamic;

    invoke-virtual {p0, v0, p2}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0
.end method
