.class public final Lcom/facebook/react/uimanager/Spacing;
.super Ljava/lang/Object;
.source "Spacing.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/Spacing$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000eJ\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0019\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0004H\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/Spacing;",
        "",
        "()V",
        "defaultValue",
        "",
        "(F)V",
        "original",
        "(Lcom/facebook/react/uimanager/Spacing;)V",
        "spacing",
        "",
        "(F[F)V",
        "hasAliasesSet",
        "",
        "valueFlags",
        "",
        "get",
        "spacingType",
        "getRaw",
        "getWithFallback",
        "fallbackType",
        "reset",
        "",
        "set",
        "value",
        "Companion",
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
.field public static final ALL:I = 0x8

.field public static final BLOCK:I = 0x9

.field public static final BLOCK_END:I = 0xa

.field public static final BLOCK_START:I = 0xb

.field public static final BOTTOM:I = 0x3

.field public static final Companion:Lcom/facebook/react/uimanager/Spacing$Companion;

.field public static final END:I = 0x5

.field public static final HORIZONTAL:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x4

.field public static final TOP:I = 0x1

.field public static final VERTICAL:I = 0x7

.field private static final flagsMap:[I


# instance fields
.field private final defaultValue:F

.field private hasAliasesSet:Z

.field private final spacing:[F

.field private valueFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/uimanager/Spacing$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/uimanager/Spacing;->Companion:Lcom/facebook/react/uimanager/Spacing$Companion;

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 174
    nop

    .line 176
    nop

    .line 174
    nop

    .line 177
    nop

    .line 174
    nop

    .line 178
    nop

    .line 174
    nop

    .line 179
    nop

    .line 174
    nop

    .line 180
    nop

    .line 174
    nop

    .line 181
    nop

    .line 174
    nop

    .line 182
    nop

    .line 174
    nop

    .line 183
    nop

    .line 174
    nop

    .line 184
    nop

    .line 174
    nop

    .line 185
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 174
    nop

    .line 173
    sput-object v0, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    sget-object v0, Lcom/facebook/react/uimanager/Spacing;->Companion:Lcom/facebook/react/uimanager/Spacing$Companion;

    invoke-static {v0}, Lcom/facebook/react/uimanager/Spacing$Companion;->access$newFullSpacingArray(Lcom/facebook/react/uimanager/Spacing$Companion;)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/react/uimanager/Spacing;-><init>(F[F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "defaultValue"    # F

    .line 24
    sget-object v0, Lcom/facebook/react/uimanager/Spacing;->Companion:Lcom/facebook/react/uimanager/Spacing$Companion;

    invoke-static {v0}, Lcom/facebook/react/uimanager/Spacing$Companion;->access$newFullSpacingArray(Lcom/facebook/react/uimanager/Spacing$Companion;)[F

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/Spacing;-><init>(F[F)V

    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1
    .param p1, "defaultValue"    # F
    .param p2, "spacing"    # [F

    const-string/jumbo v0, "spacing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/react/uimanager/Spacing;->defaultValue:F

    iput-object p2, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/Spacing;)V
    .locals 3
    .param p1, "original"    # Lcom/facebook/react/uimanager/Spacing;

    const-string/jumbo v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget v0, p1, Lcom/facebook/react/uimanager/Spacing;->defaultValue:F

    iget-object v1, p1, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F[F)V

    .line 32
    iget v0, p1, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    .line 33
    iget-boolean v0, p1, Lcom/facebook/react/uimanager/Spacing;->hasAliasesSet:Z

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/Spacing;->hasAliasesSet:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final get(I)F
    .locals 5
    .param p1, "spacingType"    # I

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 77
    :pswitch_0
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->defaultValue:F

    goto :goto_0

    .line 75
    :pswitch_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 70
    :goto_0
    nop

    .line 69
    nop

    .line 79
    .local v0, "defaultVal":F
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    if-nez v1, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    aget v2, v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v1, v1, p1

    return v1

    .line 85
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/Spacing;->hasAliasesSet:Z

    if-eqz v1, :cond_3

    .line 86
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x7

    .line 87
    .local v1, "secondType":I
    :goto_1
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v2, v2, v1

    return v2

    .line 89
    :cond_2
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v2, v2, v4

    return v2

    .line 93
    .end local v1    # "secondType":I
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getRaw(I)F
    .locals 1
    .param p1, "spacingType"    # I

    .line 102
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v0, v0, p1

    return v0
.end method

.method public final getWithFallback(II)F
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "fallbackType"    # I

    .line 120
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v1, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    aget v1, v1, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v0, v0, p1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    .line 120
    :goto_0
    return v0
.end method

.method public final reset()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([FFIIILjava/lang/Object;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/Spacing;->hasAliasesSet:Z

    .line 111
    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    .line 112
    return-void
.end method

.method public final set(IF)Z
    .locals 5
    .param p1, "spacingType"    # I
    .param p2, "value"    # F

    .line 45
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aget v0, v0, p1

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->spacing:[F

    aput p2, v0, p1

    .line 47
    nop

    .line 48
    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    aget v2, v2, p1

    not-int v2, v2

    and-int/2addr v0, v2

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    aget v2, v2, p1

    or-int/2addr v0, v2

    .line 47
    :goto_0
    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    .line 53
    nop

    .line 54
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 55
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 56
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 57
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->valueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->flagsMap:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    .line 53
    :cond_2
    iput-boolean v1, p0, Lcom/facebook/react/uimanager/Spacing;->hasAliasesSet:Z

    .line 58
    return v2

    .line 60
    :cond_3
    return v1
.end method
