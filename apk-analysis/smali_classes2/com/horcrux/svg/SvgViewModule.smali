.class Lcom/horcrux/svg/SvgViewModule;
.super Lcom/horcrux/svg/NativeSvgViewModuleSpec;
.source "SvgViewModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSVGSvgViewModule"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNSVGSvgViewModule"


# direct methods
.method static bridge synthetic -$$Nest$smtoDataURL(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/horcrux/svg/SvgViewModule;->toDataURL(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;I)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    invoke-direct {p0, p1}, Lcom/horcrux/svg/NativeSvgViewModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 23
    return-void
.end method

.method private static toDataURL(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;I)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "attempt"    # I

    .line 35
    new-instance v0, Lcom/horcrux/svg/SvgViewModule$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/horcrux/svg/SvgViewModule$1;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;I)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 30
    const-string v0, "RNSVGSvgViewModule"

    return-object v0
.end method

.method public toDataURL(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Double;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcom/horcrux/svg/SvgViewModule;->toDataURL(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;I)V

    .line 85
    return-void
.end method
