.class public Lcom/canhub/cropper/CropImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CropImageActivity.kt"

# interfaces
.implements Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageActivity$Source;,
        Lcom/canhub/cropper/CropImageActivity$Companion;,
        Lcom/canhub/cropper/CropImageActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,375:1\n29#2:376\n1#3:377\n*S KotlinDebug\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n*L\n77#1:376\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 C2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002CDB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J*\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\nH\u0002J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0012\u0010\u001f\u001a\u00020\u00142\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020\u00142\u0008\u0010.\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020!H\u0014J(\u00101\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH\u0016J\u0008\u00102\u001a\u00020\u0014H\u0016J\u0008\u00103\u001a\u00020\u0014H\u0016J\u0008\u00104\u001a\u00020\u0014H\u0002J\u0010\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u001cH\u0016J\u0010\u0010:\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J*\u0010;\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010<\u001a\u00020\u0014H\u0016J\u001c\u0010=\u001a\u00020\u00142\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00140>H\u0016J\u0008\u0010?\u001a\u00020\u0014H\u0002J \u0010@\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%2\u0006\u0010A\u001a\u00020\u001c2\u0006\u0010B\u001a\u00020\u001cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\n0\n0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "()V",
        "binding",
        "Lcom/canhub/cropper/databinding/CropImageActivityBinding;",
        "cropImageOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "cropImageUri",
        "Landroid/net/Uri;",
        "cropImageView",
        "Lcom/canhub/cropper/CropImageView;",
        "latestTmpUri",
        "pickImageGallery",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "takePicture",
        "cropImage",
        "",
        "getResultIntent",
        "Landroid/content/Intent;",
        "uri",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "sampleSize",
        "",
        "getTmpFileUri",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onCropImageComplete",
        "view",
        "result",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPickImageResult",
        "resultUri",
        "onSaveInstanceState",
        "outState",
        "onSetImageUriComplete",
        "onStart",
        "onStop",
        "openCamera",
        "openSource",
        "source",
        "Lcom/canhub/cropper/CropImageActivity$Source;",
        "rotateImage",
        "degrees",
        "setCropImageView",
        "setResult",
        "setResultCancel",
        "showImageSourceDialog",
        "Lkotlin/Function1;",
        "showIntentChooser",
        "updateMenuItemIconColor",
        "itemId",
        "color",
        "Companion",
        "Source",
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
.field public static final BUNDLE_KEY_TMP_URI:Ljava/lang/String; = "bundle_key_tmp_uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/canhub/cropper/CropImageActivity$Companion;


# instance fields
.field private binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

.field private cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

.field private cropImageUri:Landroid/net/Uri;

.field private cropImageView:Lcom/canhub/cropper/CropImageView;

.field private latestTmpUri:Landroid/net/Uri;

