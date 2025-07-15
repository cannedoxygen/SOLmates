.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/app/Activity;",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityResult$1\n+ 2 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,213:1\n708#2,21:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "sender",
        "Landroid/app/Activity;",
        "payload",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityResult$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V
    .locals 11
    .param p1, "sender"    # Landroid/app/Activity;
    .param p2, "payload"    # Lexpo/modules/kotlin/events/OnActivityResultPayload;

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnActivityResult-FileSystemModule$definition$1$23":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component1()I

    move-result v1

    .local v1, "requestCode":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component2()I

    move-result v2

    .local v2, "resultCode":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component3()Landroid/content/Intent;

    move-result-object v3

    .line 215
    .local v3, "data":Landroid/content/Intent;
    const/16 v4, 0x1512

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v4}, Lexpo/modules/filesystem/FileSystemModule;->access$getDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 216
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v4, "result":Landroid/os/Bundle;
    const/4 v5, -0x1

    const-string v6, "granted"

    if-ne v2, v5, :cond_1

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 220
    .local v5, "treeUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 221
    nop

    .line 220
    and-int/lit8 v7, v7, 0x3

    .line 219
    nop

    .line 223
    .local v7, "takeFlags":I
    if-eqz v5, :cond_0

    move-object v8, v5

    .local v8, "it":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 224
    .local v9, "$i$a$-let-FileSystemModule$definition$1$23$1":I
    iget-object v10, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-virtual {v10}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 225
    nop

    .line 223
    .end local v8    # "it":Landroid/net/Uri;
    .end local v9    # "$i$a$-let-FileSystemModule$definition$1$23$1":I
    nop

    .line 226
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v6, "directoryUri"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "treeUri":Landroid/net/Uri;
    .end local v7    # "takeFlags":I
    goto :goto_0

    .line 229
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :goto_0
    iget-object v5, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v5}, Lexpo/modules/filesystem/FileSystemModule;->access$getDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 232
    :cond_2
    iget-object v5, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lexpo/modules/filesystem/FileSystemModule;->access$setDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/Promise;)V

    .line 234
    .end local v4    # "result":Landroid/os/Bundle;
    :cond_3
    nop

    .line 167
    .end local v0    # "$i$a$-OnActivityResult-FileSystemModule$definition$1$23":I
    .end local v1    # "requestCode":I
    .end local v2    # "resultCode":I
    .end local v3    # "data":Landroid/content/Intent;
    return-void
.end method
