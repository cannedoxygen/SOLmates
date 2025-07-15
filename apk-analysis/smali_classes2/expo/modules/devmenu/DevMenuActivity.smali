.class public final Lexpo/modules/devmenu/DevMenuActivity;
.super Lcom/facebook/react/ReactActivity;
.source "DevMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devmenu/DevMenuActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuActivity.kt\nexpo/modules/devmenu/DevMenuActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,175:1\n65#2,4:176\n37#2:180\n53#2:181\n72#2:182\n*S KotlinDebug\n*F\n+ 1 DevMenuActivity.kt\nexpo/modules/devmenu/DevMenuActivity\n*L\n147#1:176,4\n147#1:180\n147#1:181\n147#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0007H\u0014J\u0008\u0010\u0012\u001a\u00020\u0007H\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "()V",
        "isEmulator",
        "",
        "()Z",
        "closeBottomSheet",
        "",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "getMainComponentName",
        "",
        "onKeyUp",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onPause",
        "onStart",
        "setContentView",
        "view",
        "Landroid/view/View;",
        "Companion",
        "expo-dev-menu_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

.field private static appWasLoaded:Z

.field private static reactSurface:Lcom/facebook/react/interfaces/fabric/ReactSurface;

.field private static rootView:Lcom/facebook/react/ReactRootView;


