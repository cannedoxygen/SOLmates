.class Lcom/horcrux/svg/MaskView;
.super Lcom/horcrux/svg/GroupView;
.source "MaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/MaskView$MaskType;
    }
.end annotation


# instance fields
.field mH:Lcom/horcrux/svg/SVGLength;

.field private mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

.field private mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 38
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getMaskType()Lcom/horcrux/svg/MaskView$MaskType;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    return-object v0
.end method

.method public getMaskUnits()Lcom/horcrux/svg/Brush$BrushUnits;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    return-object v0
.end method

.method saveDefinition()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 109
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v1, p0, Lcom/horcrux/svg/MaskView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    .line 111
    .end local v0    # "svg":Lcom/horcrux/svg/SvgView;
    :cond_0
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 57
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 58
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 59
    return-void
.end method

.method public setMaskContentUnits(I)V
    .locals 1
    .param p1, "maskContentUnits"    # I

    .line 78
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 81
    nop

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 87
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaskType(I)V
    .locals 1
    .param p1, "maskType"    # I

    .line 94
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/MaskView$MaskType;->ALPHA:Lcom/horcrux/svg/MaskView$MaskType;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    goto :goto_0

    .line 96
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    .line 97
    nop

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 103
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaskUnits(I)V
    .locals 1
    .param p1, "maskUnits"    # I

    .line 66
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 69
    nop

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 75
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 52
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 53
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 54
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 42
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 43
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 44
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 47
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 48
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    .line 49
    return-void
.end method
