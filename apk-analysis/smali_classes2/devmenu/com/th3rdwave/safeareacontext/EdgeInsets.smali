.class public final Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
.super Ljava/lang/Object;
.source "EdgeInsets.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R$\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
        "Lexpo/modules/kotlin/records/Record;",
        "top",
        "",
        "right",
        "bottom",
        "left",
        "(FFFF)V",
        "getBottom$annotations",
        "()V",
        "getBottom",
        "()F",
        "setBottom",
        "(F)V",
        "getLeft$annotations",
        "getLeft",
        "setLeft",
        "getRight$annotations",
        "getRight",
        "setRight",
        "getTop$annotations",
        "getTop",
        "setTop",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "left"    # F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    .line 8
    iput p2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    .line 9
    iput p3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    .line 10
    iput p4, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    .line 6
    return-void
.end method

.method public static synthetic copy$default(Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;FFFFILjava/lang/Object;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->copy(FFFF)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBottom$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLeft$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRight$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTop$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    return v0
.end method

.method public final copy(FFFF)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .locals 1

    new-instance v0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    invoke-direct {v0, p1, p2, p3, p4}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    iget v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    iget v4, v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    iget v4, v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    iget v4, v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    iget v1, v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBottom()F
    .locals 1

    .line 9
    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    return v0
.end method

.method public final getLeft()F
    .locals 1

    .line 10
    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    return v0
.end method

.method public final getRight()F
    .locals 1

    .line 8
    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    return v0
.end method

.method public final getTop()F
    .locals 1

    .line 7
    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setBottom(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 9
    iput p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    return-void
.end method

.method public final setLeft(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 10
    iput p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    return-void
.end method

.method public final setRight(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 8
    iput p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    return-void
.end method

.method public final setTop(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 7
    iput p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->top:F

    iget v1, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->right:F

    iget v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    iget v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->left:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EdgeInsets(top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", right="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
