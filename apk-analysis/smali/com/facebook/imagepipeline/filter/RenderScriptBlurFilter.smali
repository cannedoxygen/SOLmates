.class public final Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;
.super Ljava/lang/Object;
.source "RenderScriptBlurFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;",
        "",
        "()V",
        "BLUR_MAX_RADIUS",
        "",
        "blurBitmap",
        "",
        "dest",
        "Landroid/graphics/Bitmap;",
        "src",
        "context",
        "Landroid/content/Context;",
        "radius",
        "canUseRenderScript",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BLUR_MAX_RADIUS:I = 0x19

.field public static final INSTANCE:Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V
    .locals 5
    .param p0, "dest"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "radius"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 39
    if-lez p3, :cond_0

    const/16 v0, 0x19

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "rs":Landroid/renderscript/RenderScript;
    nop

    .line 42
    :try_start_0
    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Required value was null."

    if-eqz v1, :cond_4

    move-object v0, v1

    .line 45
    :try_start_1
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 48
    .local v1, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 49
    .local v3, "allIn":Landroid/renderscript/Allocation;
    invoke-static {v0, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v2, v4

    .line 52
    .local v2, "allOut":Landroid/renderscript/Allocation;
    int-to-float v4, p3

    invoke-virtual {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 55
    invoke-virtual {v2, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 57
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 58
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v1    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v2    # "allOut":Landroid/renderscript/Allocation;
    .end local v3    # "allIn":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 61
    :cond_1
    nop

    .line 62
    return-void

    .line 49
    .restart local v1    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    .restart local v3    # "allIn":Landroid/renderscript/Allocation;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local p0    # "dest":Landroid/graphics/Bitmap;
    .end local p1    # "src":Landroid/graphics/Bitmap;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "radius":I
    throw v4

    .line 48
    .end local v3    # "allIn":Landroid/renderscript/Allocation;
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p0    # "dest":Landroid/graphics/Bitmap;
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "radius":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local p0    # "dest":Landroid/graphics/Bitmap;
    .end local p1    # "src":Landroid/graphics/Bitmap;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "radius":I
    throw v3

    .line 42
    .end local v1    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p0    # "dest":Landroid/graphics/Bitmap;
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "radius":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local p0    # "dest":Landroid/graphics/Bitmap;
    .end local p1    # "src":Landroid/graphics/Bitmap;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "radius":I
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p0    # "dest":Landroid/graphics/Bitmap;
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "radius":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_5
    throw v1
.end method

.method public static final canUseRenderScript()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65
    const/4 v0, 0x1

    return v0
.end method
