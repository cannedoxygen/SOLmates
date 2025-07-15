.class public Lcom/facebook/common/references/NoOpCloseableReference;
.super Lcom/facebook/common/references/CloseableReference;
.source "NoOpCloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/references/CloseableReference<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public clone()Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/common/references/NoOpCloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public cloneOrNull()Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    return-object p0
.end method

.method public close()V
    .locals 0

    .line 34
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 39
    .local p0, "this":Lcom/facebook/common/references/NoOpCloseableReference;, "Lcom/facebook/common/references/NoOpCloseableReference<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
