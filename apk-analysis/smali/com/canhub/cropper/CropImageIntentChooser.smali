.class public final Lcom/canhub/cropper/CropImageIntentChooser;
.super Ljava/lang/Object;
.source "CropImageIntentChooser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;,
        Lcom/canhub/cropper/CropImageIntentChooser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageIntentChooser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageIntentChooser.kt\ncom/canhub/cropper/CropImageIntentChooser\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,225:1\n37#2:226\n36#2,3:227\n288#3,2:230\n12708#4,2:232\n*S KotlinDebug\n*F\n+ 1 CropImageIntentChooser.kt\ncom/canhub/cropper/CropImageIntentChooser\n*L\n105#1:226\n105#1:227,3\n158#1:230,2\n193#1:232,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageIntentChooser;",
        "",
        "activity",
        "Landroidx/activity/ComponentActivity;",
        "callback",
        "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;",
        "(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V",
        "cameraImgUri",
        "Landroid/net/Uri;",
        "intentChooser",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "priorityIntentList",
        "",
        "",
        "title",
        "getCameraIntents",
        "context",
        "Landroid/content/Context;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "getGalleryIntents",
        "action",
        "hasCameraPermissionInManifest",
        "",
        "isExplicitCameraPermissionRequired",
        "setIntentChooserTitle",
        "setupPriorityAppsList",
        "appsList",
        "showChooserIntent",
        "",
        "includeCamera",
        "includeGallery",
        "Companion",
        "ResultCallback",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropImageIntentChooser$Companion;

.field public static final GOOGLE_PHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field public static final GOOGLE_PHOTOS_GO:Ljava/lang/String; = "com.google.android.apps.photosgo"

.field public static final MIUI_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field public static final ONEPLUS_GALLERY:Ljava/lang/String; = "com.oneplus.gallery"

.field public static final SAMSUNG_GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"


# instance fields
.field private final activity:Landroidx/activity/ComponentActivity;

.field private final callback:Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

.field private cameraImgUri:Landroid/net/Uri;

