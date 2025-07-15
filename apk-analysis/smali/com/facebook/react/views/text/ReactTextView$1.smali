.class Lcom/facebook/react/views/text/ReactTextView$1;
.super Ljava/lang/Object;
.source "ReactTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/text/ReactTextView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/text/ReactTextView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/text/ReactTextView;

    .line 356
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView$1;->this$0:Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 359
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 360
    .local v0, "m1":Lcom/facebook/react/bridge/WritableMap;
    move-object v1, p2

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    .line 361
    .local v1, "m2":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "index"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    return v3
.end method
