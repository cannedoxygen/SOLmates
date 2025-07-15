.class Lcom/neovisionaries/ws/client/SNIHelper;
.super Ljava/lang/Object;
.source "SNIHelper.java"


# static fields
.field private static sSNIHostNameConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSetServerNamesMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    :try_start_0
    invoke-static {}, Lcom/neovisionaries/ws/client/SNIHelper;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSNIHostName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/neovisionaries/ws/client/SNIHelper;->sSNIHostNameConstructor:Ljava/lang/reflect/Constructor;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/Misc;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static createSNIHostNames([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "hostnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 76
    .local v3, "hostname":Ljava/lang/String;
    invoke-static {v3}, Lcom/neovisionaries/ws/client/SNIHelper;->createSNIHostName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "hostname":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v0
.end method

.method public static getAndroidSDKVersion()I
    .locals 4

    .line 133
    const-string v0, "android.os.Build$VERSION"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SDK_INT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 135
    :catch_0
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "SDK"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 141
    :catch_1
    move-exception v0

    .line 143
    .local v0, "ex1":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "javax.net.ssl.SNIHostName"

    invoke-static {v2, v1}, Lcom/neovisionaries/ws/client/Misc;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/neovisionaries/ws/client/SNIHelper;->sSNIHostNameConstructor:Ljava/lang/reflect/Constructor;

    .line 56
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    aput-object v1, v0, v3

    const-string v1, "javax.net.ssl.SSLParameters"

    const-string/jumbo v2, "setServerNames"

    invoke-static {v1, v2, v0}, Lcom/neovisionaries/ws/client/Misc;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/SNIHelper;->sSetServerNamesMethod:Ljava/lang/reflect/Method;

    .line 58
    return-void
.end method

.method static setServerNames(Ljava/net/Socket;[Ljava/lang/String;)V
    .locals 6
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostnames"    # [Ljava/lang/String;

    .line 92
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 99
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/neovisionaries/ws/client/SNIHelper;->getAndroidSDKVersion()I

    move-result v0

    .line 105
    .local v0, "androidSDKVersion":I
    if-lez v0, :cond_2

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .local v1, "method":Ljava/lang/reflect/Method;
    aget-object v2, p1, v5

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNI configuration failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 119
    :cond_2
    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 120
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    if-nez v1, :cond_3

    .line 122
    return-void

    .line 126
    :cond_3
    invoke-static {v1, p1}, Lcom/neovisionaries/ws/client/SNIHelper;->setServerNames(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private static setServerNames(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V
    .locals 2
    .param p0, "parameters"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "hostnames"    # [Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/neovisionaries/ws/client/SNIHelper;->sSetServerNamesMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/neovisionaries/ws/client/SNIHelper;->createSNIHostNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/neovisionaries/ws/client/Misc;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
