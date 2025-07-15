.class public final Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
.super Ljava/lang/Object;
.source "ModuleRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/ModuleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostponedEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J+\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0012\u0010\u0015\u001a\u00020\u00162\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;",
        "",
        "eventName",
        "Lexpo/modules/kotlin/events/EventName;",
        "sender",
        "payload",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V",
        "getEventName",
        "()Lexpo/modules/kotlin/events/EventName;",
        "getPayload",
        "()Ljava/lang/Object;",
        "getSender",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "post",
        "",
        "moduleHolder",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "toString",
        "",
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
.field private final eventName:Lexpo/modules/kotlin/events/EventName;

.field private final payload:Ljava/lang/Object;

.field private final sender:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "eventName"    # Lexpo/modules/kotlin/events/EventName;
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "payload"    # Ljava/lang/Object;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    .line 168
    iput-object p2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    .line 169
    iput-object p3, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 166
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 168
    move-object p2, v0

    .line 166
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 169
    move-object p3, v0

    .line 166
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;-><init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->copy(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/kotlin/events/EventName;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;-><init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    iget-object v3, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    iget-object v4, v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    iget-object v4, v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    iget-object v1, v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEventName()Lexpo/modules/kotlin/events/EventName;
    .locals 1

    .line 167
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSender()Ljava/lang/Object;
    .locals 1

    .line 168
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0}, Lexpo/modules/kotlin/events/EventName;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final post(Lexpo/modules/kotlin/ModuleHolder;)V
    .locals 3
    .param p1, "moduleHolder"    # Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "moduleHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    .line 179
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->eventName:Lexpo/modules/kotlin/events/EventName;

    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->sender:Ljava/lang/Object;

    iget-object v2, p0, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->payload:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostponedEvent(eventName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", sender="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
