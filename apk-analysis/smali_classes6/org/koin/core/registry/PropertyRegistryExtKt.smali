.class public final Lorg/koin/core/registry/PropertyRegistryExtKt;
.super Ljava/lang/Object;
.source "PropertyRegistryExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyRegistryExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyRegistryExt.kt\norg/koin/core/registry/PropertyRegistryExtKt\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,56:1\n28#2:57\n46#2,2:58\n29#2:60\n28#2:63\n46#2,2:64\n29#2:66\n32#2:67\n46#2,2:68\n33#2:70\n28#2:71\n46#2,2:72\n29#2:74\n215#3,2:61\n*S KotlinDebug\n*F\n+ 1 PropertyRegistryExt.kt\norg/koin/core/registry/PropertyRegistryExtKt\n*L\n14#1:57\n14#1:58,2\n14#1:60\n27#1:63\n27#1:64,2\n27#1:66\n31#1:67\n31#1:68,2\n31#1:70\n49#1:71\n49#1:72,2\n49#1:74\n17#1:61,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006\u001a\u0012\u0010\u0007\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "readDataFromFile",
        "Ljava/util/Properties;",
        "content",
        "",
        "loadEnvironmentProperties",
        "",
        "Lorg/koin/core/registry/PropertyRegistry;",
        "loadPropertiesFromFile",
        "fileName",
        "saveProperties",
        "properties",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final loadEnvironmentProperties(Lorg/koin/core/registry/PropertyRegistry;)V
    .locals 7
    .param p0, "$this$loadEnvironmentProperties"    # Lorg/koin/core/registry/PropertyRegistry;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/koin/core/registry/PropertyRegistry;->get_koin$koin_core()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    const-string v1, "load properties from environment"

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 73
    :cond_0
    nop

    .line 74
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 51
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 52
    .local v0, "sysProperties":Ljava/util/Properties;
    const-string/jumbo v1, "sysProperties"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/koin/core/registry/PropertyRegistryExtKt;->saveProperties(Lorg/koin/core/registry/PropertyRegistry;Ljava/util/Properties;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getenv()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    move-object v1, v2

    .line 55
    .local v1, "sysEnvProperties":Ljava/util/Properties;
    invoke-static {p0, v1}, Lorg/koin/core/registry/PropertyRegistryExtKt;->saveProperties(Lorg/koin/core/registry/PropertyRegistry;Ljava/util/Properties;)V

    .line 56
    return-void
.end method

.method public static final loadPropertiesFromFile(Lorg/koin/core/registry/PropertyRegistry;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$loadPropertiesFromFile"    # Lorg/koin/core/registry/PropertyRegistry;
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lorg/koin/core/registry/PropertyRegistry;->get_koin$koin_core()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load properties from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 65
    :cond_0
    nop

    .line 66
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 29
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    const-class v0, Lorg/koin/core/Koin;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 30
    .local v0, "content":Ljava/lang/String;
    const/16 v1, 0x27

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0}, Lorg/koin/core/registry/PropertyRegistry;->get_koin$koin_core()Lorg/koin/core/Koin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v2

    .local v2, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded properties from file:\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$info":I
    sget-object v4, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .local v4, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v5, v2

    .local v5, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v6, 0x0

    .line 68
    .local v6, "$i$f$log":I
    invoke-virtual {v5, v4}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v4, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 69
    :cond_2
    nop

    .line 70
    .end local v4    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v5    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v6    # "$i$f$log":I
    nop

    .line 32
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "$i$f$info":I
    invoke-static {v0}, Lorg/koin/core/registry/PropertyRegistryExtKt;->readDataFromFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 33
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {p0, v1}, Lorg/koin/core/registry/PropertyRegistryExtKt;->saveProperties(Lorg/koin/core/registry/PropertyRegistry;Ljava/util/Properties;)V

    .line 37
    .end local v1    # "properties":Ljava/util/Properties;
    return-void

    .line 35
    :cond_3
    new-instance v2, Lorg/koin/core/error/NoPropertyFileFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No properties found for file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/koin/core/error/NoPropertyFileFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final readDataFromFile(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v0, "properties":Ljava/util/Properties;
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string/jumbo v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 42
    return-object v0
.end method

.method public static final saveProperties(Lorg/koin/core/registry/PropertyRegistry;Ljava/util/Properties;)V
    .locals 8
    .param p0, "$this$saveProperties"    # Lorg/koin/core/registry/PropertyRegistry;
    .param p1, "properties"    # Ljava/util/Properties;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/koin/core/registry/PropertyRegistry;->get_koin$koin_core()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 59
    :cond_0
    nop

    .line 60
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 16
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .local v0, "propertiesMapValues":Ljava/util/Map;
    move-object v1, v0

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 17
    .local v5, "$i$a$-forEach-PropertyRegistryExtKt$saveProperties$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "k":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 18
    .local v7, "v":Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Lorg/koin/core/registry/PropertyRegistry;->saveProperty$koin_core(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    nop

    .line 61
    .end local v5    # "$i$a$-forEach-PropertyRegistryExtKt$saveProperties$1":I
    .end local v6    # "k":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 62
    :cond_1
    nop

    .line 20
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method
