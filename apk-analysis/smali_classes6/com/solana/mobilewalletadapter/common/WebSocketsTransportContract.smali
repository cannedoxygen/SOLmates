.class public Lcom/solana/mobilewalletadapter/common/WebSocketsTransportContract;
.super Ljava/lang/Object;
.source "WebSocketsTransportContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/common/WebSocketsTransportContract$ReflectorIdRange;,
        Lcom/solana/mobilewalletadapter/common/WebSocketsTransportContract$LocalPortRange;
    }
.end annotation


# static fields
.field public static final WEBSOCKETS_BASE64_PROTOCOL:Ljava/lang/String; = "com.solana.mobilewalletadapter.v1.base64"

.field public static final WEBSOCKETS_LOCAL_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final WEBSOCKETS_LOCAL_PATH:Ljava/lang/String; = "/solana-wallet"

.field public static final WEBSOCKETS_LOCAL_PORT_MAX:I = 0xffff

.field public static final WEBSOCKETS_LOCAL_PORT_MIN:I = 0xc000

.field public static final WEBSOCKETS_LOCAL_SCHEME:Ljava/lang/String; = "ws"

.field public static final WEBSOCKETS_PROTOCOL:Ljava/lang/String; = "com.solana.mobilewalletadapter.v1"

.field public static final WEBSOCKETS_REFLECTOR_ID_MAX:J = 0x1fffffffffffffL

.field public static final WEBSOCKETS_REFLECTOR_ID_MIN:J = 0x0L

.field public static final WEBSOCKETS_REFLECTOR_ID_QUERY:Ljava/lang/String; = "id"

.field public static final WEBSOCKETS_REFLECTOR_PATH:Ljava/lang/String; = "/reflect"

.field public static final WEBSOCKETS_REFLECTOR_SCHEME:Ljava/lang/String; = "wss"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
