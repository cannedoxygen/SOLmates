.class public final Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;
.super Lkotlin/jvm/internal/Lambda;
.source "AnyType.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/next/FileSystemNextModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/KType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt$toAnyType$1\n*L\n1#1,332:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/KType;",
        "T",
        "invoke",
        "expo/modules/kotlin/types/AnyTypeKt$toAnyType$1",
        "expo/modules/kotlin/types/AnyTypeKt$toArgsArray$$inlined$toAnyType$1",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$$inlined$toArgsArray$default$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;-><init>()V

    sput-object v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;->INSTANCE:Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$21$$inlined$Function$23;->invoke()Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KType;
    .locals 1

    const-class v0, Lexpo/modules/filesystem/next/FileSystemFile;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    .line 168
    return-object v0
.end method
