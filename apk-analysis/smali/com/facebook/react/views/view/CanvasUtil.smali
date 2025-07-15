.class public final Lcom/facebook/react/views/view/CanvasUtil;
.super Ljava/lang/Object;
.source "CanvasUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H\u0007J\u0008\u0010\r\u001a\u00020\tH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/react/views/view/CanvasUtil;",
        "",
        "()V",
        "inorderBarrierMethod",
        "Ljava/lang/reflect/Method;",
        "orderMethodsFetched",
        "",
        "reorderBarrierMethod",
        "enableZ",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "enable",
        "fetchOrderMethods",
        "ReactAndroid_debug"
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
.field public static final INSTANCE:Lcom/facebook/react/views/view/CanvasUtil;

.field private static inorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static orderMethodsFetched:Z

.field private static reorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/view/CanvasUtil;

    invoke-direct {v0}, Lcom/facebook/react/views/view/CanvasUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/CanvasUtil;->INSTANCE:Lcom/facebook/react/views/view/CanvasUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableZ(Landroid/graphics/Canvas;Z)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "enable"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_1

    .line 44
    :cond_1
    sget-object v0, Lcom/facebook/react/views/view/CanvasUtil;->INSTANCE:Lcom/facebook/react/views/view/CanvasUtil;

    invoke-direct {v0}, Lcom/facebook/react/views/view/CanvasUtil;->fetchOrderMethods()V

    .line 45
    nop

    .line 46
    const-string v0, "Required value was null."

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    sget-object v2, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    .line 47
    sget-object v2, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "canvas":Landroid/graphics/Canvas;
    .end local p1    # "enable":Z
    throw v1

    .line 54
    .restart local p0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "enable":Z
    :catch_0
    move-exception v0

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    if-nez p1, :cond_5

    sget-object v2, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 50
    sget-object v2, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "canvas":Landroid/graphics/Canvas;
    .end local p1    # "enable":Z
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .restart local p0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "enable":Z
    :cond_5
    :goto_1
    return-void
.end method

.method private final fetchOrderMethods()V
    .locals 9

    .line 61
    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.reflect.Method"

    sget-boolean v1, Lcom/facebook/react/views/view/CanvasUtil;->orderMethodsFetched:Z

    if-nez v1, :cond_5

    .line 62
    nop

    .line 63
    const/4 v1, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1c

    const-string v4, "insertInorderBarrier"

    const-string v5, "insertReorderBarrier"

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    :try_start_1
    const-class v2, Ljava/lang/Class;

    .line 69
    const-string v3, "getDeclaredMethod"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    const-class v8, [Ljava/lang/Object;

    aput-object v8, v7, v1

    .line 68
    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    nop

    .line 70
    .local v2, "getDeclaredMethod":Ljava/lang/reflect/Method;
    nop

    .line 71
    const-class v3, Landroid/graphics/Canvas;

    .line 72
    new-array v7, v6, [Ljava/lang/Class;

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 71
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/reflect/Method;

    .line 70
    sput-object v3, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 73
    nop

    .line 74
    const-class v3, Landroid/graphics/Canvas;

    .line 75
    new-array v5, v6, [Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 74
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/reflect/Method;

    .line 73
    sput-object v3, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .end local v2    # "getDeclaredMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 77
    :cond_0
    const-class v0, Landroid/graphics/Canvas;

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 78
    const-class v0, Landroid/graphics/Canvas;

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 80
    :goto_0
    sget-object v0, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_3

    .line 83
    :cond_1
    sget-object v0, Lcom/facebook/react/views/view/CanvasUtil;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    :goto_1
    sget-object v0, Lcom/facebook/react/views/view/CanvasUtil;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    :goto_2
    goto :goto_4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 81
    :cond_4
    :goto_3
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_4

    .line 87
    :catch_1
    move-exception v0

    goto :goto_4

    .line 85
    :catch_2
    move-exception v0

    .line 92
    :goto_4
    sput-boolean v1, Lcom/facebook/react/views/view/CanvasUtil;->orderMethodsFetched:Z

    .line 94
    :cond_5
    return-void
.end method
