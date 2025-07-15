.class public final Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;
.super Ljava/lang/Object;
.source "DevLauncherIntentRegistry.kt"

# interfaces
.implements Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherIntentRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherIntentRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,42:1\n33#2,3:43\n*S KotlinDebug\n*F\n+ 1 DevLauncherIntentRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry\n*L\n20#1:43,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0016J \u0010\u0012\u001a\u00020\u000f2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010H\u0016J \u0010\u0014\u001a\u00020\u000f2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010H\u0016R/\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u00100\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;",
        "Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;",
        "()V",
        "<set-?>",
        "Landroid/content/Intent;",
        "intent",
        "getIntent",
        "()Landroid/content/Intent;",
        "setIntent",
        "(Landroid/content/Intent;)V",
        "intent$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "pendingIntentListeners",
        "",
        "Lkotlin/Function1;",
        "",
        "Lexpo/modules/devlauncher/launcher/DevLauncherPendingIntentListener;",
        "consumePendingIntent",
        "subscribe",
        "listener",
        "unsubscribe",
        "expo-dev-launcher_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intent$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final pendingIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 20
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "intent"

    const-string v3, "getIntent()Landroid/content/Intent;"

    const-class v4, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->pendingIntentListeners:Ljava/util/List;

    .line 20
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .local v0, "this_$iv":Lkotlin/properties/Delegates;
    const/4 v1, 0x0

    .local v1, "initialValue$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$f$observable":I
    new-instance v3, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry$special$$inlined$observable$1;

    invoke-direct {v3, v1, p0}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;)V

    check-cast v3, Lkotlin/properties/ReadWriteProperty;

    .line 45
    nop

    .line 20
    .end local v0    # "this_$iv":Lkotlin/properties/Delegates;
    .end local v1    # "initialValue$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$observable":I
    iput-object v3, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->intent$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 18
    return-void
.end method

.method public static final synthetic access$getPendingIntentListeners$p(Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;

    .line 18
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->pendingIntentListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public consumePendingIntent()Landroid/content/Intent;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "pendingIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->setIntent(Landroid/content/Intent;)V

    .line 39
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 20
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->intent$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 20
    sget-object v1, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "<set-?>"    # Landroid/content/Intent;

    .line 20
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->intent$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 20
    sget-object v1, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public subscribe(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->pendingIntentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public unsubscribe(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->pendingIntentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
