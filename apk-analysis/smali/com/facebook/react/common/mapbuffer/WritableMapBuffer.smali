.class public final Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
.super Ljava/lang/Object;
.source "WritableMapBuffer.kt"

# interfaces
.implements Lcom/facebook/react/common/mapbuffer/MapBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$Companion;,
        Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWritableMapBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WritableMapBuffer.kt\ncom/facebook/react/common/mapbuffer/WritableMapBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n131#1:203\n132#1,4:205\n131#1:209\n132#1,4:211\n131#1:215\n132#1,4:217\n131#1:221\n132#1,4:223\n131#1:227\n132#1,4:229\n131#1:233\n132#1,4:235\n131#1:239\n132#1,4:241\n1#2:202\n1#2:204\n1#2:210\n1#2:216\n1#2:222\n1#2:228\n1#2:234\n1#2:240\n*S KotlinDebug\n*F\n+ 1 WritableMapBuffer.kt\ncom/facebook/react/common/mapbuffer/WritableMapBuffer\n*L\n115#1:203\n115#1:205,4\n117#1:209\n117#1:211,4\n119#1:215\n119#1:217,4\n121#1:221\n121#1:223,4\n123#1:227\n123#1:229,4\n125#1:233\n125#1:235,4\n127#1:239\n127#1:241,4\n115#1:204\n117#1:210\n119#1:216\n121#1:222\n123#1:228\n125#1:234\n127#1:240\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\n\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0002,-B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0013\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0!H\u0003\u00a2\u0006\u0002\u0010\"J\u000f\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000e0$H\u0096\u0002J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0001J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u000bJ\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0012J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0018J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001dJ\u0018\u0010\'\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\tH\u0002J(\u0010(\u001a\u0002H)\"\u0006\u0008\u0000\u0010)\u0018\u00012\u0006\u0010\u000c\u001a\u00020\u00042\u0008\u0010&\u001a\u0004\u0018\u00010\tH\u0082\u0008\u00a2\u0006\u0002\u0010*J\u0014\u0010+\u001a\u00020\u001f*\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
        "()V",
        "count",
        "",
        "getCount",
        "()I",
        "values",
        "Landroid/util/SparseArray;",
        "",
        "contains",
        "",
        "key",
        "entryAt",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;",
        "offset",
        "getBoolean",
        "getDouble",
        "",
        "getInt",
        "getKeyOffset",
        "getKeys",
        "",
        "getLong",
        "",
        "getMapBuffer",
        "getMapBufferList",
        "",
        "getString",
        "",
        "getType",
        "Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;",
        "getValues",
        "",
        "()[Ljava/lang/Object;",
        "iterator",
        "",
        "put",
        "value",
        "putInternal",
        "verifyValue",
        "T",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "dataType",
        "Companion",
        "MapBufferEntry",
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
.field private static final Companion:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$Companion;


# instance fields
.field private final values:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->Companion:Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$Companion;

    .line 196
    nop

    .line 197
    invoke-static {}, Lcom/facebook/react/common/mapbuffer/MapBufferSoLoader;->staticInit()V

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    .line 26
    return-void
.end method

