.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/views/textinput/ContentSizeWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactContentSizeWatcher"
.end annotation


# instance fields
.field private final mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousContentHeight:I

.field private mPreviousContentWidth:I

.field private final mSurfaceId:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 2
    .param p1, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentWidth:I

    .line 1239
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentHeight:I

    .line 1242
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1243
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 1244
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->-$$Nest$smgetEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 1245
    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mSurfaceId:I

    .line 1246
    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 8

    .line 1250
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-nez v0, :cond_0

    .line 1251
    return-void

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getWidth()I

    move-result v0

    .line 1255
    .local v0, "contentWidth":I
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getHeight()I

    move-result v1

    .line 1258
    .local v1, "contentHeight":I
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1260
    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getCompoundPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1261
    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1262
    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getCompoundPaddingRight()I

    move-result v3

    add-int v0, v2, v3

    .line 1263
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1264
    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getCompoundPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1265
    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1266
    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 1269
    :cond_1
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentWidth:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentHeight:I

    if-eq v1, v2, :cond_3

    .line 1270
    :cond_2
    iput v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentHeight:I

    .line 1271
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mPreviousContentWidth:I

    .line 1273
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v3, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;

    iget v4, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mSurfaceId:I

    iget-object v5, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1276
    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v5

    int-to-float v6, v0

    .line 1277
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    int-to-float v7, v1

    .line 1278
    invoke-static {v7}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;-><init>(IIFF)V

    .line 1273
    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1280
    :cond_3
    return-void
.end method
