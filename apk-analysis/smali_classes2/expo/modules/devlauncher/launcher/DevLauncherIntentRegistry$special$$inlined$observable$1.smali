.class public final Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 DevLauncherIntentRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n21#2,2:74\n23#2,2:77\n25#2,2:80\n1855#3:76\n1856#3:79\n*S KotlinDebug\n*F\n+ 1 DevLauncherIntentRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry\n*L\n22#1:76\n22#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/properties/Delegates$observable$1",
        "Lkotlin/properties/ObservableProperty;",
        "afterChange",
        "",
        "property",
        "Lkotlin/reflect/KProperty;",
        "oldValue",
        "newValue",
        "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V",
        "kotlin-stdlib"
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
.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;)V
    .locals 0
    .param p1, "$initialValue"    # Ljava/lang/Object;

    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry$special$$inlined$observable$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;

    .line 33
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "property"    # Lkotlin/reflect/KProperty;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p3

    check-cast v0, Landroid/content/Intent;

    .local v0, "newValue":Landroid/content/Intent;
    move-object v1, p2

    check-cast v1, Landroid/content/Intent;

    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-observable-DevLauncherIntentRegistry$intent$2":I
    if-eqz v0, :cond_1

    move-object v2, v0

    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 75
    .local v3, "$i$a$-let-DevLauncherIntentRegistry$intent$2$1":I
    iget-object v4, p0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry$special$$inlined$observable$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;

    invoke-static {v4}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;->access$getPendingIntentListeners$p(Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistry;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 76
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .local v8, "it":Lkotlin/jvm/functions/Function1;
    const/4 v9, 0x0

    .line 77
    .local v9, "$i$a$-forEach-DevLauncherIntentRegistry$intent$2$1$1":I
    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    nop

    .line 76
    .end local v8    # "it":Lkotlin/jvm/functions/Function1;
    .end local v9    # "$i$a$-forEach-DevLauncherIntentRegistry$intent$2$1$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 79
    :cond_0
    nop

    .line 80
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 74
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "$i$a$-let-DevLauncherIntentRegistry$intent$2$1":I
    nop

    .line 81
    :cond_1
    nop

    .line 34
    .end local v0    # "newValue":Landroid/content/Intent;
    .end local v1    # "$i$a$-observable-DevLauncherIntentRegistry$intent$2":I
    return-void
.end method
