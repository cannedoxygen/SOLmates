.class public final Lcom/facebook/react/common/assets/ReactFontManager;
.super Ljava/lang/Object;
.source "ReactFontManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;,
        Lcom/facebook/react/common/assets/ReactFontManager$Companion;,
        Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactFontManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactFontManager.kt\ncom/facebook/react/common/assets/ReactFontManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,198:1\n372#2,7:199\n372#2,7:206\n*S KotlinDebug\n*F\n+ 1 ReactFontManager.kt\ncom/facebook/react/common/assets/ReactFontManager\n*L\n67#1:199,7\n106#1:206,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001e2\u00020\u0001:\u0003\u001d\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J(\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J(\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J \u0010\u001b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/facebook/react/common/assets/ReactFontManager;",
        "",
        "()V",
        "customTypefaceCache",
        "",
        "",
        "Landroid/graphics/Typeface;",
        "fontCache",
        "Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;",
        "addCustomFont",
        "",
        "context",
        "Landroid/content/Context;",
        "fontFamily",
        "fontId",
        "",
        "font",
        "getTypeface",
        "fontFamilyName",
        "typefaceStyle",
        "Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "style",
        "weight",
        "italic",
        "",
        "setTypeface",
        "typeface",
        "AssetFontFamily",
        "Companion",
        "TypefaceStyle",
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


# static fields
.field public static final Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

.field private static final EXTENSIONS:[Ljava/lang/String;

.field private static final FILE_EXTENSIONS:[Ljava/lang/String;

.field private static final FONTS_ASSET_PATH:Ljava/lang/String; = "fonts/"

.field private static final _instance:Lcom/facebook/react/common/assets/ReactFontManager;


# instance fields
.field private final customTypefaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/common/assets/ReactFontManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_bold"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "_italic"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v5, "_bold_italic"

    aput-object v5, v0, v1

    sput-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->EXTENSIONS:[Ljava/lang/String;

    .line 159
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ".ttf"

    aput-object v1, v0, v2

    const-string v1, ".otf"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->FILE_EXTENSIONS:[Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/facebook/react/common/assets/ReactFontManager;

    invoke-direct {v0}, Lcom/facebook/react/common/assets/ReactFontManager;-><init>()V

    sput-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->_instance:Lcom/facebook/react/common/assets/ReactFontManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->fontCache:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->customTypefaceCache:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static final synthetic access$getEXTENSIONS$cp()[Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFILE_EXTENSIONS$cp()[Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->FILE_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$get_instance$cp()Lcom/facebook/react/common/assets/ReactFontManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->_instance:Lcom/facebook/react/common/assets/ReactFontManager;

    return-object v0
.end method

.method public static final getInstance()Lcom/facebook/react/common/assets/ReactFontManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/common/assets/ReactFontManager;->Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/common/assets/ReactFontManager$Companion;->getInstance()Lcom/facebook/react/common/assets/ReactFontManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addCustomFont(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .param p3, "fontId"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p1, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/facebook/react/common/assets/ReactFontManager;->addCustomFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 84
    return-void
.end method

.method public final addCustomFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "font"    # Landroid/graphics/Typeface;

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->customTypefaceCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method

.method public final getTypeface(Ljava/lang/String;IILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "weight"    # I
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    const-string v0, "fontFamilyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;

    invoke-direct {v0, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;-><init>(II)V

    invoke-virtual {p0, p1, v0, p4}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "assetManager"    # Landroid/content/res/AssetManager;

    const-string v0, "fontFamilyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p2, v3, v1, v2}, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeface(Ljava/lang/String;IZLandroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # Z
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    const-string v0, "fontFamilyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;

    invoke-direct {v0, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;-><init>(IZ)V

    invoke-virtual {p0, p1, v0, p4}, Lcom/facebook/react/common/assets/ReactFontManager;->getTypeface(Ljava/lang/String;Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeface(Ljava/lang/String;Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "typefaceStyle"    # Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;
    .param p3, "assetManager"    # Landroid/content/res/AssetManager;

    const-string v0, "fontFamilyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typefaceStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->customTypefaceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->customTypefaceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;->apply(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->fontCache:Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 201
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$a$-getOrPut-ReactFontManager$getTypeface$assetFontFamily$1":I
    new-instance v4, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;

    invoke-direct {v4}, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;-><init>()V

    .line 201
    .end local v3    # "$i$a$-getOrPut-ReactFontManager$getTypeface$assetFontFamily$1":I
    move-object v3, v4

    .line 202
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 205
    :cond_1
    move-object v3, v2

    .line 200
    :goto_0
    nop

    .line 67
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;

    .line 68
    .local v0, "assetFontFamily":Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;
    invoke-virtual {p2}, Lcom/facebook/react/common/assets/ReactFontManager$TypefaceStyle;->getNearestStyle()I

    move-result v1

    .line 69
    .local v1, "style":I
    invoke-virtual {v0, v1}, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;->getTypefaceForStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_2

    .line 70
    sget-object v2, Lcom/facebook/react/common/assets/ReactFontManager;->Companion:Lcom/facebook/react/common/assets/ReactFontManager$Companion;

    invoke-static {v2, p1, v1, p3}, Lcom/facebook/react/common/assets/ReactFontManager$Companion;->access$createAssetTypeface(Lcom/facebook/react/common/assets/ReactFontManager$Companion;Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v3, v2

    .local v3, "it":Landroid/graphics/Typeface;
    const/4 v4, 0x0

    .line 71
    .local v4, "$i$a$-also-ReactFontManager$getTypeface$1":I
    invoke-virtual {v0, v1, v3}, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;->setTypefaceForStyle(ILandroid/graphics/Typeface;)V

    .line 72
    nop

    .line 70
    .end local v3    # "it":Landroid/graphics/Typeface;
    .end local v4    # "$i$a$-also-ReactFontManager$getTypeface$1":I
    nop

    .line 69
    :cond_2
    return-object v2
.end method

.method public final setTypeface(Ljava/lang/String;ILandroid/graphics/Typeface;)V
    .locals 5
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    const-string v0, "fontFamilyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    if-eqz p3, :cond_1

    .line 106
    iget-object v0, p0, Lcom/facebook/react/common/assets/ReactFontManager;->fontCache:Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 206
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 208
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$a$-getOrPut-ReactFontManager$setTypeface$1":I
    new-instance v4, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;

    invoke-direct {v4}, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;-><init>()V

    .line 208
    .end local v3    # "$i$a$-getOrPut-ReactFontManager$setTypeface$1":I
    move-object v3, v4

    .line 209
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 212
    :cond_0
    move-object v3, v2

    .line 207
    :goto_0
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    check-cast v3, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;

    .line 106
    invoke-virtual {v3, p2, p3}, Lcom/facebook/react/common/assets/ReactFontManager$AssetFontFamily;->setTypefaceForStyle(ILandroid/graphics/Typeface;)V

    .line 108
    :cond_1
    return-void
.end method
