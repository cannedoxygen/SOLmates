.class Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "ReactEditTextInputConnectionWrapper.java"


# static fields
.field public static final BACKSPACE_KEY_VALUE:Ljava/lang/String; = "Backspace"

.field public static final ENTER_KEY_VALUE:Ljava/lang/String; = "Enter"

.field public static final NEWLINE_RAW_VALUE:Ljava/lang/String; = "\n"


# instance fields
.field private mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mIsBatchEdit:Z

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 1
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p3, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mKey:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 68
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 69
    return-void
.end method

.method private dispatchKeyEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 155
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string p1, "Enter"

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 159
    return-void
.end method

.method private dispatchKeyEventOrEnqueue(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 147
    iget-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mIsBatchEdit:Z

    if-eqz v0, :cond_0

    .line 148
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mIsBatchEdit:Z

    .line 74
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 112
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v0, "Backspace"

    .line 115
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEventOrEnqueue(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 123
    const-string v0, "Backspace"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mIsBatchEdit:Z

    .line 80
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mKey:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 133
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/16 v1, 0x3a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/16 v1, 0x2f

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "isNumberKey":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    .line 136
    const-string v1, "Backspace"

    invoke-direct {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    .line 138
    const-string v1, "Enter"

    invoke-direct {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_2
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEvent(Ljava/lang/String;)V

    .line 143
    .end local v0    # "isNumberKey":Z
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 89
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v0

    .line 90
    .local v0, "previousSelectionStart":I
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionEnd()I

    move-result v1

    .line 92
    .local v1, "previousSelectionEnd":I
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 93
    .local v2, "consumed":Z
    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v3

    .line 94
    .local v3, "currentSelectionStart":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 95
    .local v6, "noPreviousSelection":Z
    :goto_0
    if-ne v3, v0, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    .line 96
    .local v7, "cursorDidNotMove":Z
    :goto_1
    if-lt v3, v0, :cond_2

    if-gtz v3, :cond_3

    :cond_2
    move v4, v5

    .line 98
    .local v4, "cursorMovedBackwardsOrAtBeginningOfInput":Z
    :cond_3
    if-nez v4, :cond_5

    if-nez v6, :cond_4

    if-eqz v7, :cond_4

    goto :goto_2

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v5, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_3

    .line 99
    .end local v5    # "key":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v5, "Backspace"

    .line 103
    .restart local v5    # "key":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v5}, Lcom/facebook/react/views/textinput/ReactEditTextInputConnectionWrapper;->dispatchKeyEventOrEnqueue(Ljava/lang/String;)V

    .line 104
    return v2
.end method
