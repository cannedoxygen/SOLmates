.class public final Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/KType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$View$viewDefinitionBuilder$1\n*L\n1#1,213:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/KType;",
        "T",
        "Landroid/view/View;",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$View$viewDefinitionBuilder$1"
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
.field public static final INSTANCE:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;

    invoke-direct {v0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;-><init>()V

    sput-object v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;->INSTANCE:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager$definition$lambda$1$$inlined$View$1;->invoke()Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KType;
    .locals 1

    const-class v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    .line 96
    return-object v0
.end method
