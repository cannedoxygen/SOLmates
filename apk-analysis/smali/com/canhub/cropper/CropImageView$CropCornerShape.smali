.class public final enum Lcom/canhub/cropper/CropImageView$CropCornerShape;
.super Ljava/lang/Enum;
.source "CropImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropCornerShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "",
        "(Ljava/lang/String;I)V",
        "RECTANGLE",
        "OVAL",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field public static final enum OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field public static final enum RECTANGLE:Lcom/canhub/cropper/CropImageView$CropCornerShape;


# direct methods
.method private static final synthetic $values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 2

    sget-object v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    filled-new-array {v0, v1}, [Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1495
    new-instance v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropImageView$CropCornerShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    new-instance v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;

    const-string v1, "OVAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropImageView$CropCornerShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->$values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v0

    sput-object v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;->$VALUES:[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1494
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    const-class v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object v0
.end method

.method public static values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    sget-object v0, Lcom/canhub/cropper/CropImageView$CropCornerShape;->$VALUES:[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object v0
.end method
