.class public Lcom/facebook/soloader/InstrumentedSoFileLoader;
.super Ljava/lang/Object;
.source "InstrumentedSoFileLoader.java"

# interfaces
.implements Lcom/facebook/soloader/SoFileLoader;


# instance fields
.field private final mDelegate:Lcom/facebook/soloader/SoFileLoader;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/facebook/soloader/SoFileLoader;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/soloader/InstrumentedSoFileLoader;->mDelegate:Lcom/facebook/soloader/SoFileLoader;

    .line 28
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pathToSoFile"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "failure":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/facebook/soloader/InstrumentedSoFileLoader;->mDelegate:Lcom/facebook/soloader/SoFileLoader;

    const-string v2, "load"

    invoke-static {v1, v2, p2}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadStart(Lcom/facebook/soloader/SoFileLoader;Ljava/lang/String;I)V

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/facebook/soloader/InstrumentedSoFileLoader;->mDelegate:Lcom/facebook/soloader/SoFileLoader;

    invoke-interface {v1, p1, p2}, Lcom/facebook/soloader/SoFileLoader;->load(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadEnd(Ljava/lang/Throwable;)V

    .line 42
    nop

    .line 43
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 39
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p1    # "pathToSoFile":Ljava/lang/String;
    .end local p2    # "loadFlags":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p1    # "pathToSoFile":Ljava/lang/String;
    .restart local p2    # "loadFlags":I
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadEnd(Ljava/lang/Throwable;)V

    .line 42
    throw v1
.end method

.method public loadBytes(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;I)V
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "bytes"    # Lcom/facebook/soloader/ElfByteChannel;
    .param p3, "loadFlags"    # I

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "failure":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/facebook/soloader/InstrumentedSoFileLoader;->mDelegate:Lcom/facebook/soloader/SoFileLoader;

    const-string v2, "loadBytes"

    invoke-static {v1, v2, p3}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadStart(Lcom/facebook/soloader/SoFileLoader;Ljava/lang/String;I)V

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/facebook/soloader/InstrumentedSoFileLoader;->mDelegate:Lcom/facebook/soloader/SoFileLoader;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/soloader/SoFileLoader;->loadBytes(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadEnd(Ljava/lang/Throwable;)V

    .line 57
    nop

    .line 58
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 54
    nop

    .end local v0    # "failure":Ljava/lang/Throwable;
    .end local p1    # "pathName":Ljava/lang/String;
    .end local p2    # "bytes":Lcom/facebook/soloader/ElfByteChannel;
    .end local p3    # "loadFlags":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "failure":Ljava/lang/Throwable;
    .restart local p1    # "pathName":Ljava/lang/String;
    .restart local p2    # "bytes":Lcom/facebook/soloader/ElfByteChannel;
    .restart local p3    # "loadFlags":I
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/facebook/soloader/observer/ObserverHolder;->onSoFileLoaderLoadEnd(Ljava/lang/Throwable;)V

    .line 57
    throw v1
.end method
