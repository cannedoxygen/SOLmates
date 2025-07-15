.class public final Lexpo/modules/devmenu/DevMenuReactHost$getPackages$packages$1;
.super Ljava/lang/Object;
.source "DevMenuReactHost.kt"

# interfaces
.implements Lexpo/modules/kotlin/ModulesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuReactHost;->getPackages()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u00040\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/devmenu/DevMenuReactHost$getPackages$packages$1",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "getModulesList",
        "",
        "Ljava/lang/Class;",
        "Lexpo/modules/kotlin/modules/Module;",
        "expo-dev-menu_debug"
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
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModulesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;>;"
        }
    .end annotation

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lexpo/modules/devmenu/modules/DevMenuInternalModule;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lexpo/modules/devmenu/modules/DevMenuPreferences;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProviderManager;

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 80
    return-object v0
.end method
