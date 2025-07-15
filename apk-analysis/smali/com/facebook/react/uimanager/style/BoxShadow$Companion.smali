.class public final Lcom/facebook/react/uimanager/style/BoxShadow$Companion;
.super Ljava/lang/Object;
.source "BoxShadow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/style/BoxShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/style/BoxShadow$Companion;",
        "",
        "()V",
        "parse",
        "Lcom/facebook/react/uimanager/style/BoxShadow;",
        "boxShadow",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/uimanager/style/BoxShadow$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/uimanager/style/BoxShadow;
    .locals 12
    .param p1, "boxShadow"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "boxShadow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "offsetX"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string/jumbo v1, "offsetY"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 29
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    .line 30
    .local v0, "offsetX":F
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v1, v3

    .line 32
    .local v1, "offsetY":F
    const-string v3, "color"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 34
    .local v8, "color":Ljava/lang/Integer;
    :goto_0
    const-string v3, "blurRadius"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 33
    :goto_1
    nop

    .line 36
    .local v9, "blurRadius":Ljava/lang/Float;
    const-string/jumbo v3, "spreadDistance"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v10, v3

    goto :goto_2

    .line 37
    :cond_3
    move-object v10, v2

    .line 36
    :goto_2
    nop

    .line 35
    nop

    .line 38
    .local v10, "spreadDistance":Ljava/lang/Float;
    const-string v3, "inset"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    move-object v11, v2

    .line 40
    .local v11, "inset":Ljava/lang/Boolean;
    new-instance v2, Lcom/facebook/react/uimanager/style/BoxShadow;

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 40
    move-object v5, v2

    move v6, v0

    move v7, v1

    invoke-direct/range {v5 .. v11}, Lcom/facebook/react/uimanager/style/BoxShadow;-><init>(FFLjava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v2

    .line 26
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    .end local v8    # "color":Ljava/lang/Integer;
    .end local v9    # "blurRadius":Ljava/lang/Float;
    .end local v10    # "spreadDistance":Ljava/lang/Float;
    .end local v11    # "inset":Ljava/lang/Boolean;
    :cond_5
    :goto_3
    return-object v2
.end method
