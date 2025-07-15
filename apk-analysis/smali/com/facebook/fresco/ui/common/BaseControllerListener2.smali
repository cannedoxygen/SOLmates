.class public Lcom/facebook/fresco/ui/common/BaseControllerListener2;
.super Ljava/lang/Object;
.source "BaseControllerListener2.java"

# interfaces
.implements Lcom/facebook/fresco/ui/common/ControllerListener2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/fresco/ui/common/ControllerListener2<",
        "TINFO;>;"
    }
.end annotation


# static fields
.field private static final NO_OP_LISTENER:Lcom/facebook/fresco/ui/common/ControllerListener2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/facebook/fresco/ui/common/BaseControllerListener2;

    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/BaseControllerListener2;-><init>()V

    sput-object v0, Lcom/facebook/fresco/ui/common/BaseControllerListener2;->NO_OP_LISTENER:Lcom/facebook/fresco/ui/common/ControllerListener2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoOpListener()Lcom/facebook/fresco/ui/common/ControllerListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/fresco/ui/common/ControllerListener2<",
            "TI;>;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/facebook/fresco/ui/common/BaseControllerListener2;->NO_OP_LISTENER:Lcom/facebook/fresco/ui/common/ControllerListener2;

    return-object v0
.end method


# virtual methods
.method public onEmptyEvent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extras"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extraData"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
            ")V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    .local p2, "imageInfo":Ljava/lang/Object;, "TINFO;"
    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 33
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    .local p2, "imageInfo":Ljava/lang/Object;, "TINFO;"
    return-void
.end method

.method public onRelease(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "extras"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extras"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    .local p0, "this":Lcom/facebook/fresco/ui/common/BaseControllerListener2;, "Lcom/facebook/fresco/ui/common/BaseControllerListener2<TINFO;>;"
    return-void
.end method
