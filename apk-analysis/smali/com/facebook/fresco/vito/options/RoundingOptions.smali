.class public final Lcom/facebook/fresco/vito/options/RoundingOptions;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J=\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u0018\u001a\u00020\u0003J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "",
        "isCircular",
        "",
        "cornerRadius",
        "",
        "cornerRadii",
        "",
        "isAntiAliased",
        "isForceRoundAtDecode",
        "(ZF[FZZ)V",
        "getCornerRadii",
        "()[F",
        "getCornerRadius",
        "()F",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hasRoundedCorners",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "options_release"
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
.field private static final AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

.field private static final AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

.field public static final CORNER_RADIUS_UNSET:F

.field public static final Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;


# instance fields
.field private final cornerRadii:[F

.field private final cornerRadius:F

.field private final isAntiAliased:Z

.field private final isCircular:Z

.field private final isForceRoundAtDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    .line 52
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 54
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-void
.end method

.method public constructor <init>(ZF[FZZ)V
    .locals 0
    .param p1, "isCircular"    # Z
    .param p2, "cornerRadius"    # F
    .param p3, "cornerRadii"    # [F
    .param p4, "isAntiAliased"    # Z
    .param p5, "isForceRoundAtDecode"    # Z

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 15
    iput p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 16
    iput-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 17
    iput-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 18
    iput-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 13
    return-void
.end method

.method public static final synthetic access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public static final synthetic access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public static final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/vito/options/RoundingOptions;ZF[FZZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/facebook/fresco/vito/options/RoundingOptions;->copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    return v0
.end method

.method public final component3()[F
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    return v0
.end method

.method public final copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7

    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 25
    return v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 28
    return v2

    .line 31
    :cond_2
    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.fresco.vito.options.RoundingOptions"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 33
    .local v1, "otherOptions":Lcom/facebook/fresco/vito/options/RoundingOptions;
    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    iget-boolean v4, v1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    if-ne v3, v4, :cond_4

    .line 34
    iget v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    iget v4, v1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 35
    iget-object v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    iget-object v4, v1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    iget-boolean v4, v1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    if-ne v3, v4, :cond_4

    .line 37
    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    iget-boolean v4, v1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 33
    :goto_2
    return v0
.end method

.method public final getCornerRadii()[F
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    return v0
.end method

.method public final hasRoundedCorners()Z
    .locals 3

    .line 21
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    .line 42
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 43
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 46
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final isAntiAliased()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    return v0
.end method

.method public final isCircular()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    return v0
.end method

.method public final isForceRoundAtDecode()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    iget-boolean v4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RoundingOptions(isCircular="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", cornerRadius="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerRadii="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAntiAliased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isForceRoundAtDecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
