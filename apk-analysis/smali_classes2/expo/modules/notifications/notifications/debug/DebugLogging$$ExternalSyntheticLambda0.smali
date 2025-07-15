.class public final synthetic Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iput p3, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iget v2, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lexpo/modules/notifications/notifications/debug/DebugLogging$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->$r8$lambda$H0RK3HVXh4MGkuJ_OOXr-9jpGyY(Landroid/os/Bundle;Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
