.class public final enum Lcom/neovisionaries/ws/client/WebSocketState;
.super Ljava/lang/Enum;
.source "WebSocketState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/WebSocketState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/WebSocketState;

.field public static final enum CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

.field public static final enum CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

.field public static final enum CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

.field public static final enum CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

.field public static final enum OPEN:Lcom/neovisionaries/ws/client/WebSocketState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketState;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 90
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 98
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketState;

    const-string v1, "OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 105
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketState;

    const-string v1, "CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 111
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketState;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 78
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->$VALUES:[Lcom/neovisionaries/ws/client/WebSocketState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/ws/client/WebSocketState;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/WebSocketState;
    .locals 1

    .line 78
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->$VALUES:[Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/WebSocketState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/WebSocketState;

    return-object v0
.end method
