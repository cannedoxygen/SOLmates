.class final Lexpo/modules/imagepicker/MediaHandler$readExtras$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MediaHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/MediaHandler;->readExtras$expo_image_picker_debug(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.imagepicker.MediaHandler"
    f = "MediaHandler.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x1b,
        0x1c
    }
    m = "readExtras$expo_image_picker_debug"
    n = {
        "this",
        "options",
        "destination$iv$iv",
        "this",
        "options",
        "destination$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/imagepicker/MediaHandler;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/MediaHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/MediaHandler$readExtras$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->this$0:Lexpo/modules/imagepicker/MediaHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    iget-object v0, p0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->this$0:Lexpo/modules/imagepicker/MediaHandler;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v1, v2}, Lexpo/modules/imagepicker/MediaHandler;->readExtras$expo_image_picker_debug(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
