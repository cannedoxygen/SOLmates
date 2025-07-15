.class public Lcom/facebook/react/uimanager/events/PointerEventHelper;
.super Ljava/lang/Object;
.source "PointerEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;
    }
.end annotation


# static fields
.field public static final CLICK:Ljava/lang/String; = "topClick"

.field public static final POINTER_CANCEL:Ljava/lang/String; = "topPointerCancel"

.field public static final POINTER_DOWN:Ljava/lang/String; = "topPointerDown"

.field public static final POINTER_ENTER:Ljava/lang/String; = "topPointerEnter"

.field public static final POINTER_LEAVE:Ljava/lang/String; = "topPointerLeave"

.field public static final POINTER_MOVE:Ljava/lang/String; = "topPointerMove"

.field public static final POINTER_OUT:Ljava/lang/String; = "topPointerOut"

.field public static final POINTER_OVER:Ljava/lang/String; = "topPointerOver"

.field public static final POINTER_TYPE_MOUSE:Ljava/lang/String; = "mouse"

.field public static final POINTER_TYPE_PEN:Ljava/lang/String; = "pen"

.field public static final POINTER_TYPE_TOUCH:Ljava/lang/String; = "touch"

.field public static final POINTER_TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final POINTER_UP:Ljava/lang/String; = "topPointerUp"

.field private static final X_FLAG_SUPPORTS_HOVER:I = 0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonChange(Ljava/lang/String;II)I
    .locals 3
    .param p0, "pointerType"    # Ljava/lang/String;
    .param p1, "lastButtonState"    # I
    .param p2, "currentButtonState"    # I

    .line 73
    const-string/jumbo v0, "touch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 77
    :cond_0
    xor-int v0, p2, p1

    .line 78
    .local v0, "changedMask":I
    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 79
    return v2

    .line 82
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 95
    return v2

    .line 92
    :sswitch_0
    const/4 v1, 0x4

    return v1

    .line 90
    :sswitch_1
    const/4 v1, 0x3

    return v1

    .line 86
    :sswitch_2
    const/4 v1, 0x1

    return v1

    .line 88
    :sswitch_3
    const/4 v1, 0x2

    return v1

    .line 84
    :sswitch_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getButtons(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pointerType"    # Ljava/lang/String;
    .param p2, "buttonState"    # I

    .line 60
    invoke-static {p0}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isExitEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const-string/jumbo v0, "touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_1
    return p2
.end method

.method public static getEventCategory(Ljava/lang/String;)I
    .locals 4
    .param p0, "pointerEventType"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 139
    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "topPointerOut"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "topPointerCancel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "topPointerUp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "topPointerOver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "topPointerMove"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "topPointerDown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "topPointerLeave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "topPointerEnter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 156
    return v0

    .line 153
    :pswitch_0
    return v2

    .line 147
    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a7c0b70 -> :sswitch_7
        -0x6a1dc391 -> :sswitch_6
        -0x4dc26016 -> :sswitch_5
        -0x4dbe48e7 -> :sswitch_4
        -0x4dbd47e4 -> :sswitch_3
        -0x3f7b441d -> :sswitch_2
        0x16d6f7c2 -> :sswitch_1
        0x5012ab06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPressure(ILjava/lang/String;)D
    .locals 3
    .param p0, "buttonState"    # I
    .param p1, "eventName"    # Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper;->isExitEvent(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    return-wide v1

    .line 193
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 194
    .local v0, "inActiveButtonState":Z
    :goto_0
    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    :cond_2
    return-wide v1
.end method

.method public static getW3CPointerType(I)Ljava/lang/String;
    .locals 1
    .param p0, "toolType"    # I

    .line 100
    packed-switch p0, :pswitch_data_0

    .line 110
    const-string v0, ""

    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "mouse"

    return-object v0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "pen"

    return-object v0

    .line 102
    :pswitch_2
    const-string/jumbo v0, "touch"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isBubblingEvent(Ljava/lang/String;)Z
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "topPointerOut"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "topPointerCancel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "topPointerUp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "topPointerOver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "topPointerMove"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "topPointerDown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 207
    return v1

    .line 205
    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4dc26016 -> :sswitch_5
        -0x4dbe48e7 -> :sswitch_4
        -0x4dbd47e4 -> :sswitch_3
        -0x3f7b441d -> :sswitch_2
        0x16d6f7c2 -> :sswitch_1
        0x5012ab06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isExitEvent(Ljava/lang/String;)Z
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "topPointerOut"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "topPointerUp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "topPointerLeave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 179
    return v1

    .line 177
    :pswitch_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a1dc391 -> :sswitch_2
        -0x3f7b441d -> :sswitch_1
        0x5012ab06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isListening(Landroid/view/View;Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;

    .line 114
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 115
    return v0

    .line 118
    :cond_0
    sget-object v1, Lcom/facebook/react/uimanager/events/PointerEventHelper$1;->$SwitchMap$com$facebook$react$uimanager$events$PointerEventHelper$EVENT:[I

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    sget v1, Lcom/facebook/react/R$id;->pointer_events:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 131
    .local v1, "pointerEvents":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/PointerEventHelper$EVENT;->ordinal()I

    move-result v4

    shl-int v4, v0, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_0

    .line 127
    .end local v1    # "pointerEvents":Ljava/lang/Integer;
    :pswitch_0
    return v0

    .line 132
    .restart local v1    # "pointerEvents":Ljava/lang/Integer;
    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 134
    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsHover(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;

    .line 164
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, "supportsHoverFlag":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 166
    return v1

    .line 169
    :cond_1
    const/16 v1, 0x2002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    return v1
.end method
