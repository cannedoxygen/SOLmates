.class final enum Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CloseInitiator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 28
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 29
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "CLIENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 25
    sget-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    sget-object v2, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    filled-new-array {v0, v1, v2}, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->$VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
    .locals 1

    .line 25
    sget-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->$VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-object v0
.end method
