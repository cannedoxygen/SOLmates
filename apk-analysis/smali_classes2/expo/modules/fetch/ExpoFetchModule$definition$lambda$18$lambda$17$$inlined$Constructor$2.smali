.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$Constructor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ClassComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$3\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,197:1\n8#2,4:198\n116#3:202\n*S KotlinDebug\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$3\n*L\n97#1:198,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "P0",
        "SharedObjectType",
        "<name for destructuring parameter 0>",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$3"
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
.field final synthetic this$0:Lexpo/modules/fetch/ExpoFetchModule;


# direct methods
.method public constructor <init>(Lexpo/modules/fetch/ExpoFetchModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$Constructor$2;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 99
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$Constructor$2;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 97
    .local p1, "p0":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 198
    .local v0, "$i$f$enforceType":I
    nop

    .line 201
    nop

    .line 98
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Lexpo/modules/fetch/NativeResponse;

    .local v0, "response":Lexpo/modules/fetch/NativeResponse;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$a$-Constructor-ExpoFetchModule$definition$1$4$1":I
    new-instance v2, Lexpo/modules/fetch/NativeRequest;

    iget-object v3, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$Constructor$2;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-virtual {v3}, Lexpo/modules/fetch/ExpoFetchModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lexpo/modules/fetch/NativeRequest;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/fetch/NativeResponse;)V

    .line 98
    .end local v0    # "response":Lexpo/modules/fetch/NativeResponse;
    .end local v1    # "$i$a$-Constructor-ExpoFetchModule$definition$1$4$1":I
    return-object v2
.end method
