.class public Lexpo/modules/adapters/react/permissions/PermissionsService;
.super Ljava/lang/Object;
.source "PermissionsService.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/InternalModule;
.implements Lexpo/modules/interfaces/permissions/Permissions;
.implements Lexpo/modules/core/interfaces/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionsService.kt\nexpo/modules/adapters/react/permissions/PermissionsService\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,356:1\n13309#2,2:357\n11065#2:359\n11400#2,3:360\n12271#2,2:366\n1#3:363\n37#4,2:364\n1855#5,2:368\n1855#5,2:379\n167#6,3:370\n167#6,3:373\n167#6,3:376\n*S KotlinDebug\n*F\n+ 1 PermissionsService.kt\nexpo/modules/adapters/react/permissions/PermissionsService\n*L\n46#1:357,2\n111#1:359\n111#1:360,3\n165#1:366,2\n130#1:364,2\n223#1:368,2\n286#1:379,2\n69#1:370,3\n70#1:373,3\n71#1:376,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001d\u0010\u0019\u001a\u00020\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0002\u0010\u001cJ%\u0010\u001d\u001a\u00020\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010\u001e\u001a\u00020\u000cH\u0014\u00a2\u0006\u0002\u0010\u001fJ)\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u000c2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010\"J)\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u001aH\u0002J\u0010\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000fH\u0002J\u0008\u0010*\u001a\u00020+H\u0002J#\u0010,\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001e\u001a\u00020\u000cH\u0004\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010-\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000fH\u0002J\u0016\u0010.\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u000201000/H\u0016J\u0010\u00102\u001a\u0002032\u0006\u0010)\u001a\u00020\u000fH\u0002J\u0010\u00104\u001a\u0002032\u0006\u0010)\u001a\u00020\u000fH\u0014J\u0018\u00105\u001a\u0002062\u0006\u0010)\u001a\u00020\u000f2\u0006\u00107\u001a\u000203H\u0002J)\u00108\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u000c2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010\"J)\u00109\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010&J!\u0010:\u001a\u00020\u00182\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u00020\u0018H\u0002J\u0010\u0010=\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000fH\u0002J\u0010\u0010>\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000fH\u0016J\u0010\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020AH\u0016J\u0008\u0010B\u001a\u00020\u001aH\u0016J\u0008\u0010C\u001a\u00020\u001aH\u0016J\u0008\u0010D\u001a\u00020\u001aH\u0016J1\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002060F2\u000e\u0010G\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010H\u001a\u00020IH\u0002\u00a2\u0006\u0002\u0010JR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0014\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000c0\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006K"
    }
    d2 = {
        "Lexpo/modules/adapters/react/permissions/PermissionsService;",
        "Lexpo/modules/core/interfaces/InternalModule;",
        "Lexpo/modules/interfaces/permissions/Permissions;",
        "Lexpo/modules/core/interfaces/LifecycleEventListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mActivityProvider",
        "Lexpo/modules/core/interfaces/ActivityProvider;",
        "mAskAsyncListener",
        "Lexpo/modules/interfaces/permissions/PermissionsResponseListener;",
        "mAskAsyncRequestedPermissions",
        "",
        "",
        "[Ljava/lang/String;",
        "mAskedPermissionsCache",
        "Landroid/content/SharedPreferences;",
        "mCurrentPermissionListener",
        "mPendingPermissionCalls",
        "Ljava/util/Queue;",
        "Lkotlin/Pair;",
        "mWriteSettingsPermissionBeingAsked",
        "",
        "addToAskedPermissionsCache",
        "",
        "permissions",
        "([Ljava/lang/String;)V",
        "askForManifestPermissions",
        "listener",
        "([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V",
        "askForPermissions",
        "responseListener",
        "(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V",
        "askForPermissionsWithPromise",
        "promise",
        "Lexpo/modules/core/Promise;",
        "(Lexpo/modules/core/Promise;[Ljava/lang/String;)V",
        "askForWriteSettingsPermissionFirst",
        "canAskAgain",
        "permission",
        "createListenerWithPendingPermissionsRequest",
        "Lcom/facebook/react/modules/core/PermissionListener;",
        "delegateRequestToActivity",
        "didAsk",
        "getExportedInterfaces",
        "",
        "Ljava/lang/Class;",
        "",
        "getManifestPermission",
        "",
        "getManifestPermissionFromContext",
        "getPermissionResponseFromNativeResponse",
        "Lexpo/modules/interfaces/permissions/PermissionsResponse;",
        "result",
        "getPermissions",
        "getPermissionsWithPromise",
        "hasGrantedPermissions",
        "([Ljava/lang/String;)Z",
        "hasWriteSettingsPermission",
        "isPermissionGranted",
        "isPermissionPresentInManifest",
        "onCreate",
        "moduleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "onHostDestroy",
        "onHostPause",
        "onHostResume",
        "parseNativeResult",
        "",
        "permissionsString",
        "grantResults",
        "",
        "([Ljava/lang/String;[I)Ljava/util/Map;",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

.field private mAskAsyncListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

.field private mAskAsyncRequestedPermissions:[Ljava/lang/String;

.field private mAskedPermissionsCache:Landroid/content/SharedPreferences;

.field private mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

.field private final mPendingPermissionCalls:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lkotlin/Pair<",
            "[",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/permissions/PermissionsResponseListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWriteSettingsPermissionBeingAsked:Z


# direct methods
.method public static synthetic $r8$lambda$7sCfzFk7YtO3EPNtwdzfGvuc46E(Lexpo/modules/core/Promise;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getPermissionsWithPromise$lambda$6(Lexpo/modules/core/Promise;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8H8jpTWDCnTmeH0aML97NC0d9oc(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/core/Promise;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForPermissionsWithPromise$lambda$7(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/core/Promise;[Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RX0omv5YiC4c8HkCGto3kAKGCeM(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForPermissions$lambda$10(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sY5X85u7zyE-0z0CoHgDaFCY9Eg(Lexpo/modules/adapters/react/permissions/PermissionsService;I[Ljava/lang/String;[I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/adapters/react/permissions/PermissionsService;->createListenerWithPendingPermissionsRequest$lambda$21(Lexpo/modules/adapters/react/permissions/PermissionsService;I[Ljava/lang/String;[I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mPendingPermissionCalls:Ljava/util/Queue;

    .line 29
    return-void
.end method

.method private final addToAskedPermissionsCache([Ljava/lang/String;)V
    .locals 10
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskedPermissionsCache:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "mAskedPermissionsCache"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$addToAskedPermissionsCache_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-with-PermissionsService$addToAskedPermissionsCache$1":I
    move-object v2, p1

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 357
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 46
    .local v8, "$i$a$-forEach-PermissionsService$addToAskedPermissionsCache$1$1":I
    const/4 v9, 0x1

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-PermissionsService$addToAskedPermissionsCache$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    :cond_1
    nop

    .line 47
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    nop

    .line 45
    .end local v0    # "$this$addToAskedPermissionsCache_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-with-PermissionsService$addToAskedPermissionsCache$1":I
    nop

    .line 49
    return-void
.end method

.method private static final askForPermissions$lambda$10(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;Ljava/util/Map;)V
    .locals 3
    .param p0, "this$0"    # Lexpo/modules/adapters/react/permissions/PermissionsService;
    .param p1, "$responseListener"    # Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .param p2, "it"    # Ljava/util/Map;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$responseListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->hasWriteSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, -0x1

    .line 132
    :goto_0
    nop

    .line 138
    .local v0, "status":I
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v1, v0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getPermissionResponseFromNativeResponse(Ljava/lang/String;I)Lexpo/modules/interfaces/permissions/PermissionsResponse;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p1, p2}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method private static final askForPermissionsWithPromise$lambda$7(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/core/Promise;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/adapters/react/permissions/PermissionsService;
    .param p1, "$promise"    # Lexpo/modules/core/Promise;
    .param p2, "$permissions"    # [Ljava/lang/String;
    .param p3, "it"    # Ljava/util/Map;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private final askForWriteSettingsPermissionFirst()V
    .locals 6

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$askForWriteSettingsPermissionFirst_u24lambda_u2422":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 318
    .local v2, "$i$a$-apply-PermissionsService$askForWriteSettingsPermissionFirst$1":I
    iget-object v3, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    nop

    .line 317
    .end local v1    # "$this$askForWriteSettingsPermissionFirst_u24lambda_u2422":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-PermissionsService$askForWriteSettingsPermissionFirst$1":I
    nop

    .line 320
    nop

    .local v0, "it":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$a$-let-PermissionsService$askForWriteSettingsPermissionFirst$2":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mWriteSettingsPermissionBeingAsked:Z

    .line 322
    iget-object v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 323
    nop

    .line 320
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "$i$a$-let-PermissionsService$askForWriteSettingsPermissionFirst$2":I
    nop

    .line 324
    return-void
.end method

.method private final canAskAgain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 217
    .local v2, "$i$a$-let-PermissionsService$canAskAgain$1":I
    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 216
    .end local v0    # "it":Landroid/app/Activity;
    .end local v2    # "$i$a$-let-PermissionsService$canAskAgain$1":I
    nop

    .line 218
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 216
    :cond_0
    return v1
.end method

.method private final createListenerWithPendingPermissionsRequest()Lcom/facebook/react/modules/core/PermissionListener;
    .locals 1

    .line 274
    new-instance v0, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/adapters/react/permissions/PermissionsService;)V

    return-object v0
.end method

.method private static final createListenerWithPendingPermissionsRequest$lambda$21(Lexpo/modules/adapters/react/permissions/PermissionsService;I[Ljava/lang/String;[I)Z
    .locals 19
    .param p0, "this$0"    # Lexpo/modules/adapters/react/permissions/PermissionsService;
    .param p1, "requestCode"    # I
    .param p2, "receivePermissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receivePermissions"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/16 v4, 0xd

    move/from16 v5, p1

    if-ne v5, v4, :cond_8

    .line 276
    monitor-enter p0

    const/4 v6, 0x0

    .line 277
    .local v6, "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    :try_start_0
    iget-object v7, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    if-eqz v7, :cond_7

    .line 278
    .local v7, "currentListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    invoke-direct {v1, v2, v3}, Lexpo/modules/adapters/react/permissions/PermissionsService;->parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 279
    const/4 v8, 0x0

    iput-object v8, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    .line 281
    iget-object v9, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mPendingPermissionCalls:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    if-eqz v9, :cond_6

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v9, "pendingCall":Lkotlin/Pair;
    const/4 v10, 0x0

    .line 282
    .local v10, "$i$a$-let-PermissionsService$createListenerWithPendingPermissionsRequest$1$1$1":I
    iget-object v11, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    if-eqz v11, :cond_0

    invoke-interface {v11}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v8

    :goto_0
    instance-of v12, v11, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v12, :cond_1

    move-object v8, v11

    check-cast v8, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .line 283
    .local v8, "activity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    :cond_1
    if-nez v8, :cond_5

    .line 285
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    array-length v12, v12

    new-array v13, v12, [I

    const/4 v14, 0x0

    :goto_1
    const/4 v15, -0x1

    if-ge v14, v12, :cond_2

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {v1, v11, v13}, Lexpo/modules/adapters/react/permissions/PermissionsService;->parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v4, v11}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 286
    iget-object v4, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mPendingPermissionCalls:Ljava/util/Queue;

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 379
    .local v11, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lkotlin/Pair;

    .local v14, "it":Lkotlin/Pair;
    const/16 v16, 0x0

    .line 287
    .local v16, "$i$a$-forEach-PermissionsService$createListenerWithPendingPermissionsRequest$1$1$1$2":I
    invoke-virtual {v14}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    invoke-virtual {v14}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v14}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    new-array v3, v2, [I

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v17, "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_3
    if-ge v4, v2, :cond_3

    const/16 v18, -0x1

    aput v18, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, -0x1

    invoke-direct {v1, v15, v3}, Lexpo/modules/adapters/react/permissions/PermissionsService;->parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 288
    nop

    .line 379
    .end local v14    # "it":Lkotlin/Pair;
    .end local v16    # "$i$a$-forEach-PermissionsService$createListenerWithPendingPermissionsRequest$1$1$1$2":I
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    move/from16 v15, v18

    .end local v13    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 380
    .end local v17    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_4
    move-object/from16 v17, v4

    .line 289
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    iget-object v0, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mPendingPermissionCalls:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 290
    goto :goto_4

    .line 293
    :cond_5
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    iput-object v0, v1, Lexpo/modules/adapters/react/permissions/PermissionsService;->mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    .line 294
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->createListenerWithPendingPermissionsRequest()Lcom/facebook/react/modules/core/PermissionListener;

    move-result-object v2

    invoke-interface {v8, v0, v4, v2}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    nop

    .end local v6    # "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    .end local v7    # "currentListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .end local v8    # "activity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .end local v9    # "pendingCall":Lkotlin/Pair;
    .end local v10    # "$i$a$-let-PermissionsService$createListenerWithPendingPermissionsRequest$1$1$1":I
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 281
    .restart local v6    # "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    .restart local v7    # "currentListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    :cond_6
    :goto_4
    nop

    .line 298
    nop

    .end local v6    # "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    .end local v7    # "currentListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 277
    .restart local v6    # "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    :cond_7
    :try_start_1
    const-string v0, "Required value was null."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this$0":Lexpo/modules/adapters/react/permissions/PermissionsService;
    .end local p1    # "requestCode":I
    .end local p2    # "receivePermissions":[Ljava/lang/String;
    .end local p3    # "grantResults":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .end local v6    # "$i$a$-synchronized-PermissionsService$createListenerWithPendingPermissionsRequest$1$1":I
    .restart local p0    # "this$0":Lexpo/modules/adapters/react/permissions/PermissionsService;
    .restart local p1    # "requestCode":I
    .restart local p2    # "receivePermissions":[Ljava/lang/String;
    .restart local p3    # "grantResults":[I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final didAsk(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskedPermissionsCache:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "mAskedPermissionsCache"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final getManifestPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$a$-let-PermissionsService$getManifestPermission$1":I
    instance-of v2, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v2, :cond_0

    .line 203
    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 205
    :cond_0
    nop

    .line 201
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-PermissionsService$getManifestPermission$1":I
    :cond_1
    nop

    .line 208
    invoke-virtual {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getManifestPermissionFromContext(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private final getPermissionResponseFromNativeResponse(Ljava/lang/String;I)Lexpo/modules/interfaces/permissions/PermissionsResponse;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "result"    # I

    .line 230
    nop

    .line 231
    if-nez p2, :cond_0

    sget-object v0, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->didAsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    goto :goto_0

    .line 233
    :cond_1
    sget-object v0, Lexpo/modules/interfaces/permissions/PermissionsStatus;->UNDETERMINED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    .line 230
    :goto_0
    nop

    .line 235
    .local v0, "status":Lexpo/modules/interfaces/permissions/PermissionsStatus;
    new-instance v1, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    .line 236
    nop

    .line 237
    sget-object v2, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v0, v2, :cond_2

    .line 238
    invoke-direct {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->canAskAgain(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 240
    :cond_2
    const/4 v2, 0x1

    .line 235
    :goto_1
    invoke-direct {v1, v0, v2}, Lexpo/modules/interfaces/permissions/PermissionsResponse;-><init>(Lexpo/modules/interfaces/permissions/PermissionsStatus;Z)V

    return-object v1
.end method

.method private static final getPermissionsWithPromise$lambda$6(Lexpo/modules/core/Promise;Ljava/util/Map;)V
    .locals 11
    .param p0, "$promise"    # Lexpo/modules/core/Promise;
    .param p1, "permissionsMap"    # Ljava/util/Map;

    const-string v0, "$promise"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v0, p1

    .local v0, "$this$all$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 370
    .local v1, "$i$f$all":I
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v0, v4

    goto :goto_1

    .line 371
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 69
    .local v6, "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$areAllGranted$1":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    .local v7, "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    invoke-virtual {v7}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v8

    sget-object v9, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v8, v9, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    .line 371
    .end local v6    # "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$areAllGranted$1":I
    .end local v7    # "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    :goto_0
    if-nez v6, :cond_1

    move v0, v3

    goto :goto_1

    .line 372
    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    :cond_3
    move v0, v4

    .line 69
    .end local v0    # "$this$all$iv":Ljava/util/Map;
    .end local v1    # "$i$f$all":I
    :goto_1
    nop

    .line 70
    .local v0, "areAllGranted":Z
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, p1

    .local v1, "$this$all$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 373
    .local v2, "$i$f$all":I
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v4

    goto :goto_3

    .line 374
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 70
    .local v7, "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$areAllDenied$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    .local v8, "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    invoke-virtual {v8}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v9

    sget-object v10, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v9, v10, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v3

    .line 374
    .end local v7    # "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$areAllDenied$1":I
    .end local v8    # "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    :goto_2
    if-nez v7, :cond_5

    move v1, v3

    goto :goto_3

    .line 375
    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    :cond_7
    move v1, v4

    .end local v1    # "$this$all$iv":Ljava/util/Map;
    .end local v2    # "$i$f$all":I
    :goto_3
    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v3

    .line 70
    :goto_4
    nop

    .line 71
    .local v1, "areAllDenied":Z
    move-object v2, p1

    .local v2, "$this$all$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 376
    .local v5, "$i$f$all":I
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v4

    goto :goto_5

    .line 377
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 71
    .local v8, "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$canAskAgain$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    .local v9, "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    invoke-virtual {v9}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getCanAskAgain()Z

    move-result v8

    .line 377
    .end local v8    # "$i$a$-all-PermissionsService$getPermissionsWithPromise$1$canAskAgain$1":I
    .end local v9    # "response":Lexpo/modules/interfaces/permissions/PermissionsResponse;
    if-nez v8, :cond_a

    goto :goto_5

    .line 378
    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    :cond_b
    move v3, v4

    .line 71
    .end local v2    # "$this$all$iv":Ljava/util/Map;
    .end local v5    # "$i$f$all":I
    :goto_5
    move v2, v3

    .line 73
    .local v2, "canAskAgain":Z
    nop

    .line 74
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$getPermissionsWithPromise_u24lambda_u246_u24lambda_u245":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 75
    .local v5, "$i$a$-apply-PermissionsService$getPermissionsWithPromise$1$1":I
    const-string v6, "expires"

    const-string v7, "never"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    if-eqz v0, :cond_c

    sget-object v6, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v6}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 80
    :cond_c
    if-eqz v1, :cond_d

    sget-object v6, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v6}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 81
    :cond_d
    sget-object v6, Lexpo/modules/interfaces/permissions/PermissionsStatus;->UNDETERMINED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v6}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 76
    :goto_6
    const-string v7, "status"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v6, "canAskAgain"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v6, "granted"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    nop

    .line 74
    .end local v4    # "$this$getPermissionsWithPromise_u24lambda_u246_u24lambda_u245":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-PermissionsService$getPermissionsWithPromise$1$1":I
    nop

    .line 73
    invoke-interface {p0, v3}, Lexpo/modules/core/Promise;->resolve(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method private final hasWriteSettingsPermission()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final isPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 188
    nop

    .line 190
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->hasWriteSettingsPermission()Z

    move-result v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getManifestPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0
.end method

.method private final parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;
    .locals 12
    .param p1, "permissionsString"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/permissions/PermissionsResponse;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .local v1, "$this$parseNativeResult_u24lambda_u2416":Ljava/util/HashMap;
    const/4 v2, 0x0

    .line 223
    .local v2, "$i$a$-apply-PermissionsService$parseNativeResult$1":I
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->zip([I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 368
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    const/4 v8, 0x0

    .line 223
    .local v8, "$i$a$-forEach-PermissionsService$parseNativeResult$1$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .local v9, "result":I
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 224
    .local v7, "permission":Ljava/lang/String;
    move-object v10, v1

    check-cast v10, Ljava/util/Map;

    invoke-direct {p0, v7, v9}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getPermissionResponseFromNativeResponse(Ljava/lang/String;I)Lexpo/modules/interfaces/permissions/PermissionsResponse;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    nop

    .line 368
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-PermissionsService$parseNativeResult$1$1":I
    .end local v9    # "result":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 369
    :cond_0
    nop

    .line 226
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 222
    .end local v1    # "$this$parseNativeResult_u24lambda_u2416":Ljava/util/HashMap;
    .end local v2    # "$i$a$-apply-PermissionsService$parseNativeResult$1":I
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected askForManifestPermissions([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "listener"    # Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lexpo/modules/adapters/react/permissions/PermissionsService;->delegateRequestToActivity([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V

    .line 247
    return-void
.end method

.method public varargs askForPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V
    .locals 7
    .param p1, "responseListener"    # Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "responseListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1, v0}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 126
    return-void

    .line 129
    :cond_1
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    .line 363
    .local v4, "$this$askForPermissions_u24lambda_u249":Ljava/util/List;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-apply-PermissionsService$askForPermissions$permissionsToAsk$1":I
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v4    # "$this$askForPermissions_u24lambda_u249":Ljava/util/List;
    .end local v5    # "$i$a$-apply-PermissionsService$askForPermissions$permissionsToAsk$1":I
    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 364
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 365
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 130
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Ljava/lang/String;

    .line 131
    .local v3, "permissionsToAsk":[Ljava/lang/String;
    new-instance v4, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V

    .line 142
    .local v4, "newListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    invoke-direct {p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->hasWriteSettingsPermission()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    iget-object v5, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    if-nez v5, :cond_2

    .line 146
    iput-object v4, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    .line 147
    iput-object v3, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncRequestedPermissions:[Ljava/lang/String;

    .line 149
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->addToAskedPermissionsCache([Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForWriteSettingsPermissionFirst()V

    goto :goto_2

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another permissions request is in progress. Await the old request and then try again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    array-length v0, v3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 155
    return-void

    .line 157
    :cond_5
    invoke-virtual {p0, v3, v4}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForManifestPermissions([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V

    .end local v3    # "permissionsToAsk":[Ljava/lang/String;
    .end local v4    # "newListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual {p0, p2, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForManifestPermissions([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V

    .line 162
    :goto_2
    return-void
.end method

.method public varargs askForPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V
    .locals 2
    .param p1, "promise"    # Lexpo/modules/core/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/adapters/react/permissions/PermissionsService;Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 103
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v0, v1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected final delegateRequestToActivity([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "listener"    # Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->addToAskedPermissionsCache([Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "currentActivity":Landroid/app/Activity;
    :goto_0
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_2

    .line 260
    monitor-enter p0

    const/4 v1, 0x0

    .line 261
    .local v1, "$i$a$-synchronized-PermissionsService$delegateRequestToActivity$1":I
    :try_start_0
    iget-object v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mPendingPermissionCalls:Ljava/util/Queue;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1

    .line 264
    :cond_1
    iput-object p2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mCurrentPermissionListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    .line 265
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    invoke-direct {p0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->createListenerWithPendingPermissionsRequest()Lcom/facebook/react/modules/core/PermissionListener;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v2, p1, v4, v3}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_1
    nop

    .line 260
    .end local v1    # "$i$a$-synchronized-PermissionsService$delegateRequestToActivity$1":I
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 269
    :cond_2
    array-length v1, p1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    const/4 v4, -0x1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v2}, Lexpo/modules/adapters/react/permissions/PermissionsService;->parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 271
    :goto_3
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lexpo/modules/interfaces/permissions/Permissions;

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getManifestPermissionFromContext(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs getPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V
    .locals 12
    .param p1, "responseListener"    # Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .param p2, "permissions"    # [Ljava/lang/String;

    const-string v0, "responseListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    move-object v0, p2

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 359
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 360
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    .line 361
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 112
    .local v10, "$i$a$-map-PermissionsService$getPermissions$1":I
    invoke-direct {p0, v9}, Lexpo/modules/adapters/react/permissions/PermissionsService;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 113
    move v11, v6

    goto :goto_1

    .line 115
    :cond_0
    const/4 v11, -0x1

    .line 112
    :goto_1
    nop

    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-map-PermissionsService$getPermissions$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 361
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 362
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 359
    nop

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 117
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 109
    invoke-direct {p0, p2, v0}, Lexpo/modules/adapters/react/permissions/PermissionsService;->parseNativeResult([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 108
    invoke-interface {p1, v0}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public varargs getPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V
    .locals 2
    .param p1, "promise"    # Lexpo/modules/core/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/core/Promise;)V

    .line 89
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v0, v1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->getPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public varargs hasGrantedPermissions([Ljava/lang/String;)Z
    .locals 8
    .param p1, "permissions"    # [Ljava/lang/String;

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p1

    .local v0, "$this$all$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 366
    .local v1, "$i$f$all":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 165
    .local v7, "$i$a$-all-PermissionsService$hasGrantedPermissions$1":I
    invoke-direct {p0, v6}, Lexpo/modules/adapters/react/permissions/PermissionsService;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    .line 366
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-all-PermissionsService$hasGrantedPermissions$1":I
    if-nez v6, :cond_0

    goto :goto_1

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v3, 0x1

    .line 165
    .end local v0    # "$this$all$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$all":I
    :goto_1
    return v3
.end method

.method public isPermissionPresentInManifest(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 173
    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    nop

    .line 173
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "$this$isPermissionPresentInManifest_u24lambda_u2412":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$a$-run-PermissionsService$isPermissionPresentInManifest$1":I
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 176
    .end local v1    # "$this$isPermissionPresentInManifest_u24lambda_u2412":Landroid/content/pm/PackageInfo;
    .end local v2    # "$i$a$-run-PermissionsService$isPermissionPresentInManifest$1":I
    :cond_0
    return v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "_":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public onCreate(Lexpo/modules/core/ModuleRegistry;)V
    .locals 3
    .param p1, "moduleRegistry"    # Lexpo/modules/core/ModuleRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "moduleRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-class v0, Lexpo/modules/core/interfaces/ActivityProvider;

    invoke-virtual {p1, v0}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ActivityProvider;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mActivityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    .line 57
    const-class v0, Lexpo/modules/core/interfaces/services/UIManager;

    invoke-virtual {p1, v0}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/services/UIManager;

    move-object v1, p0

    check-cast v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    invoke-interface {v0, v1}, Lexpo/modules/core/interfaces/services/UIManager;->registerLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V

    .line 58
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "expo.modules.permissions.asked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskedPermissionsCache:Landroid/content/SharedPreferences;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find implementation for ActivityProvider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onHostDestroy()V
    .locals 0

    .line 354
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 352
    return-void
.end method

.method public onHostResume()V
    .locals 4

    .line 331
    iget-boolean v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mWriteSettingsPermissionBeingAsked:Z

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mWriteSettingsPermissionBeingAsked:Z

    .line 337
    iget-object v1, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    .local v1, "askAsyncListener":Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    iget-object v2, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncRequestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    .local v2, "askAsyncRequestedPermissions":[Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncListener:Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    .line 341
    iput-object v3, p0, Lexpo/modules/adapters/react/permissions/PermissionsService;->mAskAsyncRequestedPermissions:[Ljava/lang/String;

    .line 343
    array-length v3, v2

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 345
    invoke-virtual {p0, v2, v1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->askForManifestPermissions([Ljava/lang/String;Lexpo/modules/interfaces/permissions/PermissionsResponseListener;)V

    goto :goto_0

    .line 348
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;->onResult(Ljava/util/Map;)V

    .line 350
    :goto_0
    return-void
.end method
