.class public final Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;
.super Ljava/lang/Object;
.source "SharedPreferencesNotificationCategoriesStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferencesNotificationCategoriesStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesNotificationCategoriesStore.kt\nexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore\n+ 2 Base64Serialization.kt\nexpo/modules/notifications/service/delegates/Base64SerializationKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n23#2,9:108\n23#2,9:134\n526#3:117\n511#3,6:118\n135#4,9:124\n215#4:133\n216#4:144\n144#4:145\n1#5:143\n1#5:146\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesNotificationCategoriesStore.kt\nexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore\n*L\n37#1:108,9\n54#1:134,9\n51#1:117\n51#1:118,6\n52#1:124,9\n52#1:133\n52#1:144\n52#1:145\n52#1:143\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u0007R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "allNotificationCategories",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
        "getAllNotificationCategories",
        "()Ljava/util/Collection;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getNotificationCategory",
        "identifier",
        "",
        "preferencesNotificationCategoryKey",
        "removeNotificationCategory",
        "",
        "saveNotificationCategory",
        "notificationCategory",
        "Companion",
        "expo-notifications_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore$Companion;

.field private static final NOTIFICATION_CATEGORY_KEY_PREFIX:Ljava/lang/String; = "notification_category-"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "expo.modules.notifications.SharedPreferencesNotificationCategoriesStore"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->Companion:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "expo.modules.notifications.SharedPreferencesNotificationCategoriesStore"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    return-void
.end method

