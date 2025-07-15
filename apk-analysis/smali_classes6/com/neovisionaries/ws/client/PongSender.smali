.class Lcom/neovisionaries/ws/client/PongSender;
.super Lcom/neovisionaries/ws/client/PeriodicalFrameSender;
.source "PongSender.java"


# static fields
.field private static final TIMER_NAME:Ljava/lang/String; = "PongSender"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V
    .locals 1
    .param p1, "webSocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "generator"    # Lcom/neovisionaries/ws/client/PayloadGenerator;

    .line 26
    const-string v0, "PongSender"

    invoke-direct {p0, p1, v0, p2}, Lcom/neovisionaries/ws/client/PeriodicalFrameSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 1
    .param p1, "payload"    # [B

    .line 33
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method
