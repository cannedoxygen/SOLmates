.class public final Lcom/facebook/react/util/ExceptionDataHelper;
.super Ljava/lang/Object;
.source "ExceptionDataHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/react/util/ExceptionDataHelper;",
        "",
        "()V",
        "EXTRA_DATA_FIELD",
        "",
        "getExtraDataAsJson",
        "metadata",
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


# static fields
.field public static final EXTRA_DATA_FIELD:Ljava/lang/String; = "extraData"

.field public static final INSTANCE:Lcom/facebook/react/util/ExceptionDataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/util/ExceptionDataHelper;

    invoke-direct {v0}, Lcom/facebook/react/util/ExceptionDataHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/util/ExceptionDataHelper;->INSTANCE:Lcom/facebook/react/util/ExceptionDataHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getExtraDataAsJson(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/String;
    .locals 5
    .param p0, "metadata"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 23
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "extraData"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Null:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    nop

    .line 27
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 28
    .local v2, "extraDataWriter":Ljava/io/StringWriter;
    new-instance v3, Landroid/util/JsonWriter;

    move-object v4, v2

    check-cast v4, Ljava/io/Writer;

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    .local v3, "json":Landroid/util/JsonWriter;
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/facebook/react/bridge/JsonWriterHelper;->value(Landroid/util/JsonWriter;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 31
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    .line 32
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    .end local v2    # "extraDataWriter":Ljava/io/StringWriter;
    .end local v3    # "json":Landroid/util/JsonWriter;
    :catch_0
    move-exception v1

    .line 34
    return-object v0

    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method
