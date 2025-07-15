.class public Lcom/facebook/hermes/intl/JSObjects;
.super Ljava/lang/Object;
.source "JSObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/hermes/intl/JSObjects$UndefinedObject;,
        Lcom/facebook/hermes/intl/JSObjects$NullObject;
    }
.end annotation


# static fields
.field private static s_null:Ljava/lang/Object;

.field private static s_undefined:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/facebook/hermes/intl/JSObjects$UndefinedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSObjects$UndefinedObject;-><init>(Lcom/facebook/hermes/intl/JSObjects$1;)V

    sput-object v0, Lcom/facebook/hermes/intl/JSObjects;->s_undefined:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/facebook/hermes/intl/JSObjects$NullObject;

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSObjects$NullObject;-><init>(Lcom/facebook/hermes/intl/JSObjects$1;)V

    sput-object v0, Lcom/facebook/hermes/intl/JSObjects;->s_null:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "options"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;

    .line 112
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    .line 113
    .local v0, "javaObject":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Null()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 116
    :cond_0
    return-object v1

    .line 118
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static Null()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/facebook/hermes/intl/JSObjects;->s_null:Ljava/lang/Object;

    return-object v0
.end method

.method public static Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "options"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 123
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    .line 124
    .local v0, "javaObject":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public static Undefined()Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object v0, Lcom/facebook/hermes/intl/JSObjects;->s_undefined:Ljava/lang/Object;

    return-object v0
.end method

.method public static getJavaBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 76
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getJavaDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 88
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getJavaMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static getJavaString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 92
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p0, [Ljava/lang/Object;

    return v0
.end method

.method public static isBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p0, Ljava/lang/Boolean;

    return v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p0, Lcom/facebook/hermes/intl/JSObjects$NullObject;

    return v0
.end method

.method public static isNumber(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p0, Ljava/lang/Double;

    return v0
.end method

.method public static isObject(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p0, Ljava/util/HashMap;

    return v0
.end method

.method public static isString(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p0, Ljava/lang/String;

    return v0
.end method

.method public static isUndefined(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Lcom/facebook/hermes/intl/JSObjects$UndefinedObject;

    return v0
.end method

.method public static newBoolean()Ljava/lang/Object;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public static newBoolean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 72
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static newBoolean(Z)Ljava/lang/Object;
    .locals 1
    .param p0, "b"    # Z

    .line 68
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public static newNumber(D)Ljava/lang/Object;
    .locals 1
    .param p0, "d"    # D

    .line 84
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static newObject()Ljava/lang/Object;
    .locals 1

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newString()Ljava/lang/Object;
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public static newString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 56
    return-object p0
.end method
