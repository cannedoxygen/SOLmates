.class public Lcom/facebook/soloader/SoLoaderCorruptedLibNameError;
.super Lcom/facebook/soloader/SoLoaderULError;
.source "SoLoaderCorruptedLibNameError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "soName"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
