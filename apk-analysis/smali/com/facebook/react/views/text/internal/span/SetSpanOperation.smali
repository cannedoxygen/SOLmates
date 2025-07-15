.class public final Lcom/facebook/react/views/text/internal/span/SetSpanOperation;
.super Ljava/lang/Object;
.source "SetSpanOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/internal/span/SetSpanOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/react/views/text/internal/span/SetSpanOperation;",
        "",
        "start",
        "",
        "end",
        "what",
        "Lcom/facebook/react/views/text/internal/span/ReactSpan;",
        "(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V",
        "execute",
        "",
        "builder",
        "Landroid/text/SpannableStringBuilder;",
        "priorityIndex",
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
.field public static final Companion:Lcom/facebook/react/views/text/internal/span/SetSpanOperation$Companion;

.field public static final SPAN_MAX_PRIORITY:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SetSpanOperation"


# instance fields
.field private final end:I

.field private final start:I

.field public final what:Lcom/facebook/react/views/text/internal/span/ReactSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->Companion:Lcom/facebook/react/views/text/internal/span/SetSpanOperation$Companion;

    return-void
.end method

.method public constructor <init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Lcom/facebook/react/views/text/internal/span/ReactSpan;

    const-string/jumbo v0, "what"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->start:I

    .line 18
    iput p2, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->end:I

    .line 19
    iput-object p3, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->what:Lcom/facebook/react/views/text/internal/span/ReactSpan;

    .line 16
    return-void
.end method


# virtual methods
.method public final execute(Landroid/text/SpannableStringBuilder;I)V
    .locals 6
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "priorityIndex"    # I

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 30
    const/16 v1, 0x22

    .line 31
    .local v1, "spanFlags":I
    iget v2, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->start:I

    if-nez v2, :cond_1

    .line 32
    const/16 v1, 0x12

    .line 36
    :cond_1
    rsub-int v2, p2, 0xff

    .line 38
    .local v2, "priority":I
    if-gez v2, :cond_2

    .line 39
    const-string v3, "SetSpanOperation"

    const-string v4, "Text tree size exceeded the limit, styling may become unpredictable"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    .local v0, "effectivePriority":I
    const v3, -0xff0001

    and-int/2addr v1, v3

    .line 48
    nop

    .line 49
    shl-int/lit8 v3, v0, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    .line 48
    or-int/2addr v3, v1

    .line 47
    move v1, v3

    .line 51
    iget-object v3, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->what:Lcom/facebook/react/views/text/internal/span/ReactSpan;

    iget v4, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->start:I

    iget v5, p0, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->end:I

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    return-void

    .line 27
    .end local v0    # "effectivePriority":I
    .end local v1    # "spanFlags":I
    .end local v2    # "priority":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
