.class public Lcom/facebook/drawee/view/MultiDraweeHolder;
.super Ljava/lang/Object;
.source "MultiDraweeHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/interfaces/DraweeHierarchy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;>;"
        }
    .end annotation
.end field

.field mIsAttached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILcom/facebook/drawee/view/DraweeHolder;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    .local p2, "holder":Lcom/facebook/drawee/view/DraweeHolder;, "Lcom/facebook/drawee/view/DraweeHolder<TDH;>;"
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/common/internal/Preconditions;->checkElementIndex(II)I

    .line 96
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 100
    :cond_0
    return-void
.end method

.method public add(Lcom/facebook/drawee/view/DraweeHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    .local p1, "holder":Lcom/facebook/drawee/view/DraweeHolder;, "Lcom/facebook/drawee/view/DraweeHolder<TDH;>;"
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/view/MultiDraweeHolder;->add(ILcom/facebook/drawee/view/DraweeHolder;)V

    .line 91
    return-void
.end method

.method public clear()V
    .locals 2

    .line 81
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 120
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->get(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public get(I)Lcom/facebook/drawee/view/DraweeHolder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeHolder;

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 46
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 62
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 72
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1, p1}, Lcom/facebook/drawee/view/DraweeHolder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "index"    # I

    .line 103
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeHolder;

    .line 104
    .local v0, "holder":Lcom/facebook/drawee/view/DraweeHolder;, "Lcom/facebook/drawee/view/DraweeHolder<TDH;>;"
    iget-boolean v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public size()I
    .locals 1

    .line 115
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 130
    .local p0, "this":Lcom/facebook/drawee/view/MultiDraweeHolder;, "Lcom/facebook/drawee/view/MultiDraweeHolder<TDH;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->get(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 132
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
