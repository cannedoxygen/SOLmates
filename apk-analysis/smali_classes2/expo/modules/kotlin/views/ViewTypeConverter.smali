.class public final Lexpo/modules/kotlin/views/ViewTypeConverter;
.super Lexpo/modules/kotlin/types/TypeConverter;
.source "ViewTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lexpo/modules/kotlin/types/TypeConverter<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewTypeConverter.kt\nexpo/modules/kotlin/views/ViewTypeConverter\n+ 2 Utils.kt\nexpo/modules/kotlin/UtilsKt\n*L\n1#1,45:1\n21#2:46\n*S KotlinDebug\n*F\n+ 1 ViewTypeConverter.kt\nexpo/modules/kotlin/views/ViewTypeConverter\n*L\n19#1:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J#\u0010\t\u001a\u0004\u0018\u00018\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ViewTypeConverter;",
        "T",
        "Landroid/view/View;",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "type",
        "Lkotlin/reflect/KType;",
        "(Lkotlin/reflect/KType;)V",
        "getType",
        "()Lkotlin/reflect/KType;",
        "convert",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Landroid/view/View;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
        "",
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
.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 1
    .param p1, "type"    # Lkotlin/reflect/KType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lexpo/modules/kotlin/types/TypeConverter;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewTypeConverter;->type:Lkotlin/reflect/KType;

    .line 14
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Landroid/view/View;
    .locals 6
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

    .line 19
    move-object v0, p2

    .local v0, "$this$toStrongReference$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$f$toStrongReference":I
    if-eqz v0, :cond_4

    .line 19
    .end local v0    # "$this$toStrongReference$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$toStrongReference":I
    nop

    .line 20
    .local v0, "appContext":Lexpo/modules/kotlin/AppContext;
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->assertMainThread$expo_modules_core_debug()V

    .line 22
    if-nez p1, :cond_1

    .line 23
    iget-object v1, p0, Lexpo/modules/kotlin/views/ViewTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x0

    return-object v1

    .line 26
    :cond_0
    new-instance v1, Lexpo/modules/kotlin/exception/NullArgumentException;

    invoke-direct {v1}, Lexpo/modules/kotlin/exception/NullArgumentException;-><init>()V

    throw v1

    .line 29
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    .local v1, "viewTag":I
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/AppContext;->findView(I)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lexpo/modules/kotlin/views/ViewTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v3}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    new-instance v3, Lexpo/modules/kotlin/exception/Exceptions$ViewNotFound;

    iget-object v4, p0, Lexpo/modules/kotlin/views/ViewTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v4}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/reflect/KClass;

    invoke-direct {v3, v4, v1}, Lexpo/modules/kotlin/exception/Exceptions$ViewNotFound;-><init>(Lkotlin/reflect/KClass;I)V

    throw v3

    .line 35
    :cond_3
    :goto_0
    return-object v2

    .line 46
    .end local v2    # "view":Landroid/view/View;
    .local v0, "$this$toStrongReference$iv":Lexpo/modules/kotlin/AppContext;
    .local v1, "$i$f$toStrongReference":I
    :cond_4
    new-instance v2, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v2}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 14
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/ViewTypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 38
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    .line 40
    sget-object v2, Lexpo/modules/kotlin/jni/CppType;->VIEW_TAG:Lexpo/modules/kotlin/jni/CppType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 39
    nop

    .line 38
    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 41
    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewTypeConverter;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method
