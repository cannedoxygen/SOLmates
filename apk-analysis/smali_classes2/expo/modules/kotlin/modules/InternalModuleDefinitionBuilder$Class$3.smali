.class public final Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->Class$default(Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder<",
        "TSharedObjectType;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3\n*L\n1#1,213:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "SharedObjectType",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;

    invoke-direct {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;->INSTANCE:Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 200
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$Class$3;->invoke(Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;)V
    .locals 1
    .param p1, "$this$null"    # Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder<",
            "TSharedObjectType;>;)V"
        }
    .end annotation

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    return-void
.end method
