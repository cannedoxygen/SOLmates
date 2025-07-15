.class public Lcom/facebook/react/views/text/ReactFontManager;
.super Ljava/lang/Object;
.source "ReactFontManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sReactFontManagerInstance:Lcom/facebook/react/views/text/ReactFontManager;


# instance fields
.field private final mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/common/assets/ReactFontManager;)V
    .locals 0
    .param p1, "delegate"    # Lcom/facebook/react/common/assets/ReactFontManager;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/facebook/react/views/text/ReactFontManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/facebook/react/views/text/ReactFontManager;->sReactFontManagerInstance:Lcom/facebook/react/views/text/ReactFontManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/facebook/react/views/text/ReactFontManager;

    .line 36
    invoke-static {}, Lcom/facebook/react/common/assets/ReactFontManager;->getInstance()Lcom/facebook/react/common/assets/ReactFontManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/ReactFontManager;-><init>(Lcom/facebook/react/common/assets/ReactFontManager;)V

    sput-object v0, Lcom/facebook/react/views/text/ReactFontManager;->sReactFontManagerInstance:Lcom/facebook/react/views/text/ReactFontManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/ReactFontManager;->sReactFontManagerInstance:Lcom/facebook/react/views/text/ReactFontManager;

    return-object v0
.end method


# virtual methods
.method public addCustomFont(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .param p3, "fontId"    # I

    .line 56
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager;->addCustomFont(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public addCustomFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "font"    # Landroid/graphics/Typeface;

    .line 60
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/common/assets/ReactFontManager;->addCustomFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 61
    return-void
.end method

.method public getTypeface(Ljava/lang/String;IILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "weight"    # I
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .line 52
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;IILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "assetManager"    # Landroid/content/res/AssetManager;

    .line 42
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;IZLandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # Z
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .line 47
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;IZLandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setTypeface(Ljava/lang/String;ILandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .line 64
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactFontManager;->mDelegate:Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager;->setTypeface(Ljava/lang/String;ILandroid/graphics/Typeface;)V

    .line 65
    return-void
.end method
