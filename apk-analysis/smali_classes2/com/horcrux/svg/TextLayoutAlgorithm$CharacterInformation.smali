.class Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/TextLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharacterInformation"
.end annotation


# instance fields
.field addressable:Z

.field advance:D

.field anchoredChunk:Z

.field character:C

.field element:Lcom/horcrux/svg/TextView;

.field firstCharacterInResolvedDescendant:Z

.field hidden:Z

.field index:I

.field middle:Z

.field resolved:Z

.field rotate:D

.field rotateSpecified:Z

.field final synthetic this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

.field x:D

.field xSpecified:Z

.field y:D

.field ySpecified:Z


# direct methods
.method constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;IC)V
    .locals 2
    .param p1, "this$0"    # Lcom/horcrux/svg/TextLayoutAlgorithm;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 35
    iput-object p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 20
    iput-wide v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 23
    iput-wide v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    .line 26
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    .line 27
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->resolved:Z

    .line 28
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->xSpecified:Z

    .line 29
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->ySpecified:Z

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    .line 31
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 32
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotateSpecified:Z

    .line 33
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->firstCharacterInResolvedDescendant:Z

    .line 36
    iput p2, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->index:I

    .line 37
    iput-char p3, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->character:C

    .line 38
    return-void
.end method
