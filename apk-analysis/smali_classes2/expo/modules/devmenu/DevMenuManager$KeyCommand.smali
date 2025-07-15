.class public final Lexpo/modules/devmenu/DevMenuManager$KeyCommand;
.super Ljava/lang/Object;
.source "DevMenuManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devmenu/DevMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyCommand"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuManager$KeyCommand;",
        "",
        "code",
        "",
        "withShift",
        "",
        "(IZ)V",
        "getCode",
        "()I",
        "getWithShift",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
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
.field private final code:I

.field private final withShift:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "withShift"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    iput-boolean p2, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/devmenu/DevMenuManager$KeyCommand;IZILjava/lang/Object;)Lexpo/modules/devmenu/DevMenuManager$KeyCommand;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->copy(IZ)Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    return v0
.end method

.method public final copy(IZ)Lexpo/modules/devmenu/DevMenuManager$KeyCommand;
    .locals 1

    new-instance v0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    invoke-direct {v0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    iget v3, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    iget v4, v1, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    iget-boolean v1, v1, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 40
    iget v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    return v0
.end method

.method public final getWithShift()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->code:I

    iget-boolean v1, p0, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;->withShift:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyCommand(code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", withShift="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
