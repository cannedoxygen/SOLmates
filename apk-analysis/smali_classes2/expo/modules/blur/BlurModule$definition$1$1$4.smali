.class final Lexpo/modules/blur/BlurModule$definition$1$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "BlurModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/blur/BlurModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/blur/ExpoBlurView;",
        "Lexpo/modules/blur/enums/BlurMethod;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Lexpo/modules/blur/ExpoBlurView;",
        "experimentalBlurMethod",
        "Lexpo/modules/blur/enums/BlurMethod;",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/blur/BlurModule$definition$1$1$4;

    invoke-direct {v0}, Lexpo/modules/blur/BlurModule$definition$1$1$4;-><init>()V

    sput-object v0, Lexpo/modules/blur/BlurModule$definition$1$1$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 25
    move-object v0, p1

    check-cast v0, Lexpo/modules/blur/ExpoBlurView;

    move-object v1, p2

    check-cast v1, Lexpo/modules/blur/enums/BlurMethod;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/blur/BlurModule$definition$1$1$4;->invoke(Lexpo/modules/blur/ExpoBlurView;Lexpo/modules/blur/enums/BlurMethod;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lexpo/modules/blur/ExpoBlurView;Lexpo/modules/blur/enums/BlurMethod;)V
    .locals 1
    .param p1, "view"    # Lexpo/modules/blur/ExpoBlurView;
    .param p2, "experimentalBlurMethod"    # Lexpo/modules/blur/enums/BlurMethod;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentalBlurMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p2}, Lexpo/modules/blur/ExpoBlurView;->setBlurMethod(Lexpo/modules/blur/enums/BlurMethod;)V

    .line 27
    return-void
.end method
