.class Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;
.super Ljava/lang/Object;
.source "CloseableReferenceFactory.java"

# interfaces
.implements Lcom/facebook/common/references/CloseableReference$LeakHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;-><init>(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

.field final synthetic val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 29
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->this$0:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .locals 5
    .param p2, "stacktrace"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 33
    .local p1, "reference":Lcom/facebook/common/references/SharedReference;, "Lcom/facebook/common/references/SharedReference<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;->trackCloseableReferenceLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<value is null>"

    .line 36
    .local v1, "name":Ljava/lang/String;
    :goto_0
    nop

    .line 39
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    invoke-static {p2}, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;->-$$Nest$smgetStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 36
    const-string v3, "Fresco"

    const-string v4, "Finalized without closing: %x %x (type = %s).\nStack:\n%s"

    invoke-static {v3, v4, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public requiresStacktrace()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;->isSet()Z

    move-result v0

    return v0
.end method
