.class Lcom/neovisionaries/ws/client/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# static fields
.field private static final sRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/neovisionaries/ws/client/Misc;->sRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static extractHost(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .line 318
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 322
    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neovisionaries/ws/client/Misc;->extractHostFromAuthorityPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 339
    return-object v0

    .line 343
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neovisionaries/ws/client/Misc;->extractHostFromEntireUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static extractHostFromAuthorityPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "authority"    # Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 353
    return-object v0

    .line 357
    :cond_0
    const-string v1, "^(.*@)?([^:]+)(:\\d+)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 360
    .local v1, "matcher":Ljava/util/regex/Matcher;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_2
    :goto_0
    return-object v0
.end method

.method static extractHostFromEntireUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 376
    return-object v0

    .line 380
    :cond_0
    const-string v1, "^\\w+://([^@/]*@)?([^:/]+)(:\\d+)?(/.*)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 383
    .local v1, "matcher":Ljava/util/regex/Matcher;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 386
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBytesUTF8(Ljava/lang/String;)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 55
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 62
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method

.method public static getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 398
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 429
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .line 440
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 442
    return-object v0

    .line 447
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 449
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 287
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/neovisionaries/ws/client/Misc;->join(Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static join(Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 297
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 299
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 301
    .local v2, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    goto :goto_1

    .line 307
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method public static max([I)I
    .locals 3
    .param p0, "values"    # [I

    .line 271
    const/high16 v0, -0x80000000

    .line 273
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 275
    aget v2, p0, v1

    if-ge v0, v2, :cond_0

    .line 277
    aget v0, p0, v1

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min([I)I
    .locals 3
    .param p0, "values"    # [I

    .line 252
    const v0, 0x7fffffff

    .line 254
    .local v0, "min":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 256
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 258
    aget v0, p0, v1

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 409
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 411
    return-object v0

    .line 416
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 418
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static nextBytes(I)[B
    .locals 2
    .param p0, "nBytes"    # I

    .line 126
    new-array v0, p0, [B

    .line 128
    .local v0, "buffer":[B
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->nextBytes([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static nextBytes([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .line 115
    sget-object v0, Lcom/neovisionaries/ws/client/Misc;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 117
    return-object p0
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 188
    .local v1, "b":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 193
    const/4 v2, 0x0

    return-object v2

    .line 202
    :cond_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 205
    goto :goto_1

    .line 208
    :cond_1
    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    .line 211
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 219
    .local v4, "b2":I
    if-ne v4, v2, :cond_3

    .line 222
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    goto :goto_1

    .line 229
    :cond_3
    if-ne v4, v3, :cond_5

    .line 232
    nop

    .line 243
    .end local v1    # "b":I
    .end local v4    # "b2":I
    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    .restart local v1    # "b":I
    .restart local v4    # "b2":I
    :cond_5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    .end local v1    # "b":I
    .end local v4    # "b2":I
    goto :goto_0
.end method

.method public static toOpcodeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "opcode"    # I

    .line 137
    packed-switch p0, :pswitch_data_0

    .line 161
    :pswitch_0
    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DATA(0x%X)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :pswitch_1
    const-string v0, "PONG"

    return-object v0

    .line 152
    :pswitch_2
    const-string v0, "PING"

    return-object v0

    .line 149
    :pswitch_3
    const-string v0, "CLOSE"

    return-object v0

    .line 146
    :pswitch_4
    const-string v0, "BINARY"

    return-object v0

    .line 143
    :pswitch_5
    const-string v0, "TEXT"

    return-object v0

    .line 140
    :pswitch_6
    const-string v0, "CONTINUATION"

    return-object v0

    .line 166
    :cond_0
    const/16 v0, 0x8

    if-gt v0, p0, :cond_1

    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CONTROL(0x%X)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toStringUTF8([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 75
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/neovisionaries/ws/client/Misc;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringUTF8([BII)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 89
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 91
    return-object v0

    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0

    .line 98
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method
