.class public final Lexpo/modules/core/logging/LogType$Companion;
.super Ljava/lang/Object;
.source "LogType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/core/logging/LogType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/core/logging/LogType$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/core/logging/LogType$Companion;",
        "",
        "()V",
        "toOSLogType",
        "",
        "type",
        "Lexpo/modules/core/logging/LogType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/core/logging/LogType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toOSLogType(Lexpo/modules/core/logging/LogType;)I
    .locals 2
    .param p1, "type"    # Lexpo/modules/core/logging/LogType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lexpo/modules/core/logging/LogType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/core/logging/LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 29
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    .line 28
    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    .line 27
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 26
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 25
    :pswitch_4
    goto :goto_0

    .line 24
    :pswitch_5
    goto :goto_0

    .line 23
    :pswitch_6
    goto :goto_0

    .line 22
    :pswitch_7
    nop

    .line 21
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
