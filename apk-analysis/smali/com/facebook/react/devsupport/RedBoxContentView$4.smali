.class Lcom/facebook/react/devsupport/RedBoxContentView$4;
.super Ljava/lang/Object;
.source "RedBoxContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/RedBoxContentView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/RedBoxContentView;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/RedBoxContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/RedBoxContentView;

    .line 267
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxContentView$4;->this$0:Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$4;->this$0:Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxContentView;->-$$Nest$fgetmDevSupportManager(Lcom/facebook/react/devsupport/RedBoxContentView;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->hideRedboxDialog()V

    .line 271
    return-void
.end method
