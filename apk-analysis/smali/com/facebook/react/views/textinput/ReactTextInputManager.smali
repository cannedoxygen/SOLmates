.class public Lcom/facebook/react/views/textinput/ReactTextInputManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactTextInputManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidTextInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;,
        Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/facebook/react/views/textinput/ReactEditText;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTOCAPITALIZE_FLAGS:I = 0x7000

.field private static final BLUR_TEXT_INPUT:I = 0x2

.field private static final DRAWABLE_HANDLE_FIELDS:[Ljava/lang/String;

.field private static final DRAWABLE_HANDLE_RESOURCES:[Ljava/lang/String;

.field private static final EMPTY_FILTERS:[Landroid/text/InputFilter;

.field private static final FOCUS_TEXT_INPUT:I = 0x1

.field private static final IME_ACTION_ID:I = 0x670

.field private static final INPUT_TYPE_KEYBOARD_DECIMAL_PAD:I = 0x2002

.field private static final INPUT_TYPE_KEYBOARD_NUMBERED:I = 0x3002

.field private static final INPUT_TYPE_KEYBOARD_NUMBER_PAD:I = 0x2

.field private static final KEYBOARD_TYPE_DECIMAL_PAD:Ljava/lang/String; = "decimal-pad"

.field private static final KEYBOARD_TYPE_EMAIL_ADDRESS:Ljava/lang/String; = "email-address"

.field private static final KEYBOARD_TYPE_NUMBER_PAD:Ljava/lang/String; = "number-pad"

.field private static final KEYBOARD_TYPE_NUMERIC:Ljava/lang/String; = "numeric"

.field private static final KEYBOARD_TYPE_PHONE_PAD:Ljava/lang/String; = "phone-pad"

.field private static final KEYBOARD_TYPE_URI:Ljava/lang/String; = "url"

.field private static final KEYBOARD_TYPE_VISIBLE_PASSWORD:Ljava/lang/String; = "visible-password"

.field private static final PASSWORD_VISIBILITY_FLAG:I = 0x10

.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidTextInput"

.field private static final REACT_PROPS_AUTOFILL_HINTS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_MOST_RECENT_EVENT_COUNT:I = 0x3

.field private static final SET_TEXT_AND_SELECTION:I = 0x4

.field private static final SPACING_TYPES:[I

.field public static final TAG:Ljava/lang/String;

.field private static final TX_STATE_KEY_ATTRIBUTED_STRING:S = 0x0s

.field private static final TX_STATE_KEY_HASH:S = 0x2s

.field private static final TX_STATE_KEY_MOST_RECENT_EVENT_COUNT:S = 0x3s

.field private static final TX_STATE_KEY_PARAGRAPH_ATTRIBUTES:S = 0x1s

.field private static final UNSET:I = -0x1


# instance fields
.field protected mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;


# direct methods
.method static bridge synthetic -$$Nest$smgetEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 90
    const-class v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    .line 99
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    .line 102
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->REACT_PROPS_AUTOFILL_HINTS_MAP:Ljava/util/Map;

    .line 172
    new-array v0, v1, [Landroid/text/InputFilter;

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->EMPTY_FILTERS:[Landroid/text/InputFilter;

    .line 174
    new-array v0, v4, [Ljava/lang/String;

    const-string v5, "mTextSelectHandleLeftRes"

    aput-object v5, v0, v1

    const-string v5, "mTextSelectHandleRightRes"

    aput-object v5, v0, v3

    const-string v5, "mTextSelectHandleRes"

    aput-object v5, v0, v2

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->DRAWABLE_HANDLE_RESOURCES:[Ljava/lang/String;

    .line 177
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "mSelectHandleLeft"

    aput-object v4, v0, v1

    const-string v1, "mSelectHandleRight"

    aput-object v1, v0, v3

    const-string v1, "mSelectHandleCenter"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->DRAWABLE_HANDLE_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method

.method private static checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 2
    .param p0, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1084
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x3002

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1087
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 1090
    :cond_0
    return-void
.end method

.method private static getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1099
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method private getReactTextUpdate(Ljava/lang/String;I)Lcom/facebook/react/views/text/ReactTextUpdate;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mostRecentEventCount"    # I

    .line 333
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 334
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    sget-object v1, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    invoke-static {p1, v1}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 336
    new-instance v12, Lcom/facebook/react/views/text/ReactTextUpdate;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, v0

    move v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZFFFFIII)V

    return-object v12
.end method

.method static synthetic lambda$addEventEmitters$0(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;Landroid/view/View;Z)V
    .locals 5
    .param p0, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p1, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 1171
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v0

    .line 1172
    .local v0, "surfaceId":I
    invoke-static {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 1173
    .local v1, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz p3, :cond_0

    .line 1174
    new-instance v2, Lcom/facebook/react/views/textinput/ReactTextInputFocusEvent;

    .line 1175
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputFocusEvent;-><init>(II)V

    .line 1174
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 1177
    :cond_0
    new-instance v2, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1179
    new-instance v2, Lcom/facebook/react/views/textinput/ReactTextInputEndEditingEvent;

    .line 1181
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/facebook/react/views/textinput/ReactTextInputEndEditingEvent;-><init>(IILjava/lang/String;)V

    .line 1179
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1183
    :goto_0
    return-void
.end method

.method static synthetic lambda$addEventEmitters$1(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p0, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "actionId"    # I
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1187
    and-int/lit16 v0, p3, 0xff

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    return v1

    .line 1188
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v0

    .line 1190
    .local v0, "isMultiline":Z
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->shouldSubmitOnReturn()Z

    move-result v2

    .line 1191
    .local v2, "shouldSubmit":Z
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->shouldBlurOnReturn()Z

    move-result v3

    .line 1200
    .local v3, "shouldBlur":Z
    if-eqz v2, :cond_2

    .line 1201
    invoke-static {p1, p0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v4

    .line 1202
    .local v4, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    new-instance v5, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;

    .line 1204
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v6

    .line 1205
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v7

    .line 1206
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;-><init>(IILjava/lang/String;)V

    .line 1202
    invoke-interface {v4, v5}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1209
    .end local v4    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    :cond_2
    if-eqz v3, :cond_3

    .line 1210
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocus()V

    .line 1214
    :cond_3
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-nez v0, :cond_4

    goto :goto_2

    .line 1226
    :cond_4
    const/4 v4, 0x5

    if-eq p3, v4, :cond_6

    const/4 v4, 0x7

    if-ne p3, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    return v1

    .line 1215
    :cond_7
    :goto_2
    return v1
.end method

.method private varargs setAutofillHints(Lcom/facebook/react/views/textinput/ReactEditText;[Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "hints"    # [Ljava/lang/String;

    .line 449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "mode"    # I

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setImportantForAutofill(I)V

    .line 445
    return-void
.end method

.method private static shouldHideCursorForEmailTextInput()Z
    .locals 3

    .line 646
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "manufacturer":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V
    .locals 2
    .param p0, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p1, "flagsToUnset"    # I
    .param p2, "flagsToSet"    # I

    .line 1094
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    not-int v1, p1

    and-int/2addr v0, v1

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setStagedInputType(I)V

    .line 1095
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1167
    invoke-static {p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setEventDispatcher(Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 1168
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1169
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1185
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1232
    return-void
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->createShadowNodeInstance()Lcom/facebook/react/views/text/ReactBaseTextShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
    .locals 1

    .line 206
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;-><init>()V

    return-object v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
    .locals 1
    .param p1, "reactTextViewManagerCallback"    # Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 211
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/textinput/ReactEditText;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/textinput/ReactEditText;
    .locals 4
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 190
    new-instance v0, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactEditText;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "editText":Lcom/facebook/react/views/textinput/ReactEditText;
    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getInputType()I

    move-result v1

    .line 192
    .local v1, "inputType":I
    const v2, -0x20001

    and-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setInputType(I)V

    .line 193
    const-string v2, "done"

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setReturnKeyType(Ljava/lang/String;)V

    .line 198
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "focusTextInput"

    const-string v3, "blurTextInput"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    nop

    .line 224
    invoke-super {p0}, Lcom/facebook/react/uimanager/BaseViewManager;->getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    .line 226
    .local v0, "baseEventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 227
    .local v1, "eventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    nop

    .line 228
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 233
    const-string v3, "bubbled"

    const-string/jumbo v4, "onSubmitEditing"

    const-string v5, "captured"

    const-string/jumbo v6, "onSubmitEditingCapture"

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 231
    const-string/jumbo v6, "phasedRegistrationNames"

    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 229
    const-string/jumbo v7, "topSubmitEditing"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 239
    const-string/jumbo v4, "onEndEditing"

    const-string/jumbo v7, "onEndEditingCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 237
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 235
    const-string/jumbo v7, "topEndEditing"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 244
    const-string/jumbo v4, "onFocus"

    const-string/jumbo v7, "onFocusCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 242
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 240
    const-string/jumbo v7, "topFocus"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 249
    const-string/jumbo v4, "onBlur"

    const-string/jumbo v7, "onBlurCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 247
    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 245
    const-string/jumbo v7, "topBlur"

    invoke-virtual {v2, v7, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 254
    const-string/jumbo v4, "onKeyPress"

    const-string/jumbo v7, "onKeyPressCapture"

    invoke-static {v3, v4, v5, v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 252
    invoke-static {v6, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 250
    const-string/jumbo v4, "topKeyPress"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v2

    .line 227
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    return-object v1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-super {p0}, Lcom/facebook/react/uimanager/BaseViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    .line 265
    .local v0, "baseEventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 266
    .local v1, "eventTypeConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    nop

    .line 267
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 269
    invoke-static {v3}, Lcom/facebook/react/views/scroll/ScrollEventType;->getJSEventName(Lcom/facebook/react/views/scroll/ScrollEventType;)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string/jumbo v4, "registrationName"

    const-string/jumbo v5, "onScroll"

    invoke-static {v4, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 268
    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v2

    .line 266
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    return-object v1
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1361
    nop

    .line 1365
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1367
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1369
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1371
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1363
    const-string/jumbo v1, "none"

    const-string v3, "characters"

    const-string/jumbo v5, "words"

    const-string/jumbo v7, "sentences"

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1361
    const-string v1, "AutoCapitalizationType"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 185
    const-string v0, "AndroidTextInput"

    return-object v0
.end method

.method public getReactTextUpdate(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;
    .locals 8
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "state"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;

    .line 1409
    invoke-interface {p3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    return-object v0

    .line 1413
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v1

    .line 1414
    .local v1, "attributedString":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v2

    .line 1416
    .local v2, "paragraphAttributes":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    nop

    .line 1418
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 1417
    invoke-static {v3, v1, v4}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v3

    .line 1420
    .local v3, "spanned":Landroid/text/Spannable;
    nop

    .line 1422
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1421
    invoke-static {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v4

    .line 1424
    .local v4, "textBreakStrategy":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getJustificationMode()I

    move-result v0

    .line 1426
    .local v0, "currentJustificationMode":I
    :goto_0
    nop

    .line 1428
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v5

    .line 1430
    invoke-static {v1}, Lcom/facebook/react/views/text/TextLayoutManager;->isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z

    move-result v6

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getGravityHorizontal()I

    move-result v7

    .line 1429
    invoke-static {p2, v6, v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextAlignment(Lcom/facebook/react/uimanager/ReactStylesDiffMap;ZI)I

    move-result v6

    .line 1432
    invoke-static {p2, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;I)I

    move-result v7

    .line 1426
    invoke-static {v3, v5, v6, v4, v7}, Lcom/facebook/react/views/text/ReactTextUpdate;->buildReactTextUpdateFromState(Landroid/text/Spannable;IIII)Lcom/facebook/react/views/text/ReactTextUpdate;

    move-result-object v5

    return-object v5
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 216
    const-class v0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1077
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 1078
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeUpdateTypeface()V

    .line 1079
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->commitStagedInputType()V

    .line 1080
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "reactEditText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 283
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    const-string/jumbo v0, "setTextAndSelection"

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 292
    :pswitch_1
    goto :goto_0

    .line 288
    :pswitch_2
    const-string v0, "blur"

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 289
    goto :goto_0

    .line 285
    :pswitch_3
    const-string v0, "focus"

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 286
    nop

    .line 297
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public receiveCommand(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .param p1, "reactEditText"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 302
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "focusTextInput"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "setTextAndSelection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "focus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "blur"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "blurTextInput"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 312
    :pswitch_0
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    .line 313
    .local v0, "mostRecentEventCount":I
    if-ne v0, v5, :cond_1

    .line 314
    return-void

    .line 317
    :cond_1
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    .line 318
    .local v1, "start":I
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 319
    .local v2, "end":I
    if-ne v2, v5, :cond_2

    .line 320
    move v2, v1

    .line 323
    :cond_2
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "text":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getReactTextUpdate(Ljava/lang/String;I)Lcom/facebook/react/views/text/ReactTextUpdate;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeSetTextFromJS(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    .line 327
    .end local v3    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeSetSelection(III)V

    goto :goto_2

    .line 309
    .end local v0    # "mostRecentEventCount":I
    .end local v1    # "start":I
    .end local v2    # "end":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocusFromJS()V

    .line 310
    goto :goto_2

    .line 305
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->requestFocusFromJS()V

    .line 306
    nop

    .line 330
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x654a360a -> :sswitch_4
        0x2e3067 -> :sswitch_3
        0x5d154d8 -> :sswitch_2
        0x550e73c4 -> :sswitch_1
        0x64c614a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllowFontScaling(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "allowFontScaling"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "allowFontScaling"
    .end annotation

    .line 502
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setAllowFontScaling(Z)V

    .line 503
    return-void
.end method

.method public setAutoCapitalize(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoCapitalize"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoCapitalize"
    .end annotation

    .line 873
    const/16 v0, 0x4000

    .line 875
    .local v0, "autoCapitalizeValue":I
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_0

    .line 876
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v0

    goto :goto_2

    .line 877
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 878
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "autoCapitalizeStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "characters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "sentences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "words"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 891
    :pswitch_0
    const/16 v0, 0x4000

    goto :goto_2

    .line 888
    :pswitch_1
    const/16 v0, 0x2000

    .line 889
    goto :goto_2

    .line 885
    :pswitch_2
    const/16 v0, 0x1000

    .line 886
    goto :goto_2

    .line 882
    :pswitch_3
    const/4 v0, 0x0

    .line 883
    nop

    .line 896
    .end local v1    # "autoCapitalizeStr":Ljava/lang/String;
    :cond_2
    :goto_2
    const/16 v1, 0x7000

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 897
    return-void

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_3
        0x6c11aa9 -> :sswitch_2
        0x1d36f670 -> :sswitch_1
        0x4a3baa6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoCorrect(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoCorrect"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoCorrect"
    .end annotation

    .line 839
    nop

    .line 842
    if-eqz p2, :cond_1

    .line 843
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const v0, 0x8000

    goto :goto_0

    .line 845
    :cond_0
    const/high16 v0, 0x80000

    goto :goto_0

    .line 846
    :cond_1
    const/4 v0, 0x0

    .line 839
    :goto_0
    const v1, 0x88000

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 847
    return-void
.end method

.method public setAutoFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoFocus"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "autoFocus"
    .end annotation

    .line 999
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setAutoFocus(Z)V

    .line 1000
    return-void
.end method

.method public bridge synthetic setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBackgroundColor(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "backgroundColor"    # I

    .line 1068
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1071
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setBackgroundColor(Landroid/view/View;I)V

    .line 1073
    :goto_0
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor"
        }
    .end annotation

    .line 1047
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1, v0, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1050
    :cond_0
    sget-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderColor(ILjava/lang/Integer;)V

    .line 1052
    :goto_0
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    .line 960
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p3, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    :goto_0
    nop

    .line 966
    .local v0, "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {p1, v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 967
    .end local v0    # "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    goto :goto_1

    .line 968
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 969
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 972
    :cond_2
    if-nez p2, :cond_3

    .line 973
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderRadius(F)V

    goto :goto_1

    .line 975
    :cond_3
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderRadius(FI)V

    .line 978
    :goto_1
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "borderStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 982
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 986
    .local v0, "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    .line 987
    .end local v0    # "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    goto :goto_1

    .line 988
    :cond_1
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderStyle(Ljava/lang/String;)V

    .line 990
    :goto_1
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth"
        }
    .end annotation

    .line 1026
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1030
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 1032
    :cond_1
    sget-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setBorderWidth(IF)V

    .line 1034
    :goto_0
    return-void
.end method

.method public setBoxShadow(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "shadows"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "BoxShadow"
        name = "boxShadow"
    .end annotation

    .line 1061
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1064
    :cond_0
    return-void
.end method

.method public setCaretHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "caretHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "caretHidden"
    .end annotation

    .line 652
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getStagedInputType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 653
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->shouldHideCursorForEmailTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setCursorVisible(Z)V

    .line 657
    return-void
.end method

.method public setColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 671
    if-nez p2, :cond_2

    .line 672
    nop

    .line 673
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 675
    .local v0, "defaultContextTextColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 678
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 679
    .local v1, "c":Landroid/content/Context;
    sget-object v2, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get default text color from View Context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 683
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    .end local v0    # "defaultContextTextColor":Landroid/content/res/ColorStateList;
    .end local v1    # "c":Landroid/content/Context;
    :goto_1
    goto :goto_2

    .line 686
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextColor(I)V

    .line 688
    :goto_2
    return-void
.end method

.method public setContextMenuHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "contextMenuHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "contextMenuHidden"
    .end annotation

    .line 661
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setContextMenuHidden(Z)V

    .line 662
    return-void
.end method

.method public setCursorColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "cursorColor"
    .end annotation

    .line 591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 592
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 593
    .local v0, "cursorDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 594
    if-eqz p2, :cond_0

    .line 595
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 599
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :cond_1
    return-void

    .line 604
    .end local v0    # "cursorDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_3

    .line 608
    return-void

    .line 614
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 615
    .local v0, "drawableCursorField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 619
    .local v2, "resourceId":I
    if-nez v2, :cond_4

    .line 620
    return-void

    .line 623
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 624
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_5

    .line 625
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 627
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 630
    :goto_1
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mEditor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 631
    .local v4, "editorField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 632
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 634
    .local v5, "editor":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mCursorDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 635
    .local v6, "cursorDrawableField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 636
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v3, v7, v1

    move-object v1, v7

    .line 637
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "drawableCursorField":Ljava/lang/reflect/Field;
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "resourceId":I
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "editorField":Ljava/lang/reflect/Field;
    .end local v5    # "editor":Ljava/lang/Object;
    .end local v6    # "cursorDrawableField":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 641
    :catch_0
    move-exception v0

    goto :goto_3

    .line 638
    :catch_1
    move-exception v0

    .line 642
    :goto_2
    nop

    .line 643
    :goto_3
    return-void
.end method

.method public setDisableFullscreenUI(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "disableFullscreenUI"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableFullscreenUI"
    .end annotation

    .line 940
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setDisableFullscreenUI(Z)V

    .line 941
    return-void
.end method

.method public setEditable(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "editable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "editable"
    .end annotation

    .line 773
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setEnabled(Z)V

    .line 774
    return-void
.end method

.method public setFontFamily(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontFamily"
    .end annotation

    .line 396
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontFamily(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setFontSize(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontSize"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 14.0f
        name = "fontSize"
    .end annotation

    .line 391
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontSize(F)V

    .line 392
    return-void
.end method

.method public setFontStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontStyle"
    .end annotation

    .line 411
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontStyle(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setFontVariant(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontVariant"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontVariant"
    .end annotation

    .line 416
    invoke-static {p2}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontVariant(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public setFontWeight(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "fontWeight"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontWeight"
    .end annotation

    .line 406
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setFontWeight(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "importantForAutofill"
    .end annotation

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "mode":I
    const-string v1, "no"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/4 v0, 0x2

    goto :goto_0

    .line 429
    :cond_0
    const-string v1, "noExcludeDescendants"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    const/16 v0, 0x8

    goto :goto_0

    .line 431
    :cond_1
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :cond_2
    const-string/jumbo v1, "yesExcludeDescendants"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    const/4 v0, 0x4

    .line 436
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    .line 437
    return-void
.end method

.method public setIncludeFontPadding(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "includepad"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "includeFontPadding"
    .end annotation

    .line 421
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setIncludeFontPadding(Z)V

    .line 422
    return-void
.end method

.method public setInlineImageLeft(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inlineImageLeft"
    .end annotation

    .line 762
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 763
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 764
    return-void
.end method

.method public setInlineImagePadding(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "padding"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inlineImagePadding"
    .end annotation

    .line 768
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setCompoundDrawablePadding(I)V

    .line 769
    return-void
.end method

.method public setKeyboardType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "keyboardType"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "keyboardType"
    .end annotation

    .line 901
    const/4 v0, 0x1

    .line 902
    .local v0, "flagsToSet":I
    const-string/jumbo v1, "numeric"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const/16 v0, 0x3002

    goto :goto_0

    .line 904
    :cond_0
    const-string/jumbo v1, "number-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 905
    const/4 v0, 0x2

    goto :goto_0

    .line 906
    :cond_1
    const-string v1, "decimal-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    const/16 v0, 0x2002

    goto :goto_0

    .line 908
    :cond_2
    const-string v1, "email-address"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 909
    const/16 v0, 0x21

    .line 916
    invoke-static {}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->shouldHideCursorForEmailTextInput()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 917
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 919
    :cond_3
    const-string/jumbo v1, "phone-pad"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 920
    const/4 v0, 0x3

    goto :goto_0

    .line 921
    :cond_4
    const-string/jumbo v1, "visible-password"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 924
    const/16 v0, 0x90

    goto :goto_0

    .line 925
    :cond_5
    const-string/jumbo v1, "url"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 926
    const/16 v0, 0x10

    .line 929
    :cond_6
    :goto_0
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 930
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V

    .line 931
    return-void
.end method

.method public setLetterSpacing(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "letterSpacing"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "letterSpacing"
    .end annotation

    .line 497
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLetterSpacingPt(F)V

    .line 498
    return-void
.end method

.method public setLineHeight(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "lineHeight"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "lineHeight"
    .end annotation

    .line 386
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLineHeight(I)V

    .line 387
    return-void
.end method

.method public setMaxFontSizeMultiplier(Lcom/facebook/react/views/textinput/ReactEditText;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "maxFontSizeMultiplier"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "maxFontSizeMultiplier"
    .end annotation

    .line 401
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setMaxFontSizeMultiplier(F)V

    .line 402
    return-void
.end method

.method public setMaxLength(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "maxLength"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxLength"
    .end annotation

    .line 783
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 784
    .local v0, "currentFilters":[Landroid/text/InputFilter;
    sget-object v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;->EMPTY_FILTERS:[Landroid/text/InputFilter;

    .line 786
    .local v1, "newFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    if-nez p2, :cond_3

    .line 787
    array-length v3, v0

    if-lez v3, :cond_8

    .line 788
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 789
    .local v3, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/text/InputFilter;>;"
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 790
    .local v5, "currentFilter":Landroid/text/InputFilter;
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-nez v6, :cond_0

    .line 791
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v5    # "currentFilter":Landroid/text/InputFilter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 795
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Landroid/text/InputFilter;

    .line 797
    .end local v3    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/text/InputFilter;>;"
    :cond_2
    goto :goto_2

    .line 799
    :cond_3
    array-length v3, v0

    const/4 v4, 0x1

    if-lez v3, :cond_7

    .line 800
    move-object v1, v0

    .line 801
    const/4 v3, 0x0

    .line 802
    .local v3, "replaced":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 803
    aget-object v6, v0, v5

    instance-of v6, v6, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_4

    .line 804
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v5

    .line 805
    const/4 v3, 0x1

    .line 802
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 808
    .end local v5    # "i":I
    :cond_5
    if-nez v3, :cond_6

    .line 809
    array-length v5, v0

    add-int/2addr v5, v4

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 810
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    array-length v2, v0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v2

    .line 813
    .end local v3    # "replaced":Z
    :cond_6
    goto :goto_2

    .line 814
    :cond_7
    new-array v1, v4, [Landroid/text/InputFilter;

    .line 815
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 819
    :cond_8
    :goto_2
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 820
    return-void
.end method

.method public setMultiline(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "multiline"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "multiline"
    .end annotation

    .line 851
    nop

    .line 853
    const/4 v0, 0x0

    const/high16 v1, 0x20000

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 854
    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    .line 851
    :cond_1
    invoke-static {p1, v2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 855
    return-void
.end method

.method public setNumLines(Lcom/facebook/react/views/textinput/ReactEditText;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "numLines"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "numberOfLines"
    .end annotation

    .line 778
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setLines(I)V

    .line 779
    return-void
.end method

.method public setOnContentSizeChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onContentSizeChange"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onContentSizeChange"
    .end annotation

    .line 471
    if-eqz p2, :cond_0

    .line 472
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactContentSizeWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setContentSizeWatcher(Lcom/facebook/react/views/textinput/ContentSizeWatcher;)V

    .line 476
    :goto_0
    return-void
.end method

.method public setOnKeyPress(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onKeyPress"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onKeyPress"
    .end annotation

    .line 489
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setOnKeyPress(Z)V

    .line 490
    return-void
.end method

.method public setOnScroll(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onScroll"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onScroll"
    .end annotation

    .line 480
    if-eqz p2, :cond_0

    .line 481
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setScrollWatcher(Lcom/facebook/react/views/textinput/ScrollWatcher;)V

    .line 485
    :goto_0
    return-void
.end method

.method public setOnSelectionChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "onSelectionChange"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "onSelectionChange"
    .end annotation

    .line 457
    if-eqz p2, :cond_0

    .line 458
    new-instance v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V

    goto :goto_0

    .line 460
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectionWatcher(Lcom/facebook/react/views/textinput/SelectionWatcher;)V

    .line 462
    :goto_0
    return-void
.end method

.method public setOverflow(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "overflow"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 1056
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setOverflow(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method public bridge synthetic setPadding(Landroid/view/View;IIII)V
    .locals 6

    .line 88
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/textinput/ReactEditText;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setPadding(Lcom/facebook/react/views/textinput/ReactEditText;IIII)V

    return-void
.end method

.method public setPadding(Lcom/facebook/react/views/textinput/ReactEditText;IIII)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1376
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/facebook/react/views/textinput/ReactEditText;->setPadding(IIII)V

    .line 1377
    return-void
.end method

.method public setPlaceholder(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "placeholder"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "placeholder"
    .end annotation

    .line 507
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setPlaceholder(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setPlaceholderTextColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "placeholderTextColor"
    .end annotation

    .line 512
    if-nez p2, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColorHint(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHintTextColor(I)V

    .line 517
    :goto_0
    return-void
.end method

.method public setReturnKeyLabel(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "returnKeyLabel"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "returnKeyLabel"
    .end annotation

    .line 947
    const/16 v0, 0x670

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 948
    return-void
.end method

.method public setReturnKeyType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "returnKeyType"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "returnKeyType"
    .end annotation

    .line 935
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setReturnKeyType(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public setSecureTextEntry(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "password"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "secureTextEntry"
    .end annotation

    .line 859
    nop

    .line 861
    if-eqz p2, :cond_0

    .line 862
    goto :goto_0

    .line 863
    :cond_0
    nop

    .line 864
    :goto_0
    if-eqz p2, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 859
    :goto_1
    const/16 v1, 0x90

    invoke-static {p1, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateStagedInputTypeFlag(Lcom/facebook/react/views/textinput/ReactEditText;II)V

    .line 865
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->checkPasswordType(Lcom/facebook/react/views/textinput/ReactEditText;)V

    .line 866
    return-void
.end method

.method public setSelectTextOnFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "selectTextOnFocus"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "selectTextOnFocus"
    .end annotation

    .line 666
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelectTextOnFocus(Z)V

    .line 667
    return-void
.end method

.method public setSelectionColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectionColor"
    .end annotation

    .line 521
    if-nez p2, :cond_0

    .line 522
    nop

    .line 523
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColorHighlight(Landroid/content/Context;)I

    move-result v0

    .line 522
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHighlightColor(I)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setHighlightColor(I)V

    .line 527
    :goto_0
    return-void
.end method

.method public setSelectionHandleColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectionHandleColor"
    .end annotation

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    .local v0, "drawableCenter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 534
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 535
    .local v2, "drawableRight":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 536
    new-instance v3, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 537
    .local v3, "filter":Landroid/graphics/BlendModeColorFilter;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 538
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 539
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 540
    .end local v3    # "filter":Landroid/graphics/BlendModeColorFilter;
    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 542
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 543
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 545
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 546
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 547
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    .line 548
    return-void

    .line 552
    .end local v0    # "drawableCenter":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    .line 553
    return-void

    .line 557
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;->DRAWABLE_HANDLE_RESOURCES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 559
    nop

    .line 560
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/views/textinput/ReactTextInputManager;->DRAWABLE_HANDLE_RESOURCES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 561
    .local v1, "drawableResourceField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 562
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 565
    .local v3, "resourceId":I
    if-nez v3, :cond_3

    .line 566
    return-void

    .line 569
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 570
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    .line 571
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 573
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 576
    :goto_2
    const-class v5, Landroid/widget/TextView;

    const-string v6, "mEditor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 577
    .local v5, "editorField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 578
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 580
    .local v6, "editor":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/views/textinput/ReactTextInputManager;->DRAWABLE_HANDLE_FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 581
    .local v7, "cursorDrawableField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 582
    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "drawableResourceField":Ljava/lang/reflect/Field;
    .end local v3    # "resourceId":I
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "editorField":Ljava/lang/reflect/Field;
    .end local v6    # "editor":Ljava/lang/Object;
    .end local v7    # "cursorDrawableField":Ljava/lang/reflect/Field;
    goto :goto_3

    .line 584
    :catch_0
    move-exception v1

    goto :goto_4

    .line 583
    :catch_1
    move-exception v1

    .line 585
    :goto_3
    nop

    .line 557
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 587
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public setSubmitBehavior(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "submitBehavior"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "submitBehavior"
    .end annotation

    .line 466
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setSubmitBehavior(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public setTextAlign(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "textAlign"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlign"
    .end annotation

    .line 718
    const-string v0, "justify"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x1a

    if-eqz v0, :cond_1

    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 720
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setJustificationMode(I)V

    .line 722
    :cond_0
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 724
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 725
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setJustificationMode(I)V

    .line 728
    :cond_2
    if-eqz p2, :cond_7

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 730
    :cond_3
    const-string v0, "left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 732
    :cond_4
    const-string/jumbo v0, "right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 733
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 734
    :cond_5
    const-string v0, "center"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 735
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 737
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid textAlign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    goto :goto_1

    .line 729
    :cond_7
    :goto_0
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityHorizontal(I)V

    .line 741
    :goto_1
    return-void
.end method

.method public setTextAlignVertical(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "textAlignVertical"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlignVertical"
    .end annotation

    .line 745
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const-string v1, "auto"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 749
    :cond_1
    const-string v1, "bottom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 751
    :cond_2
    const-string v1, "center"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 754
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlignVertical: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    goto :goto_1

    .line 746
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setGravityVertical(I)V

    .line 757
    :goto_1
    return-void
.end method

.method public setTextContentType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "autoComplete"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoComplete"
    .end annotation

    .line 824
    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 825
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    goto :goto_0

    .line 826
    :cond_0
    const-string/jumbo v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    goto :goto_0

    .line 828
    :cond_1
    sget-object v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;->REACT_PROPS_AUTOFILL_HINTS_MAP:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 829
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;->REACT_PROPS_AUTOFILL_HINTS_MAP:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAutofillHints(Lcom/facebook/react/views/textinput/ReactEditText;[Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    .line 834
    :goto_0
    return-void
.end method

.method public setTextDecorationLine(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "textDecorationLineString"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textDecorationLine"
    .end annotation

    .line 1004
    nop

    .line 1005
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x19

    .line 1004
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->setPaintFlags(I)V

    .line 1007
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1008
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1009
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setPaintFlags(I)V

    goto :goto_1

    .line 1010
    :cond_0
    const-string v4, "line-through"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1011
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {p1, v4}, Lcom/facebook/react/views/textinput/ReactEditText;->setPaintFlags(I)V

    .line 1007
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    :cond_2
    return-void
.end method

.method public setUnderlineColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "underlineColor"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "underlineColorAndroid"
    .end annotation

    .line 694
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 695
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    .line 697
    .local v1, "drawableToMutate":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 698
    return-void

    .line 701
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 703
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 706
    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    const-string v4, "NullPointerException when setting underlineColorAndroid for TextInput"

    invoke-static {v3, v4, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 710
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 712
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 714
    :goto_1
    return-void
.end method

.method public showKeyboardOnFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "showKeyboardOnFocus"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "showSoftInputOnFocus"
    .end annotation

    .line 994
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->setShowSoftInputOnFocus(Z)V

    .line 995
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateExtraData(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Object;)V
    .locals 11
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 342
    instance-of v0, p2, Lcom/facebook/react/views/text/ReactTextUpdate;

    if-eqz v0, :cond_a

    .line 343
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 346
    .local v0, "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v1

    float-to-int v1, v1

    .line 347
    .local v1, "paddingLeft":I
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v2

    float-to-int v2, v2

    .line 348
    .local v2, "paddingTop":I
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v3

    float-to-int v3, v3

    .line 349
    .local v3, "paddingRight":I
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v4

    float-to-int v4, v4

    .line 350
    .local v4, "paddingBottom":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    if-ne v2, v5, :cond_0

    if-ne v3, v5, :cond_0

    if-eq v4, v5, :cond_5

    .line 354
    :cond_0
    nop

    .line 355
    if-eq v1, v5, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaddingLeft()I

    move-result v6

    .line 356
    :goto_0
    if-eq v2, v5, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaddingTop()I

    move-result v7

    .line 357
    :goto_1
    if-eq v3, v5, :cond_3

    move v8, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaddingRight()I

    move-result v8

    .line 358
    :goto_2
    if-eq v4, v5, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getPaddingBottom()I

    move-result v5

    .line 354
    :goto_3
    invoke-virtual {p1, v6, v7, v8, v5}, Lcom/facebook/react/views/textinput/ReactEditText;->setPadding(IIII)V

    .line 361
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 362
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v5

    .line 363
    .local v5, "spannable":Landroid/text/Spannable;
    invoke-static {v5, p1}, Lcom/facebook/react/views/text/internal/span/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 367
    .end local v5    # "spannable":Landroid/text/Spannable;
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v5

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionEnd()I

    move-result v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move v5, v7

    .line 368
    .local v5, "isCurrentSelectionEmpty":Z
    :goto_4
    const/4 v6, -0x1

    .line 369
    .local v6, "selectionStart":I
    const/4 v8, -0x1

    .line 370
    .local v8, "selectionEnd":I
    if-eqz v5, :cond_9

    .line 373
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    .line 374
    .local v7, "textLength":I
    :goto_5
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getSelectionStart()I

    move-result v9

    sub-int v9, v7, v9

    .line 375
    .local v9, "selectionOffset":I
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v10

    sub-int v6, v10, v9

    .line 376
    move v8, v6

    .line 379
    .end local v7    # "textLength":I
    .end local v9    # "selectionOffset":I
    :cond_9
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeSetTextFromState(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    .line 380
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJsEventCounter()I

    move-result v7

    invoke-virtual {p1, v7, v6, v8}, Lcom/facebook/react/views/textinput/ReactEditText;->maybeSetSelection(III)V

    .line 382
    .end local v0    # "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingTop":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "isCurrentSelectionEmpty":Z
    .end local v6    # "selectionStart":I
    .end local v8    # "selectionEnd":I
    :cond_a
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->updateState(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/textinput/ReactEditText;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 1382
    sget-boolean v0, Lcom/facebook/react/views/textinput/ReactEditText;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 1383
    sget-object v0, Lcom/facebook/react/views/textinput/ReactTextInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v0

    .line 1387
    .local v0, "stateManager":Lcom/facebook/react/uimanager/StateWrapper;
    if-nez v0, :cond_1

    .line 1392
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/facebook/react/views/textinput/ReactEditText;->setPadding(IIII)V

    .line 1395
    :cond_1
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    .line 1397
    invoke-interface {p3}, Lcom/facebook/react/uimanager/StateWrapper;->getStateDataMapBuffer()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object v1

    .line 1398
    .local v1, "stateMapBuffer":Lcom/facebook/react/common/mapbuffer/MapBuffer;
    if-eqz v1, :cond_2

    .line 1399
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->getReactTextUpdate(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1402
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
