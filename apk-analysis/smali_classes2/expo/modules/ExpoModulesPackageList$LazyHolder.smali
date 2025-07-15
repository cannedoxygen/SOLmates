.class Lexpo/modules/ExpoModulesPackageList$LazyHolder;
.super Ljava/lang/Object;
.source "ExpoModulesPackageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoModulesPackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final modulesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;>;"
        }
    .end annotation
.end field

.field static final packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    const/16 v0, 0xa

    new-array v1, v0, [Lexpo/modules/core/interfaces/Package;

    new-instance v2, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v2}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lexpo/modules/constants/ConstantsPackage;

    invoke-direct {v2}, Lexpo/modules/constants/ConstantsPackage;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lexpo/modules/core/BasePackage;

    invoke-direct {v2}, Lexpo/modules/core/BasePackage;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lexpo/modules/devlauncher/DevLauncherPackage;

    invoke-direct {v2}, Lexpo/modules/devlauncher/DevLauncherPackage;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lexpo/modules/devmenu/DevMenuPackage;

    invoke-direct {v2}, Lexpo/modules/devmenu/DevMenuPackage;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lexpo/modules/filesystem/FileSystemPackage;

    invoke-direct {v2}, Lexpo/modules/filesystem/FileSystemPackage;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lexpo/modules/imageloader/ImageLoaderPackage;

    invoke-direct {v2}, Lexpo/modules/imageloader/ImageLoaderPackage;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lexpo/modules/keepawake/KeepAwakePackage;

    invoke-direct {v2}, Lexpo/modules/keepawake/KeepAwakePackage;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lexpo/modules/linking/ExpoLinkingPackage;

    invoke-direct {v2}, Lexpo/modules/linking/ExpoLinkingPackage;-><init>()V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Lexpo/modules/notifications/NotificationsPackage;

    invoke-direct {v2}, Lexpo/modules/notifications/NotificationsPackage;-><init>()V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lexpo/modules/ExpoModulesPackageList$LazyHolder;->packagesList:Ljava/util/List;

    .line 24
    const/16 v1, 0x1f

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lexpo/modules/nativeextensions/ExpoNativeExtensionsModule;

    aput-object v2, v1, v3

    const-class v2, Lexpo/modules/fetch/ExpoFetchModule;

    aput-object v2, v1, v4

    const-class v2, Lexpo/modules/application/ApplicationModule;

    aput-object v2, v1, v5

    const-class v2, Lexpo/modules/asset/AssetModule;

    aput-object v2, v1, v6

    const-class v2, Lexpo/modules/blur/BlurModule;

    aput-object v2, v1, v7

    const-class v2, Lexpo/modules/constants/ConstantsModule;

    aput-object v2, v1, v8

    const-class v2, Lexpo/modules/crypto/CryptoModule;

    aput-object v2, v1, v9

    const-class v2, Lexpo/modules/devmenu/modules/DevMenuModule;

    aput-object v2, v1, v10

    const-class v2, Lexpo/modules/devmenu/modules/DevMenuPreferences;

    aput-object v2, v1, v11

    const-class v2, Lexpo/modules/device/DeviceModule;

    aput-object v2, v1, v12

    const-class v2, Lexpo/modules/filesystem/FileSystemModule;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-class v2, Lexpo/modules/filesystem/next/FileSystemNextModule;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-class v2, Lexpo/modules/font/FontLoaderModule;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-class v2, Lexpo/modules/keepawake/KeepAwakeModule;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-class v2, Lexpo/modules/linking/ExpoLinkingModule;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-class v2, Lexpo/modules/localauthentication/LocalAuthenticationModule;

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-class v2, Lexpo/modules/notifications/badge/BadgeModule;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-class v2, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-class v2, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-class v2, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-class v2, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-class v2, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-class v2, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-class v2, Lexpo/modules/notifications/permissions/NotificationPermissionsModule;

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-class v2, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-class v2, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-class v2, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-class v2, Lexpo/modules/notifications/tokens/PushTokenModule;

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-class v2, Lexpo/modules/securestore/SecureStoreModule;

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-class v2, Lexpo/modules/splashscreen/SplashScreenModule;

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-class v2, Lexpo/modules/passkeys/ReactNativePasskeysModule;

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lexpo/modules/ExpoModulesPackageList$LazyHolder;->modulesList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