.field private final pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final takePicture:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dZ9aZcd8gl293i6KJRH2oLaqscQ(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->takePicture$lambda-1(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hT4tPzgod77dDfWakYWPdh5deVc(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery$lambda-0(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qlhI-wj3RUQ0ap2OEzuouDKdkIU(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/canhub/cropper/CropImageActivity;->showImageSourceDialog$lambda-10(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageActivity;->Companion:Lcom/canhub/cropper/CropImageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string/jumbo v1, "registerForActivityResul\u2026mageResult(uri)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    .line 47
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string/jumbo v1, "registerForActivityResul\u2026ckImageResult(null)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->takePicture:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    return-void
.end method

.method public static final synthetic access$openSource(Lcom/canhub/cropper/CropImageActivity;Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 0
    .param p0, "$this"    # Lcom/canhub/cropper/CropImageActivity;
    .param p1, "source"    # Lcom/canhub/cropper/CropImageActivity$Source;

    .line 24
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V

    return-void
.end method

.method private final getTmpFileUri()Landroid/net/Uri;
    .locals 3

    .line 138
    const-string v0, ".png"

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tmp_image_file"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$getTmpFileUri_u24lambda_u2d9":Ljava/io/File;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$a$-apply-CropImageActivity$getTmpFileUri$tmpFile$1":I
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 141
    nop

    .line 138
    .end local v1    # "$this$getTmpFileUri_u24lambda_u2d9":Ljava/io/File;
    .end local v2    # "$i$a$-apply-CropImageActivity$getTmpFileUri$tmpFile$1":I
    nop

    .line 143
    .local v0, "tmpFile":Ljava/io/File;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "tmpFile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private final openCamera()V
    .locals 3

    .line 131
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->getTmpFileUri()Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$a$-let-CropImageActivity$openCamera$1":I
    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    .line 133
    iget-object v2, p0, Lcom/canhub/cropper/CropImageActivity;->takePicture:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 134
    nop

    .line 131
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-CropImageActivity$openCamera$1":I
    nop

    .line 135
    return-void
.end method

.method private final openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 2
    .param p1, "source"    # Lcom/canhub/cropper/CropImageActivity$Source;

    .line 124
    sget-object v0, Lcom/canhub/cropper/CropImageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageActivity$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->openCamera()V

    .line 128
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final pickImageGallery$lambda-0(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 1
    .param p0, "this$0"    # Lcom/canhub/cropper/CropImageActivity;
    .param p1, "uri"    # Landroid/net/Uri;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    .line 46
    return-void
.end method

.method private static final showImageSourceDialog$lambda-10(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "$openSource"    # Lkotlin/jvm/functions/Function1;
    .param p2, "position"    # I

    const-string p1, "$openSource"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    if-nez p2, :cond_0

    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->CAMERA:Lcom/canhub/cropper/CropImageActivity$Source;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->GALLERY:Lcom/canhub/cropper/CropImageActivity$Source;

    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showIntentChooser()V
    .locals 8

    .line 91
    new-instance v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .line 92
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 93
    new-instance v2, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;

    invoke-direct {v2, p0}, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    check-cast v2, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    .line 91
    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropImageIntentChooser;-><init>(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V

    .line 103
    .local v0, "ciIntentChooser":Lcom/canhub/cropper/CropImageIntentChooser;
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "cropImageOptions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .local v1, "options":Lcom/canhub/cropper/CropImageOptions;
    :cond_0
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$a$-let-CropImageActivity$showIntentChooser$1":I
    nop

    .line 104
    iget-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    .line 105
    if-eqz v4, :cond_2

    .line 104
    nop

    .line 105
    move-object v5, v4

    .line 377
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-takeIf-CropImageActivity$showIntentChooser$1$1":I
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "$i$a$-takeIf-CropImageActivity$showIntentChooser$1$1":I
    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 106
    :goto_0
    if-eqz v4, :cond_2

    .line 105
    nop

    .line 106
    nop

    .local v4, "icTitle":Ljava/lang/String;
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$a$-let-CropImageActivity$showIntentChooser$1$2":I
    invoke-virtual {v0, v4}, Lcom/canhub/cropper/CropImageIntentChooser;->setIntentChooserTitle(Ljava/lang/String;)Lcom/canhub/cropper/CropImageIntentChooser;

    .line 106
    .end local v4    # "icTitle":Ljava/lang/String;
    .end local v5    # "$i$a$-let-CropImageActivity$showIntentChooser$1$2":I
    goto :goto_1

    .line 105
    :cond_2
    nop

    .line 110
    :goto_1
    nop

    .line 109
    iget-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    .line 110
    if-eqz v4, :cond_4

    .line 109
    nop

    .line 110
    move-object v5, v4

    .line 377
    .local v5, "appPriorityList":Ljava/util/List;
    const/4 v6, 0x0

    .line 110
    .local v6, "$i$a$-takeIf-CropImageActivity$showIntentChooser$1$3":I
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    .end local v5    # "appPriorityList":Ljava/util/List;
    .end local v6    # "$i$a$-takeIf-CropImageActivity$showIntentChooser$1$3":I
    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 111
    :goto_2
    if-eqz v4, :cond_4

    .line 110
    nop

    .line 111
    nop

    .local v4, "appsList":Ljava/util/List;
    const/4 v5, 0x0

    .line 112
    .local v5, "$i$a$-let-CropImageActivity$showIntentChooser$1$4":I
    invoke-virtual {v0, v4}, Lcom/canhub/cropper/CropImageIntentChooser;->setupPriorityAppsList(Ljava/util/List;)Lcom/canhub/cropper/CropImageIntentChooser;

    .line 111
    .end local v4    # "appsList":Ljava/util/List;
    .end local v5    # "$i$a$-let-CropImageActivity$showIntentChooser$1$4":I
    goto :goto_3

    .line 110
    :cond_4
    nop

    .line 114
    :goto_3
    iget-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->getTmpFileUri()Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, "cameraUri":Landroid/net/Uri;
    :cond_5
    nop

    .line 116
    iget-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    .line 117
    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    .line 118
    nop

    .line 115
    invoke-virtual {v0, v4, v5, v2}, Lcom/canhub/cropper/CropImageIntentChooser;->showChooserIntent(ZZLandroid/net/Uri;)V

    .line 120
    nop

    .line 103
    .end local v1    # "options":Lcom/canhub/cropper/CropImageOptions;
    .end local v2    # "cameraUri":Landroid/net/Uri;
    .end local v3    # "$i$a$-let-CropImageActivity$showIntentChooser$1":I
    nop

    .line 121
    return-void
.end method

.method private static final takePicture$lambda-1(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "this$0"    # Lcom/canhub/cropper/CropImageActivity;
    .param p1, "it"    # Ljava/lang/Boolean;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    .line 49
    return-void
.end method


# virtual methods
.method public cropImage()V
    .locals 10

    .line 280
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v3, :cond_8

    .line 282
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v4, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 283
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget v5, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    .line 284
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget v6, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    .line 285
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget v7, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    .line 286
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v8, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    .line 287
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v0

    :goto_0
    iget-object v9, v2, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 281
    invoke-virtual/range {v3 .. v9}, Lcom/canhub/cropper/CropImageView;->croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V

    .line 289
    :cond_8
    :goto_1
    return-void
.end method

.method public getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "sampleSize"    # I

    .line 328
    new-instance v9, Lcom/canhub/cropper/CropImage$ActivityResult;

    .line 329
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 330
    :goto_0
    nop

    .line 331
    nop

    .line 332
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 334
    :goto_2
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move v6, v0

    .line 335
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    .line 336
    :goto_4
    nop

    .line 328
    move-object v0, v9

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 338
    .local v0, "result":Lcom/canhub/cropper/CropImage$ActivityResult;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 340
    const-string v2, "CROP_IMAGE_EXTRA_RESULT"

    move-object v3, v0

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    return-object v1
.end method

.method public onBackPressed()V
    .locals 0

    .line 244
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 245
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    .line 246
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    .line 55
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->getRoot()Lcom/canhub/cropper/CropImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const-string v1, "binding.cropImageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setCropImageView(Lcom/canhub/cropper/CropImageView;)V

    .line 57
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    .line 59
    nop

    .line 60
    if-eqz v0, :cond_3

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/canhub/cropper/CropImageOptions;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v1}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    .line 59
    :cond_4
    iput-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    .line 62
    const-string v1, "cropImageOptions"

    if-nez p1, :cond_10

    .line 63
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 64
    :cond_6
    :goto_2
    nop

    .line 65
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-boolean v3, v3, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->showIntentChooser()V

    goto/16 :goto_4

    .line 66
    :cond_8
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    iget-boolean v3, v3, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz v3, :cond_b

    .line 67
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    iget-boolean v3, v3, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v3, :cond_b

    .line 68
    new-instance v3, Lcom/canhub/cropper/CropImageActivity$onCreate$1;

    invoke-direct {v3, p0}, Lcom/canhub/cropper/CropImageActivity$onCreate$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v3}, Lcom/canhub/cropper/CropImageActivity;->showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    .line 69
    :cond_b
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_c
    iget-boolean v3, v3, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz v3, :cond_d

    .line 70
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_4

    .line 71
    :cond_d
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_e
    iget-boolean v3, v3, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v3, :cond_f

    .line 72
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->openCamera()V

    goto :goto_4

    .line 73
    :cond_f
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    goto :goto_4

    .line 77
    :cond_10
    const-string v3, "bundle_key_tmp_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .local v3, "$this$toUri$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 376
    .local v4, "$i$f$toUri":I
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "parse(this)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v3    # "$this$toUri$iv":Ljava/lang/String;
    .end local v4    # "$i$f$toUri":I
    goto :goto_3

    .line 77
    :cond_11
    move-object v5, v2

    :goto_3
    iput-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    .line 80
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_17

    .local v3, "it":Landroidx/appcompat/app/ActionBar;
    const/4 v4, 0x0

    .line 81
    .local v4, "$i$a$-let-CropImageActivity$onCreate$2":I
    nop

    .line 82
    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_13
    iget-object v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_14

    move v5, v6

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_16

    .line 83
    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    move-object v2, v5

    :goto_6
    iget-object v1, v2, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    goto :goto_7

    .line 85
    :cond_16
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/canhub/cropper/R$string;->crop_image_activity_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 81
    :goto_7
    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v3, v6}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    nop

    .line 80
    .end local v3    # "it":Landroidx/appcompat/app/ActionBar;
    .end local v4    # "$i$a$-let-CropImageActivity$onCreate$2":I
    nop

    .line 88
    :cond_17
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const/4 v1, 0x0

    const-string v2, "cropImageOptions"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v4, Lcom/canhub/cropper/R$menu;->crop_image_menu:I

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    if-nez v0, :cond_3

    .line 185
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 186
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v0, :cond_5

    .line 188
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    if-nez v0, :cond_7

    sget v0, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 194
    sget v0, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_9
    iget-object v4, v4, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 194
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 197
    :cond_a
    const/4 v0, 0x0

    .line 198
    .local v0, "cropIcon":Landroid/graphics/drawable/Drawable;
    nop

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_b
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    if-eqz v4, :cond_d

    .line 200
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_c
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    .line 201
    sget v4, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Failed to read menu crop drawable"

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    const-string v7, "AIC"

    invoke-static {v7, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_1
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_e
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    if-eqz v4, :cond_13

    .line 207
    nop

    .line 208
    nop

    .line 209
    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    .line 210
    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_f
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 207
    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 212
    nop

    .line 213
    nop

    .line 214
    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    .line 215
    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_10
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 212
    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 217
    sget v4, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_11
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 219
    if-eqz v0, :cond_13

    .line 220
    nop

    .line 221
    nop

    .line 222
    sget v4, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    .line 223
    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move-object v1, v5

    :goto_2
    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 220
    invoke-virtual {p0, p1, v4, v1}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 227
    :cond_13
    return v3
.end method

.method public onCropImageComplete(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V
    .locals 3
    .param p1, "view"    # Lcom/canhub/cropper/CropImageView;
    .param p2, "result"    # Lcom/canhub/cropper/CropImageView$CropResult;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getUriContent()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getSampleSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    .line 274
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 232
    sget v1, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_2

    .line 233
    :cond_0
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    const/4 v2, 0x0

    const-string v3, "cropImageOptions"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget v0, v2, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    .line 234
    :cond_2
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iget v0, v2, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    .line 235
    :cond_4
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_horizontally:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->flipImageHorizontally()V

    goto :goto_2

    .line 236
    :cond_5
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_vertically:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->flipImageVertically()V

    goto :goto_2

    .line 237
    :cond_6
    const v1, 0x102002c

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    .line 240
    :cond_7
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_8
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPickImageResult(Landroid/net/Uri;)V
    .locals 2
    .param p1, "resultUri"    # Landroid/net/Uri;

    .line 249
    nop

    .line 250
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    goto :goto_0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    .line 253
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle_key_tmp_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onSetImageUriComplete(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "view"    # Lcom/canhub/cropper/CropImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "error"    # Ljava/lang/Exception;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    if-nez p3, :cond_9

    .line 260
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string v2, "cropImageOptions"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_2
    iget-object v3, v3, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/canhub/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    .line 263
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_4
    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    if-lez v1, :cond_7

    .line 264
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_6
    iget v3, v3, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {v1, v3}, Lcom/canhub/cropper/CropImageView;->setRotatedDegrees(I)V

    .line 266
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v0, v1

    :goto_2
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    if-eqz v0, :cond_a

    .line 267
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_3

    .line 269
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    .line 270
    :cond_a
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 165
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    .line 167
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 171
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    .line 173
    :cond_1
    return-void
.end method

.method public rotateImage(I)V
    .locals 1
    .param p1, "degrees"    # I

    .line 302
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropImageView;->rotateImage(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public setCropImageView(Lcom/canhub/cropper/CropImageView;)V
    .locals 1
    .param p1, "cropImageView"    # Lcom/canhub/cropper/CropImageView;

    const-string v0, "cropImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    .line 296
    return-void
.end method

.method public setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "sampleSize"    # I

    .line 309
    nop

    .line 310
    if-eqz p2, :cond_0

    .line 377
    move-object v0, p2

    .local v0, "it":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 310
    .local v1, "$i$a$-let-CropImageActivity$setResult$1":I
    nop

    .end local v0    # "it":Ljava/lang/Exception;
    .end local v1    # "$i$a$-let-CropImageActivity$setResult$1":I
    const/16 v0, 0xcc

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 311
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object v1

    .line 309
    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    .line 314
    return-void
.end method

.method public setResultCancel()V
    .locals 1

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setResult(I)V

    .line 321
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    .line 322
    return-void
.end method

.method public showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "openSource"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/canhub/cropper/CropImageActivity$Source;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "openSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    sget v2, Lcom/canhub/cropper/R$string;->pick_image_chooser_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget v3, Lcom/canhub/cropper/R$string;->pick_image_camera:I

    invoke-virtual {p0, v3}, Lcom/canhub/cropper/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 157
    sget v1, Lcom/canhub/cropper/R$string;->pick_image_gallery:I

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 156
    check-cast v2, [Ljava/lang/CharSequence;

    .line 154
    new-instance v1, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 161
    return-void
.end method

.method public updateMenuItemIconColor(Landroid/view/Menu;II)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "color"    # I

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 349
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    .local v1, "menuItemIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 352
    nop

    .line 353
    move-object v2, v1

    .local v2, "$this$updateMenuItemIconColor_u24lambda_u2d12":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 354
    .local v3, "$i$a$-apply-CropImageActivity$updateMenuItemIconColor$1":I
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 355
    nop

    .line 356
    nop

    .line 357
    sget-object v4, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 355
    invoke-static {p3, v4}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 359
    nop

    .line 353
    .end local v2    # "$this$updateMenuItemIconColor_u24lambda_u2d12":Landroid/graphics/drawable/Drawable;
    .end local v3    # "$i$a$-apply-CropImageActivity$updateMenuItemIconColor$1":I
    nop

    .line 360
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to update menu item color"

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "AIC"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v1    # "menuItemIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
