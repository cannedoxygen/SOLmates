.class public final Lcom/facebook/react/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final EXOPACKAGE_FLAGS:I = 0x0

.field public static final IS_INTERNAL_BUILD:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.react"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string/jumbo v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/react/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
