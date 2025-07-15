.class public interface abstract Lexpo/modules/interfaces/permissions/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# direct methods
.method public static varargs askForPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/core/Promise;[Ljava/lang/String;)V
    .locals 2
    .param p0, "permissionsManager"    # Lexpo/modules/interfaces/permissions/Permissions;
    .param p1, "promise"    # Lexpo/modules/core/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string v0, "E_NO_PERMISSIONS"

    const-string v1, "Permissions module is null. Are you sure all the installed Expo modules are properly linked?"

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_0
    invoke-interface {p0, p1, p2}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static varargs askForPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/kotlin/Promise;[Ljava/lang/String;)V
    .locals 1
    .param p0, "permissionsManager"    # Lexpo/modules/interfaces/permissions/Permissions;
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 47
    new-instance v0, Lexpo/modules/interfaces/permissions/Permissions$2;

    invoke-direct {v0, p1}, Lexpo/modules/interfaces/permissions/Permissions$2;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-static {p0, v0, p2}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static varargs getPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/core/Promise;[Ljava/lang/String;)V
    .locals 2
    .param p0, "permissionsManager"    # Lexpo/modules/interfaces/permissions/Permissions;
    .param p1, "promise"    # Lexpo/modules/core/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 10
    if-nez p0, :cond_0

    .line 11
    const-string v0, "E_NO_PERMISSIONS"

    const-string v1, "Permissions module is null. Are you sure all the installed Expo modules are properly linked?"

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-interface {p0, p1, p2}, Lexpo/modules/interfaces/permissions/Permissions;->getPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static varargs getPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/kotlin/Promise;[Ljava/lang/String;)V
    .locals 1
    .param p0, "permissionsManager"    # Lexpo/modules/interfaces/permissions/Permissions;
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 25
    new-instance v0, Lexpo/modules/interfaces/permissions/Permissions$1;

    invoke-direct {v0, p1}, Lexpo/modules/interfaces/permissions/Permissions$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-static {p0, v0, p2}, Lexpo/modules/interfaces/permissions/Permissions;->getPermissionsWithPermissionsManager(Lexpo/modules/interfaces/permissions/Permissions;Lexpo/modules/core/Promise;[Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public varargs abstract askForPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V
.end method

.method public varargs abstract askForPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V
.end method

.method public varargs abstract getPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V
.end method

.method public varargs abstract getPermissionsWithPromise(Lexpo/modules/core/Promise;[Ljava/lang/String;)V
.end method

.method public varargs abstract hasGrantedPermissions([Ljava/lang/String;)Z
.end method

.method public abstract isPermissionPresentInManifest(Ljava/lang/String;)Z
.end method
