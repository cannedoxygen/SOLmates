.class public Lcom/facebook/react/uimanager/UIManagerHelper;
.super Ljava/lang/Object;
.source "UIManagerHelper.java"


# static fields
.field public static final PADDING_BOTTOM_INDEX:I = 0x3

.field public static final PADDING_END_INDEX:I = 0x1

.field public static final PADDING_START_INDEX:I = 0x0

.field public static final PADDING_TOP_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/facebook/react/uimanager/UIManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultTextInputPadding(Landroid/content/Context;)[F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 216
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "editText":Landroid/widget/EditText;
    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 218
    .local v1, "padding":[F
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 219
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 220
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 221
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 222
    return-object v1
.end method

.method public static getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 6
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "uiManagerType"    # I

    .line 128
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    instance-of v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    .line 132
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/events/EventDispatcherProvider;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/events/EventDispatcherProvider;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 135
    .local v0, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-nez v0, :cond_2

    .line 136
    sget-object v1, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find UIManager for UIManagerType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_2
    invoke-interface {v0}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 143
    .local v1, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-nez v1, :cond_3

    .line 144
    sget-object v2, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get EventDispatcher for UIManagerType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_3
    return-object v1
.end method

.method public static getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 5
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "reactTag"    # I

    .line 112
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 113
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-nez v0, :cond_0

    .line 114
    sget-object v1, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get EventDispatcher for reactTag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 163
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    return-object v1
.end method

.method public static getSurfaceId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    instance-of v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz v0, :cond_0

    .line 206
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v0

    return v0

    .line 208
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getSurfaceId(Landroid/view/View;)I
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 176
    instance-of v0, p0, Lcom/facebook/react/uimanager/ReactRoot;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/ReactRoot;

    .line 178
    .local v0, "rootView":Lcom/facebook/react/uimanager/ReactRoot;
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactRoot;->getUIManagerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactRoot;->getRootViewTag()I

    move-result v1

    :cond_0
    return v1

    .line 181
    .end local v0    # "rootView":Lcom/facebook/react/uimanager/ReactRoot;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 184
    .local v0, "reactTag":I
    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 185
    return v1

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 189
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 190
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 193
    :cond_3
    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v3

    .line 194
    .local v3, "surfaceId":I
    if-ne v3, v1, :cond_4

    .line 196
    sget-object v1, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fabric View ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not have SurfaceId associated with it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_4
    return v3
.end method

.method public static getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 1
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "uiManagerType"    # I

    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    return-object v0
.end method

.method private static getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;
    .locals 6
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "uiManagerType"    # I
    .param p2, "returnNullIfCatalystIsInactive"    # Z

    .line 60
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getFabricUIManager()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 62
    .local v0, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-nez v0, :cond_0

    .line 63
    sget-object v2, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v4, "Cannot get UIManager because the instance hasn\'t been initialized yet."

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-object v1

    .line 69
    :cond_0
    return-object v0

    .line 72
    .end local v0    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasCatalystInstance()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    sget-object v0, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v3, "Cannot get UIManager because the context doesn\'t contain a CatalystInstance."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-object v1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    sget-object v0, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v3, "Cannot get UIManager because the context doesn\'t contain an active CatalystInstance."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    if-eqz p2, :cond_3

    .line 88
    return-object v1

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    .line 93
    .local v0, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getFabricUIManager()Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_4
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/UIManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/facebook/react/uimanager/UIManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get UIManager for UIManagerType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/UIManager;

    return-object v2
.end method

.method public static getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 1
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "reactTag"    # I

    .line 44
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    return-object v0
.end method
