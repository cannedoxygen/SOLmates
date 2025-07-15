.class public final Lexpo/modules/kotlin/events/EventsDefinition;
.super Ljava/lang/Object;
.source "EventsDefinition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0000H\u0086\u0002R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/EventsDefinition;",
        "",
        "names",
        "",
        "",
        "([Ljava/lang/String;)V",
        "getNames",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "plus",
        "other",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    const-string v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/events/EventsDefinition;->names:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNames()[Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lexpo/modules/kotlin/events/EventsDefinition;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public final plus(Lexpo/modules/kotlin/events/EventsDefinition;)Lexpo/modules/kotlin/events/EventsDefinition;
    .locals 3
    .param p1, "other"    # Lexpo/modules/kotlin/events/EventsDefinition;

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/events/EventsDefinition;

    iget-object v1, p0, Lexpo/modules/kotlin/events/EventsDefinition;->names:[Ljava/lang/String;

    iget-object v2, p1, Lexpo/modules/kotlin/events/EventsDefinition;->names:[Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/events/EventsDefinition;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
