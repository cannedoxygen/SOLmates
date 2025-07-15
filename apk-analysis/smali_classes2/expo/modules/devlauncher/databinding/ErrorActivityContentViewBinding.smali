.class public final Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;
.super Ljava/lang/Object;
.source "ErrorActivityContentViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final errorViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final rootView:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method private constructor <init>(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "errorViewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->rootView:Landroidx/viewpager/widget/ViewPager;

    .line 25
    iput-object p2, p0, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->errorViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 51
    if-eqz p0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 57
    .local v0, "errorViewPager":Landroidx/viewpager/widget/ViewPager;
    new-instance v1, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;

    move-object v2, p0

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v0}, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;-><init>(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/ViewPager;)V

    return-object v1

    .line 52
    .end local v0    # "errorViewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 42
    sget v0, Lexpo/modules/devlauncher/R$layout;->error_activity_content_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {v0}, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->bind(Landroid/view/View;)Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->getRoot()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/devlauncher/databinding/ErrorActivityContentViewBinding;->rootView:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method
