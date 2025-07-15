.class public abstract Lexpo/modules/notifications/notifications/channels/AbstractNotificationsChannelsProvider;
.super Ljava/lang/Object;
.source "AbstractNotificationsChannelsProvider.java"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;
.implements Lexpo/modules/core/interfaces/InternalModule;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/AbstractNotificationsChannelsProvider;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 18
    const-class v0, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
