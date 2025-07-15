.class final enum Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;
.super Ljava/lang/Enum;
.source "LocalAssociationScenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum NOT_STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field public static final enum STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;


# direct methods
.method private static synthetic $values()[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;
    .locals 6

    .line 357
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->NOT_STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v3, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v4, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v5, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    filled-new-array/range {v0 .. v5}, [Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 358
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->NOT_STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "ESTABLISHING_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "CLOSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 357
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->$values()[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->$VALUES:[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 357
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    return-object v0
.end method

.method public static values()[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;
    .locals 1

    .line 357
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->$VALUES:[Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    invoke-virtual {v0}, [Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    return-object v0
.end method