# direct methods
.method public static synthetic $r8$lambda$BCOlVFK86kZrWcaOclim2nWD1wQ(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devmenu/DevMenuActivity;->setContentView$lambda$2$lambda$1(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devmenu/DevMenuActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devmenu/DevMenuActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppWasLoaded$cp()Z
    .locals 1

    .line 31
    sget-boolean v0, Lexpo/modules/devmenu/DevMenuActivity;->appWasLoaded:Z

    return v0
.end method

.method public static final synthetic access$getReactSurface$cp()Lcom/facebook/react/interfaces/fabric/ReactSurface;
    .locals 1

    .line 31
    sget-object v0, Lexpo/modules/devmenu/DevMenuActivity;->reactSurface:Lcom/facebook/react/interfaces/fabric/ReactSurface;

    return-object v0
.end method

.method public static final synthetic access$getRootView$cp()Lcom/facebook/react/ReactRootView;
    .locals 1

    .line 31
    sget-object v0, Lexpo/modules/devmenu/DevMenuActivity;->rootView:Lcom/facebook/react/ReactRootView;

    return-object v0
.end method

.method public static final synthetic access$isEmulator(Lexpo/modules/devmenu/DevMenuActivity;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuActivity;

    .line 31
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuActivity;->isEmulator()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setAppWasLoaded$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 31
    sput-boolean p0, Lexpo/modules/devmenu/DevMenuActivity;->appWasLoaded:Z

    return-void
.end method

.method public static final synthetic access$setReactSurface$cp(Lcom/facebook/react/interfaces/fabric/ReactSurface;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/facebook/react/interfaces/fabric/ReactSurface;

    .line 31
    sput-object p0, Lexpo/modules/devmenu/DevMenuActivity;->reactSurface:Lcom/facebook/react/interfaces/fabric/ReactSurface;

    return-void
.end method

.method public static final synthetic access$setRootView$cp(Lcom/facebook/react/ReactRootView;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/facebook/react/ReactRootView;

    .line 31
    sput-object p0, Lexpo/modules/devmenu/DevMenuActivity;->rootView:Lcom/facebook/react/ReactRootView;

    return-void
.end method

.method private final isEmulator()Z
    .locals 6

    .line 35
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "FINGERPRINT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "vbox"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "generic"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static final setContentView$lambda$2$lambda$1(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 1
    .param p0, "$this_apply"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public final closeBottomSheet()V
    .locals 3

    .line 158
    sget v0, Lexpo/modules/devmenu/R$id;->bottom_sheet:I

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/DevMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 159
    .local v0, "bottomSheet":Landroid/widget/FrameLayout;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 160
    return-void
.end method

.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v1

    new-instance v2, Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;

    invoke-direct {v2, p0, v0, v1}, Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;-><init>(Lexpo/modules/devmenu/DevMenuActivity;Ljava/lang/String;Z)V

    check-cast v2, Lcom/facebook/react/ReactActivityDelegate;

    return-object v2
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "main"

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/react/ReactActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->closeMenu()V

    .line 106
    const/4 v0, 0x1

    .line 104
    :goto_1
    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onPause()V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lexpo/modules/devmenu/DevMenuActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onStart()V

    .line 119
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegate$expo_dev_menu_debug()Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 120
    .local v0, "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_0
    sget-object v1, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v1}, Lexpo/modules/devmenu/DevMenuManager;->getDelegate$expo_dev_menu_debug()Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->supportsDevelopment()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 122
    .local v1, "supportsDevelopment":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 124
    .local v2, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    goto :goto_1

    .line 123
    .end local v2    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Required value was null."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_3
    :goto_1
    return-void

    .line 119
    .end local v0    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    .end local v1    # "supportsDevelopment":Z
    :cond_4
    :goto_2
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 129
    sget v0, Lexpo/modules/devmenu/R$layout;->bottom_sheet:I

    invoke-super {p0, v0}, Lcom/facebook/react/ReactActivity;->setContentView(I)V

    .line 131
    sget v0, Lexpo/modules/devmenu/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/DevMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 132
    .local v0, "mainLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    sget v1, Lexpo/modules/devmenu/R$id;->bottom_sheet:I

    invoke-virtual {p0, v1}, Lexpo/modules/devmenu/DevMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 133
    .local v1, "bottomSheet":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    .local v2, "$this$setContentView_u24lambda_u242":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$a$-apply-DevMenuActivity$setContentView$1":I
    new-instance v4, Lexpo/modules/devmenu/DevMenuActivity$setContentView$1$1;

    invoke-direct {v4}, Lexpo/modules/devmenu/DevMenuActivity$setContentView$1$1;-><init>()V

    check-cast v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 147
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    .local v4, "$this$doOnLayout$iv":Landroid/view/View;
    const/4 v5, 0x0

    .line 176
    .local v5, "$i$f$doOnLayout":I
    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-nez v6, :cond_3

    .line 177
    move-object v6, v4

    .local v6, "it":Landroid/view/View;
    const/4 v7, 0x0

    .line 148
    .local v7, "$i$a$-doOnLayout-DevMenuActivity$setContentView$1$2":I
    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 149
    nop

    .line 177
    .end local v6    # "it":Landroid/view/View;
    .end local v7    # "$i$a$-doOnLayout-DevMenuActivity$setContentView$1$2":I
    goto :goto_1

    .line 179
    :cond_3
    move-object v6, v4

    .local v6, "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    const/4 v7, 0x0

    .line 180
    .local v7, "$i$f$doOnNextLayout":I
    new-instance v8, Lexpo/modules/devmenu/DevMenuActivity$setContentView$lambda$2$$inlined$doOnLayout$1;

    invoke-direct {v8, v2}, Lexpo/modules/devmenu/DevMenuActivity$setContentView$lambda$2$$inlined$doOnLayout$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    check-cast v8, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 181
    nop

    .line 182
    .end local v6    # "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    .end local v7    # "$i$f$doOnNextLayout":I
    :goto_1
    nop

    .line 151
    .end local v4    # "$this$doOnLayout$iv":Landroid/view/View;
    .end local v5    # "$i$f$doOnLayout":I
    new-instance v4, Lexpo/modules/devmenu/DevMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lexpo/modules/devmenu/DevMenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    nop

    .line 136
    .end local v2    # "$this$setContentView_u24lambda_u242":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v3    # "$i$a$-apply-DevMenuActivity$setContentView$1":I
    nop

    .line 155
    return-void
.end method
