.class Lcom/facebook/react/views/textinput/ReactEditText$1;
.super Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.source "ReactEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;Landroid/view/View;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "originalFocus"    # Z
    .param p4, "originalImportantForAccessibility"    # I

    .line 180
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {p0, p2, p3, p4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>(Landroid/view/View;ZI)V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 183
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 185
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelection(I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-static {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->-$$Nest$mrequestFocusInternal(Lcom/facebook/react/views/textinput/ReactEditText;)Z

    move-result v1

    return v1

    .line 194
    .end local v0    # "length":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
