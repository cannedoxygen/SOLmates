.class Lcom/facebook/common/internal/AndroidPredicates$1;
.super Ljava/lang/Object;
.source "AndroidPredicates.java"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/internal/AndroidPredicates;->True()Lcom/facebook/common/internal/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Predicate<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 22
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