.method public static final synthetic access$dataType(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;Ljava/lang/Object;I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "key"    # I

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->dataType(Ljava/lang/Object;I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getValues$p(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    .line 23
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    return-object v0
.end method

.method private final dataType(Ljava/lang/Object;I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;
    .locals 5
    .param p1, "$this$dataType"    # Ljava/lang/Object;
    .param p2, "key"    # I

    .line 139
    move-object v0, p1

    .line 140
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->BOOL:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    goto :goto_0

    .line 141
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->INT:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    goto :goto_0

    .line 142
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->LONG:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    goto :goto_0

    .line 143
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->DOUBLE:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    goto :goto_0

    .line 144
    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->STRING:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    goto :goto_0

    .line 145
    :cond_4
    instance-of v1, v0, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;->MAP:Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    .line 139
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 146
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has value of unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getKeys()[I
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final getValues()[Ljava/lang/Object;
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "valueAt(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/facebook/react/common/mapbuffer/MapBuffer;->Companion:Lcom/facebook/react/common/mapbuffer/MapBuffer$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Companion;->getKEY_RANGE$ReactAndroid_debug()Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    const/4 v2, 0x0

    if-gt p1, v0, :cond_0

    if-gt v1, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-object p0

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$a$-require-WritableMapBuffer$putInternal$1":I
    nop

    .line 88
    .end local v0    # "$i$a$-require-WritableMapBuffer$putInternal$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only integers in [0;65535] range are allowed for keys."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final synthetic verifyValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$verifyValue":I
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x3

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, p2, Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 135
    return-object p2

    .line 132
    :cond_1
    const/4 v1, 0x0

    .local v1, "$i$a$-check-WritableMapBuffer$verifyValue$2":I
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .end local v1    # "$i$a$-check-WritableMapBuffer$verifyValue$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_2
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-require-WritableMapBuffer$verifyValue$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-WritableMapBuffer$verifyValue$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 103
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entryAt(I)Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;
    .locals 1
    .param p1, "offset"    # I

    .line 107
    new-instance v0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$MapBufferEntry;-><init>(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;I)V

    check-cast v0, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 8
    .param p1, "key"    # I

    .line 115
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 203
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 205
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 208
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    return v0

    .line 205
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/lang/Boolean;

    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_2
    const/4 v3, 0x0

    .line 203
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 8
    .param p1, "key"    # I

    .line 121
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 221
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 223
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 226
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 121
    return-wide v0

    .line 223
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/lang/Double;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_2
    const/4 v3, 0x0

    .line 221
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getInt(I)I
    .locals 8
    .param p1, "key"    # I

    .line 117
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 209
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 211
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 214
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 117
    return v0

    .line 211
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/lang/Integer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_2
    const/4 v3, 0x0

    .line 209
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeyOffset(I)I
    .locals 1
    .param p1, "key"    # I

    .line 105
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 8
    .param p1, "key"    # I

    .line 119
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 215
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 217
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 220
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 119
    return-wide v0

    .line 217
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/lang/Long;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_2
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .locals 8
    .param p1, "key"    # I

    .line 125
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 233
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 235
    instance-of v3, v0, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    if-eqz v3, :cond_1

    .line 238
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    .line 125
    return-object v0

    .line 235
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Lcom/facebook/react/common/mapbuffer/MapBuffer;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_2
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getMapBufferList(I)Ljava/util/List;
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 241
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 244
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/util/List;

    .line 127
    return-object v0

    .line 241
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/util/List;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_2
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # I

    .line 123
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    const/4 v2, 0x0

    .line 227
    .local v2, "$i$f$verifyValue":I
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 229
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 232
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .end local v2    # "$i$f$verifyValue":I
    check-cast v0, Ljava/lang/String;

    .line 123
    return-object v0

    .line 229
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv":Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .restart local v2    # "$i$f$verifyValue":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    const-class v4, Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .end local v3    # "$i$a$-check-WritableMapBuffer$verifyValue$2$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_2
    const/4 v3, 0x0

    .line 227
    .local v3, "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-WritableMapBuffer$verifyValue$1$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getType(I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;
    .locals 4
    .param p1, "key"    # I

    .line 110
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->dataType(Ljava/lang/Object;I)Lcom/facebook/react/common/mapbuffer/MapBuffer$DataType;

    move-result-object v1

    return-object v1

    .line 202
    :cond_1
    const/4 v1, 0x0

    .line 111
    .local v1, "$i$a$-require-WritableMapBuffer$getType$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-WritableMapBuffer$getType$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$iterator$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer$iterator$1;-><init>(Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;)V

    check-cast v0, Ljava/util/Iterator;

    .line 157
    return-object v0
.end method

.method public final put(ID)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # D

    .line 67
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(II)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(IJ)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(ILcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(ILjava/lang/String;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(IZ)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;->putInternal(ILjava/lang/Object;)Lcom/facebook/react/common/mapbuffer/WritableMapBuffer;

    move-result-object v0

    return-object v0
.end method
