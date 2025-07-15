.class public final Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
.super Ljava/lang/Object;
.source "ResourceDrawableIdHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceDrawableIdHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceDrawableIdHelper.kt\ncom/facebook/react/views/imagehelper/ResourceDrawableIdHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;",
        "",
        "()V",
        "resourceDrawableIdMap",
        "",
        "",
        "",
        "addDrawableId",
        "context",
        "Landroid/content/Context;",
        "normalizedName",
        "clear",
        "",
        "getOpeningXmlTag",
        "name",
        "getResourceDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getResourceDrawableId",
        "getResourceDrawableUri",
        "Landroid/net/Uri;",
        "isVectorDrawable",
        "",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

.field private static final LOCAL_RESOURCE_SCHEME:Ljava/lang/String; = "res"

.field private static final resourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;


# instance fields
.field private final resourceDrawableIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    .line 101
    new-instance v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdMap:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static final synthetic access$getResourceDrawableIdHelper$cp()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdHelper:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    return-object v0
.end method

.method private final addDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "normalizedName"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "newId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return v0
.end method

.method public static final getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    .locals 1

    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getOpeningXmlTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 118
    .local v1, "it":I
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$a$-takeIf-ResourceDrawableIdHelper$getOpeningXmlTag$resId$1":I
    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-ResourceDrawableIdHelper$getOpeningXmlTag$resId$1":I
    :goto_0
    const/4 v1, 0x0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, "resId":I
    nop

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const-string v4, "getXml(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .local v2, "xmlParser":Landroid/content/res/XmlResourceParser;
    move-object v4, v2

    check-cast v4, Ljava/lang/AutoCloseable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v4

    check-cast v5, Landroid/content/res/XmlResourceParser;

    .local v5, "it":Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 82
    .local v6, "$i$a$-use-ResourceDrawableIdHelper$getOpeningXmlTag$1":I
    const/4 v7, 0x0

    .line 83
    .local v7, "parentTag":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    .line 84
    .local v8, "eventType":I
    :goto_2
    if-eq v8, v3, :cond_3

    .line 85
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 86
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 87
    goto :goto_3

    .line 89
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v9

    goto :goto_2

    .line 91
    :cond_3
    :goto_3
    nop

    .line 81
    .end local v5    # "it":Landroid/content/res/XmlResourceParser;
    .end local v6    # "$i$a$-use-ResourceDrawableIdHelper$getOpeningXmlTag$1":I
    .end local v7    # "parentTag":Ljava/lang/String;
    .end local v8    # "eventType":I
    :try_start_2
    invoke-static {v4, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2    # "xmlParser":Landroid/content/res/XmlResourceParser;
    move-object v1, v7

    goto :goto_4

    .restart local v2    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v3

    .end local v0    # "resId":I
    .end local v2    # "xmlParser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "resId":I
    .restart local v2    # "xmlParser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v4, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .end local v0    # "resId":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    throw v5
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    .end local v2    # "xmlParser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "resId":I
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    nop

    .line 79
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4
    return-object v1

    .line 78
    .end local v0    # "resId":I
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 24
    .end local p0    # "this":Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "resId":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 30
    return v1

    .line 32
    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, "_"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "normalizedName":Ljava/lang/String;
    nop

    .line 36
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 37
    :catch_0
    move-exception v1

    .line 41
    monitor-enter p0

    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-synchronized-ResourceDrawableIdHelper$getResourceDrawableId$1":I
    :try_start_1
    iget-object v2, p0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->resourceDrawableIdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->addDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "$i$a$-synchronized-ResourceDrawableIdHelper$getResourceDrawableId$1":I
    :goto_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 60
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "res"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-object v1
.end method

.method public final isVectorDrawable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getOpeningXmlTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vector"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
