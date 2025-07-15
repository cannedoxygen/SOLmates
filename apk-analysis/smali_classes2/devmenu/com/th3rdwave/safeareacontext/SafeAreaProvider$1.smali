.class public final Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1;
.super Ljava/lang/Object;
.source "SafeAreaProvider.kt"

# interfaces
.implements Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "devmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1",
        "Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;",
        "onInsetsChange",
        "",
        "view",
        "Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;",
        "insets",
        "Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
        "frame",
        "Ldevmenu/com/th3rdwave/safeareacontext/Rect;",
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


# instance fields
.field final synthetic this$0:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;


# direct methods
.method constructor <init>(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;)V
    .locals 0
    .param p1, "$receiver"    # Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    iput-object p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1;->this$0:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsetsChange(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;Ldevmenu/com/th3rdwave/safeareacontext/Rect;)V
    .locals 2
    .param p1, "view"    # Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;
    .param p2, "insets"    # Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .param p3, "frame"    # Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1;->this$0:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-static {v0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->access$getOnInsetsChange(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    new-instance v1, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;

    .line 21
    nop

    .line 22
    nop

    .line 20
    invoke-direct {v1, p2, p3}, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;-><init>(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;Ldevmenu/com/th3rdwave/safeareacontext/Rect;)V

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
