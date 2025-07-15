.class public final enum Lcom/neovisionaries/ws/client/DualStackMode;
.super Ljava/lang/Enum;
.source "DualStackMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/DualStackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/DualStackMode;

.field public static final enum BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

.field public static final enum IPV4_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

.field public static final enum IPV6_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/neovisionaries/ws/client/DualStackMode;

    const-string v1, "BOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/DualStackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 20
    new-instance v0, Lcom/neovisionaries/ws/client/DualStackMode;

    const-string v1, "IPV4_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/DualStackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->IPV4_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 26
    new-instance v0, Lcom/neovisionaries/ws/client/DualStackMode;

    const-string v1, "IPV6_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/DualStackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->IPV6_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 8
    sget-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

    sget-object v1, Lcom/neovisionaries/ws/client/DualStackMode;->IPV4_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    sget-object v2, Lcom/neovisionaries/ws/client/DualStackMode;->IPV6_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    filled-new-array {v0, v1, v2}, [Lcom/neovisionaries/ws/client/DualStackMode;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->$VALUES:[Lcom/neovisionaries/ws/client/DualStackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/DualStackMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/neovisionaries/ws/client/DualStackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/ws/client/DualStackMode;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/DualStackMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->$VALUES:[Lcom/neovisionaries/ws/client/DualStackMode;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/DualStackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/DualStackMode;

    return-object v0
.end method
