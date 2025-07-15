.class Lcom/facebook/react/devsupport/DevServerHelper$6;
.super Ljava/lang/Object;
.source "DevServerHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->openDebugger(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;

.field final synthetic val$context:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevServerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$6;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevServerHelper$6;->val$context:Lcom/facebook/react/bridge/ReactContext;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevServerHelper$6;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "_call"    # Lokhttp3/Call;
    .param p2, "_e"    # Ljava/io/IOException;

    .line 532
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$6;->val$context:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper$6;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/react/util/RNLog;->w(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .param p1, "_call"    # Lokhttp3/Call;
    .param p2, "_response"    # Lokhttp3/Response;

    .line 536
    return-void
.end method