.method private final preferencesNotificationCategoryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification_category-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAllNotificationCategories()Ljava/util/Collection;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
            ">;"
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    iget-object v0, v1, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v2, "getAll(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    nop

    .local v0, "$this$filter$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 118
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 119
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v7

    .local v10, "it":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-filter-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    const-string v13, "<get-key>(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/String;

    const-string v13, "notification_category-"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    .line 119
    .end local v10    # "it":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-filter-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$1":I
    if-eqz v8, :cond_0

    .line 120
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 117
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$filterTo":I
    nop

    .line 52
    .end local v0    # "$this$filter$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filter":I
    move-object v2, v3

    .local v2, "$this$mapNotNull$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 124
    .local v3, "$i$f$mapNotNull":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 132
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 133
    .local v10, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "element$iv$iv$iv":Ljava/util/Map$Entry;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v14, 0x0

    .line 132
    .local v14, "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    const/4 v15, 0x0

    .line 52
    .local v15, "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 53
    .local v16, "value":Ljava/lang/Object;
    nop

    .line 54
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object/from16 v17, v0

    .local v17, "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 134
    .local v18, "$i$f$asBase64EncodedObject":I
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 135
    move-object/from16 v9, v17

    .end local v17    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .local v9, "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    invoke-static {v9, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 136
    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v17, v0

    .local v17, "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    const/16 v19, 0x0

    .line 137
    .local v19, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    new-instance v0, Ljava/io/ObjectInputStream;

    move-object/from16 v8, v17

    check-cast v8, Ljava/io/InputStream;

    invoke-direct {v0, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    move-object v0, v8

    check-cast v0, Ljava/io/ObjectInputStream;

    .local v0, "ois$iv":Ljava/io/ObjectInputStream;
    const/16 v20, 0x0

    .line 138
    .local v20, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v22, v21

    .line 139
    .local v22, "o$iv":Ljava/lang/Object;
    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v2

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .local v0, "o$iv":Ljava/lang/Object;
    .local v21, "ois$iv":Ljava/io/ObjectInputStream;
    .local v22, "$this$mapNotNull$iv":Ljava/util/Map;
    :try_start_3
    instance-of v2, v0, Lexpo/modules/notifications/notifications/model/NotificationCategory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_2

    .line 140
    nop

    .end local v0    # "o$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .end local v21    # "ois$iv":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    :try_start_5
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 142
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    check-cast v0, Lexpo/modules/notifications/notifications/model/NotificationCategory;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_4

    .line 58
    :catch_0
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_5

    .line 55
    :catch_1
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_6

    .line 142
    .restart local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v18    # "$i$f$asBase64EncodedObject":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_3

    .restart local v0    # "o$iv":Ljava/lang/Object;
    .restart local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v20    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .restart local v21    # "ois$iv":Ljava/io/ObjectInputStream;
    :cond_2
    const/4 v2, 0x0

    :try_start_6
    new-instance v2, Ljava/io/InvalidClassException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v23, v3

    .end local v3    # "$i$f$mapNotNull":I
    .local v23, "$i$f$mapNotNull":I
    :try_start_7
    const-class v3, Lexpo/modules/notifications/notifications/model/NotificationCategory;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v24, v5

    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .local v24, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v25, v6

    .end local v6    # "$i$f$mapNotNullTo":I
    .local v25, "$i$f$mapNotNullTo":I
    :try_start_9
    const-string v6, "Expected serialized object to be an instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v10    # "$i$f$forEach":I
    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    .end local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    .end local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "o$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .end local v21    # "ois$iv":Ljava/io/ObjectInputStream;
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .restart local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$forEach":I
    .restart local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .restart local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .restart local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .restart local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "$i$f$asBase64EncodedObject":I
    .restart local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catchall_2
    move-exception v0

    move/from16 v25, v6

    move-object v2, v0

    .end local v6    # "$i$f$mapNotNullTo":I
    .restart local v25    # "$i$f$mapNotNullTo":I
    goto :goto_2

    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object v2, v0

    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    goto :goto_2

    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catchall_4
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object v2, v0

    .end local v3    # "$i$f$mapNotNull":I
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    goto :goto_2

    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catchall_5
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object v2, v0

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v10    # "$i$f$forEach":I
    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    .end local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    .end local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    :goto_2
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .restart local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$forEach":I
    .restart local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .restart local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .restart local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .restart local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "$i$f$asBase64EncodedObject":I
    .restart local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v10    # "$i$f$forEach":I
    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .end local v17    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v19    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .restart local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$forEach":I
    .restart local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .restart local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .restart local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .restart local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v18    # "$i$f$asBase64EncodedObject":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catchall_8
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object v2, v0

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v10    # "$i$f$forEach":I
    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    :goto_3
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .restart local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$forEach":I
    .restart local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .restart local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .restart local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .restart local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v18    # "$i$f$asBase64EncodedObject":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$forEach":I
    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    throw v3
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 58
    .end local v9    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v18    # "$i$f$asBase64EncodedObject":I
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .restart local v10    # "$i$f$forEach":I
    .restart local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    .restart local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .restart local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .restart local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 55
    :catch_3
    move-exception v0

    goto :goto_6

    .line 54
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :cond_3
    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    const/4 v0, 0x0

    :goto_4
    goto :goto_7

    .line 58
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catch_4
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    .line 60
    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :catch_5
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    .line 57
    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v23    # "$i$f$mapNotNull":I
    .restart local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v25    # "$i$f$mapNotNullTo":I
    :goto_6
    const/4 v0, 0x0

    .line 53
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_7
    nop

    .line 132
    .end local v15    # "$i$a$-mapNotNull-SharedPreferencesNotificationCategoriesStore$allNotificationCategories$2":I
    .end local v16    # "value":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 143
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v5, v24

    move/from16 v6, v25

    const/4 v8, 0x2

    const/4 v9, 0x0

    .end local v12    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    goto/16 :goto_1

    .line 144
    .end local v22    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v23    # "$i$f$mapNotNull":I
    .end local v24    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v25    # "$i$f$mapNotNullTo":I
    .restart local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v3    # "$i$f$mapNotNull":I
    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .restart local v6    # "$i$f$mapNotNullTo":I
    :cond_5
    nop

    .line 145
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 124
    nop

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/util/Collection;

    .line 62
    return-object v0
.end method

.method public final getNotificationCategory(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationCategory;
    .locals 13
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->preferencesNotificationCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    nop

    .line 34
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 34
    nop

    .line 37
    nop

    .local v0, "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$f$asBase64EncodedObject":I
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 109
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 108
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v3, Ljava/io/Closeable;

    .line 110
    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/ByteArrayInputStream;

    .local v4, "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 111
    .local v5, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    new-instance v6, Ljava/io/ObjectInputStream;

    move-object v7, v4

    check-cast v7, Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/io/ObjectInputStream;

    .local v7, "ois$iv":Ljava/io/ObjectInputStream;
    const/4 v8, 0x0

    .line 112
    .local v8, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    .line 113
    .local v9, "o$iv":Ljava/lang/Object;
    instance-of v10, v9, Lexpo/modules/notifications/notifications/model/NotificationCategory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    .line 114
    nop

    .end local v7    # "ois$iv":Ljava/io/ObjectInputStream;
    .end local v8    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .end local v9    # "o$iv":Ljava/lang/Object;
    :try_start_2
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    move-object v2, v9

    check-cast v2, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    goto :goto_0

    .restart local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v7    # "ois$iv":Ljava/io/ObjectInputStream;
    .restart local v8    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .restart local v9    # "o$iv":Ljava/lang/Object;
    :cond_0
    :try_start_3
    new-instance v2, Ljava/io/InvalidClassException;

    const-class v10, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected serialized object to be an instance of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .end local p1    # "identifier":Ljava/lang/String;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v7    # "ois$iv":Ljava/io/ObjectInputStream;
    .end local v8    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1$iv":I
    .end local v9    # "o$iv":Ljava/lang/Object;
    .restart local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local p1    # "identifier":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .end local p1    # "identifier":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local p1    # "identifier":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local p1    # "identifier":Ljava/lang/String;
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v4    # "byteArrayInputStream$iv":Ljava/io/ByteArrayInputStream;
    .end local v5    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$iv":I
    .restart local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local p1    # "identifier":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local p1    # "identifier":Ljava/lang/String;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .restart local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local p1    # "identifier":Ljava/lang/String;
    :catchall_3
    move-exception v4

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 37
    .end local v0    # "$this$asBase64EncodedObject$iv":Ljava/lang/String;
    .end local v1    # "$i$f$asBase64EncodedObject":I
    :cond_1
    :goto_0
    return-object v2
.end method

.method public final removeNotificationCategory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 90
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->preferencesNotificationCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    nop

    .line 89
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    nop

    .line 146
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-let-SharedPreferencesNotificationCategoriesStore$removeNotificationCategory$1":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    .line 94
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SharedPreferencesNotificationCategoriesStore$removeNotificationCategory$1":I
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->preferencesNotificationCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 94
    return v0
.end method

.method public final saveNotificationCategory(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Lexpo/modules/notifications/notifications/model/NotificationCategory;
    .locals 3
    .param p1, "notificationCategory"    # Lexpo/modules/notifications/notifications/model/NotificationCategory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "notificationCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationCategory;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getIdentifier(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->preferencesNotificationCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    move-object v2, p1

    check-cast v2, Ljava/io/Serializable;

    invoke-static {v2}, Lexpo/modules/notifications/service/delegates/Base64SerializationKt;->encodedInBase64(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 80
    nop

    .line 146
    .local v0, "it":Z
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-let-SharedPreferencesNotificationCategoriesStore$saveNotificationCategory$1":I
    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-SharedPreferencesNotificationCategoriesStore$saveNotificationCategory$1":I
    :goto_0
    return-object v2
.end method
