.class public final Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;
.super Ljava/lang/Object;
.source "InsetsChangeEvent.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\t\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;",
        "Lexpo/modules/kotlin/records/Record;",
        "insets",
        "Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
        "frame",
        "Ldevmenu/com/th3rdwave/safeareacontext/Rect;",
        "(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;Ldevmenu/com/th3rdwave/safeareacontext/Rect;)V",
        "parsedFrame",
        "getParsedFrame$annotations",
        "()V",
        "getParsedFrame",
        "()Ldevmenu/com/th3rdwave/safeareacontext/Rect;",
        "parsedInsets",
        "getParsedInsets$annotations",
        "getParsedInsets",
        "()Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
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
.field private final parsedFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

.field private final parsedInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;


# direct methods
.method public constructor <init>(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;Ldevmenu/com/th3rdwave/safeareacontext/Rect;)V
    .locals 5
    .param p1, "insets"    # Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .param p2, "frame"    # Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    .line 13
    invoke-virtual {p1}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 14
    invoke-virtual {p1}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 15
    invoke-virtual {p1}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 16
    invoke-virtual {p1}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    iput-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;->parsedInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    .line 20
    new-instance v0, Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    .line 21
    invoke-virtual {p2}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 22
    invoke-virtual {p2}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 23
    invoke-virtual {p2}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getWidth()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 24
    invoke-virtual {p2}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;->getHeight()F

    move-result v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    .line 20
    invoke-direct {v0, v1, v2, v3, v4}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;-><init>(FFFF)V

    iput-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;->parsedFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    .line 7
    return-void
.end method

.method public static synthetic getParsedFrame$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
        key = "frame"
    .end annotation

    return-void
.end method

.method public static synthetic getParsedInsets$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
        key = "insets"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getParsedFrame()Ldevmenu/com/th3rdwave/safeareacontext/Rect;
    .locals 1

    .line 20
    iget-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;->parsedFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    return-object v0
.end method

.method public final getParsedInsets()Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .locals 1

    .line 12
    iget-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;->parsedInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    return-object v0
.end method
