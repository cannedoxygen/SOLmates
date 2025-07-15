.class public final Lcom/facebook/react/uimanager/common/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0007J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/common/ViewUtil;",
        "",
        "()V",
        "NO_SURFACE_ID",
        "",
        "getUIManagerType",
        "view",
        "Landroid/view/View;",
        "viewTag",
        "surfaceId",
        "isRootTag",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/common/ViewUtil;

.field public static final NO_SURFACE_ID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/common/ViewUtil;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/common/ViewUtil;->INSTANCE:Lcom/facebook/react/uimanager/common/ViewUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUIManagerType(I)I
    .locals 1
    .param p0, "viewTag"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 25
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0
.end method

.method public static final getUIManagerType(II)I
    .locals 3
    .param p0, "viewTag"    # I
    .param p1, "surfaceId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 58
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 59
    .local v0, "uiManagerType":I
    :goto_0
    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/facebook/react/uimanager/common/ViewUtil;->isRootTag(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_1

    .line 63
    return v2

    .line 66
    :cond_1
    return v0
.end method

.method public static final getUIManagerType(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    return v0
.end method

.method public static final isRootTag(I)Z
    .locals 2
    .param p0, "viewTag"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "You should not check the tag of the view to inspect if it\'s the rootTag. Relying on this logic could make your app/library break in the future."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 78
    rem-int/lit8 v0, p0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
