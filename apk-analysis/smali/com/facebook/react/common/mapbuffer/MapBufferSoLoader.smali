.class public final Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;
.super Ljava/lang/Object;
.source "MapBufferSoLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;",
        "",
        "()V",
        "didInit",
        "",
        "staticInit",
        "",
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
.field public static final INSTANCE:Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;

.field private static volatile didInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;

    invoke-direct {v0}, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;-><init>()V

    sput-object v0, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;->INSTANCE:Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final staticInit()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 22
    sget-boolean v0, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;->didInit:Z

    if-eqz v0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;->didInit:Z

    .line 28
    nop

    .line 29
    nop

    .line 27
    const-wide/16 v0, 0x0

    const-string v2, "ReadableMapBufferSoLoader.staticInit::load:mapbufferjni"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 30
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_MAPBUFFER_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 31
    const-string v2, "mapbufferjni"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 32
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_MAPBUFFER_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 33
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 34
    return-void
.end method