.field private final intentChooser:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private priorityIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$uo4H9JmOS3BwhN7iDTz48_NcMcU(Lcom/canhub/cropper/CropImageIntentChooser;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageIntentChooser;->intentChooser$lambda-1(Lcom/canhub/cropper/CropImageIntentChooser;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageIntentChooser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageIntentChooser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageIntentChooser;->Companion:Lcom/canhub/cropper/CropImageIntentChooser$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V
    .locals 3
    .param p1, "activity"    # Landroidx/activity/ComponentActivity;
    .param p2, "callback"    # Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    .line 18
    iput-object p2, p0, Lcom/canhub/cropper/CropImageIntentChooser;->callback:Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    .line 37
    iget-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    sget v1, Lcom/canhub/cropper/R$string;->pick_image_chooser_title:I

    invoke-virtual {v0, v1}, Landroidx/activity/ComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.str\u2026pick_image_chooser_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->title:Ljava/lang/String;

    .line 38
    nop

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.apps.photos"

    aput-object v2, v0, v1

    .line 40
    const-string v1, "com.google.android.apps.photosgo"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    nop

    .line 41
    const-string v1, "com.sec.android.gallery3d"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    nop

    .line 42
    const-string v1, "com.oneplus.gallery"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    nop

    .line 43
    const-string v1, "com.miui.gallery"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    nop

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->priorityIntentList:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v1, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/canhub/cropper/CropImageIntentChooser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/canhub/cropper/CropImageIntentChooser$$ExternalSyntheticLambda0;-><init>(Lcom/canhub/cropper/CropImageIntentChooser;)V

    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "activity.registerForActi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->intentChooser:Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    return-void
.end method

.method private final getCameraIntents(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 116
    .local v0, "allIntents":Ljava/util/List;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "captureIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "packageManager.queryInte\u2026ivities(captureIntent, 0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .local v2, "listCam":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 120
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    .line 121
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 122
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 120
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 126
    nop

    .line 127
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageIntentChooser;->cameraImgUri:Landroid/net/Uri;

    .line 128
    nop

    .line 126
    const/4 v8, 0x3

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/canhub/cropper/CropImageIntentChooser;->cameraImgUri:Landroid/net/Uri;

    check-cast v6, Landroid/os/Parcelable;

    const-string/jumbo v7, "output"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v0
.end method

.method private final getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 144
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 145
    .local v1, "intents":Ljava/util/List;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    :goto_0
    nop

    .line 147
    .local v2, "galleryIntent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, "packageManager.queryInte\u2026ivities(galleryIntent, 0)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .local v5, "listGallery":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 150
    .local v7, "res":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 151
    .local v8, "intent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v7    # "res":Landroid/content/pm/ResolveInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 157
    .local v6, "priorityIntents":Ljava/util/List;
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/canhub/cropper/CropImageIntentChooser;->priorityIntentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 158
    .local v9, "pkgName":Ljava/lang/String;
    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 230
    .local v11, "$i$f$firstOrNull":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroid/content/Intent;

    .local v14, "it":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 158
    .local v15, "$i$a$-firstOrNull-CropImageIntentChooser$getGalleryIntents$1":I
    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .end local v14    # "it":Landroid/content/Intent;
    .end local v15    # "$i$a$-firstOrNull-CropImageIntentChooser$getGalleryIntents$1":I
    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 231
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v13, 0x0

    .line 158
    .end local v10    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$firstOrNull":I
    :goto_4
    check-cast v13, Landroid/content/Intent;

    if-eqz v13, :cond_4

    move-object v3, v13

    .local v3, "it":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 159
    .local v10, "$i$a$-let-CropImageIntentChooser$getGalleryIntents$2":I
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v3    # "it":Landroid/content/Intent;
    .end local v10    # "$i$a$-let-CropImageIntentChooser$getGalleryIntents$2":I
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .end local v9    # "pkgName":Ljava/lang/String;
    goto :goto_2

    .line 163
    :cond_5
    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 164
    return-object v1
.end method

.method private final hasCameraPermissionInManifest(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "packageName":Ljava/lang/String;
    nop

    .line 190
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 189
    nop

    .line 191
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 193
    .local v3, "declaredPermissions":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 192
    nop

    .line 193
    move-object v4, v3

    .local v4, "$this$any$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 232
    .local v5, "$i$f$any":I
    array-length v6, v4

    move v7, v1

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v6, :cond_2

    aget-object v9, v4, v7

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 193
    .local v11, "$i$a$-any-CropImageIntentChooser$hasCameraPermissionInManifest$1":I
    if-eqz v10, :cond_0

    const-string v12, "android.permission.CAMERA"

    invoke-static {v10, v12, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v12, v8, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    move v10, v1

    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-any-CropImageIntentChooser$hasCameraPermissionInManifest$1":I
    :goto_1
    if-eqz v10, :cond_1

    move v4, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 233
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v4, v1

    .line 193
    .end local v4    # "$this$any$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$any":I
    :goto_2
    if-ne v4, v8, :cond_4

    move v1, v8

    goto :goto_3

    .line 192
    :cond_3
    nop

    :cond_4
    :goto_3
    return v1

    .line 194
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "declaredPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 201
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private static final intentChooser$lambda-1(Lcom/canhub/cropper/CropImageIntentChooser;Landroidx/activity/result/ActivityResult;)V
    .locals 3
    .param p0, "this$0"    # Lcom/canhub/cropper/CropImageIntentChooser;
    .param p1, "activityRes"    # Landroidx/activity/result/ActivityResult;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->cameraImgUri:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-let-CropImageIntentChooser$intentChooser$1$1":I
    iget-object v2, p0, Lcom/canhub/cropper/CropImageIntentChooser;->callback:Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    invoke-interface {v2, v0}, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;->onSuccess(Landroid/net/Uri;)V

    .line 58
    nop

    .line 56
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-CropImageIntentChooser$intentChooser$1$1":I
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->callback:Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    invoke-interface {v0}, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;->onCancelled()V

    .line 62
    :goto_0
    return-void
.end method

.method private final isExplicitCameraPermissionRequired(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    nop

    .line 176
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropImageIntentChooser;->hasCameraPermissionInManifest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0
.end method

.method public static synthetic showChooserIntent$default(Lcom/canhub/cropper/CropImageIntentChooser;ZZLandroid/net/Uri;ILjava/lang/Object;)V
    .locals 0

    .line 73
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 76
    const/4 p3, 0x0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageIntentChooser;->showChooserIntent(ZZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final setIntentChooserTitle(Ljava/lang/String;)Lcom/canhub/cropper/CropImageIntentChooser;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    move-object v0, p0

    check-cast v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .local v0, "$this$setIntentChooserTitle_u24lambda_u2d7":Lcom/canhub/cropper/CropImageIntentChooser;
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$a$-apply-CropImageIntentChooser$setIntentChooserTitle$1":I
    iput-object p1, v0, Lcom/canhub/cropper/CropImageIntentChooser;->title:Ljava/lang/String;

    .line 223
    nop

    .line 221
    .end local v0    # "$this$setIntentChooserTitle_u24lambda_u2d7":Lcom/canhub/cropper/CropImageIntentChooser;
    .end local v1    # "$i$a$-apply-CropImageIntentChooser$setIntentChooserTitle$1":I
    move-object v0, p0

    check-cast v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .line 223
    return-object v0
.end method

.method public final setupPriorityAppsList(Ljava/util/List;)Lcom/canhub/cropper/CropImageIntentChooser;
    .locals 2
    .param p1, "appsList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/canhub/cropper/CropImageIntentChooser;"
        }
    .end annotation

    const-string v0, "appsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    move-object v0, p0

    check-cast v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .local v0, "$this$setupPriorityAppsList_u24lambda_u2d6":Lcom/canhub/cropper/CropImageIntentChooser;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$a$-apply-CropImageIntentChooser$setupPriorityAppsList$1":I
    iput-object p1, v0, Lcom/canhub/cropper/CropImageIntentChooser;->priorityIntentList:Ljava/util/List;

    .line 214
    nop

    .line 212
    .end local v0    # "$this$setupPriorityAppsList_u24lambda_u2d6":Lcom/canhub/cropper/CropImageIntentChooser;
    .end local v1    # "$i$a$-apply-CropImageIntentChooser$setupPriorityAppsList$1":I
    move-object v0, p0

    check-cast v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .line 214
    return-object v0
.end method

.method public final showChooserIntent(ZZLandroid/net/Uri;)V
    .locals 9
    .param p1, "includeCamera"    # Z
    .param p2, "includeGallery"    # Z
    .param p3, "cameraImgUri"    # Landroid/net/Uri;

    .line 78
    iput-object p3, p0, Lcom/canhub/cropper/CropImageIntentChooser;->cameraImgUri:Landroid/net/Uri;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 80
    .local v0, "allIntents":Ljava/util/List;
    iget-object v1, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/CropImageIntentChooser;->isExplicitCameraPermissionRequired(Landroid/content/Context;)Z

    move-result v2

    const-string/jumbo v3, "packageManager"

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/canhub/cropper/CropImageIntentChooser;->activity:Landroidx/activity/ComponentActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/canhub/cropper/CropImageIntentChooser;->getCameraIntents(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    const-string v2, "android.intent.action.PICK"

    if-eqz p2, :cond_2

    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {p0, v1, v3}, Lcom/canhub/cropper/CropImageIntentChooser;->getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "galleryIntents":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-direct {p0, v1, v2}, Lcom/canhub/cropper/CropImageIntentChooser;->getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 91
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    .end local v3    # "galleryIntents":Ljava/util/List;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    .line 94
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHOOSER"

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v4, v3

    .local v4, "$this$showChooserIntent_u24lambda_u2d2":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 95
    .local v5, "$i$a$-apply-CropImageIntentChooser$showChooserIntent$target$1":I
    if-eqz p2, :cond_4

    .line 96
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v2, "image/*"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_4
    nop

    .line 94
    .end local v4    # "$this$showChooserIntent_u24lambda_u2d2":Landroid/content/Intent;
    .end local v5    # "$i$a$-apply-CropImageIntentChooser$showChooserIntent$target$1":I
    move-object v2, v3

    .line 93
    :goto_0
    nop

    .line 102
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/canhub/cropper/CropImageIntentChooser;->title:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 104
    .local v3, "chooserIntent":Landroid/content/Intent;
    nop

    .line 105
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 226
    .local v5, "$i$f$toTypedArray":I
    nop

    .line 227
    move-object v6, v4

    .line 229
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    new-array v7, v7, [Landroid/os/Parcelable;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v7, [Landroid/os/Parcelable;

    .line 104
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    iget-object v4, p0, Lcom/canhub/cropper/CropImageIntentChooser;->intentChooser:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v4, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
