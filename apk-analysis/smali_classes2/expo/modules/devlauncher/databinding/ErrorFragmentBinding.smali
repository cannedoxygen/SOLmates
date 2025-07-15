.class public final Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;
.super Ljava/lang/Object;
.source "ErrorFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final errorDetails:Landroid/widget/TextView;

.field public final errorFooter:Landroid/widget/LinearLayout;

.field public final errorMainContent:Landroid/widget/LinearLayout;

.field public final errorStack:Landroid/widget/ListView;

.field public final homeButton:Landroid/widget/Button;

.field public final reloadButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "errorDetails"    # Landroid/widget/TextView;
    .param p3, "errorFooter"    # Landroid/widget/LinearLayout;
    .param p4, "errorMainContent"    # Landroid/widget/LinearLayout;
    .param p5, "errorStack"    # Landroid/widget/ListView;
    .param p6, "homeButton"    # Landroid/widget/Button;
    .param p7, "reloadButton"    # Landroid/widget/Button;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorDetails:Landroid/widget/TextView;

    .line 48
    iput-object p3, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorFooter:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorMainContent:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorStack:Landroid/widget/ListView;

    .line 51
    iput-object p6, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->homeButton:Landroid/widget/Button;

    .line 52
    iput-object p7, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->reloadButton:Landroid/widget/Button;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    move-object/from16 v0, p0

    sget v1, Lexpo/modules/devlauncher/R$id;->errorDetails:I

    .line 83
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, "errorDetails":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 88
    sget v1, Lexpo/modules/devlauncher/R$id;->error_footer:I

    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/LinearLayout;

    .line 90
    .local v11, "errorFooter":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_4

    .line 94
    sget v1, Lexpo/modules/devlauncher/R$id;->error_main_content:I

    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/LinearLayout;

    .line 96
    .local v12, "errorMainContent":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_3

    .line 100
    sget v1, Lexpo/modules/devlauncher/R$id;->error_stack:I

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ListView;

    .line 102
    .local v13, "errorStack":Landroid/widget/ListView;
    if-eqz v13, :cond_2

    .line 106
    sget v1, Lexpo/modules/devlauncher/R$id;->homeButton:I

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 108
    .local v14, "homeButton":Landroid/widget/Button;
    if-eqz v14, :cond_1

    .line 112
    sget v1, Lexpo/modules/devlauncher/R$id;->reloadButton:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Button;

    .line 114
    .local v15, "reloadButton":Landroid/widget/Button;
    if-eqz v15, :cond_0

    .line 118
    new-instance v16, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v16

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v15    # "reloadButton":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 103
    .end local v14    # "homeButton":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 97
    .end local v13    # "errorStack":Landroid/widget/ListView;
    :cond_3
    goto :goto_0

    .line 91
    .end local v12    # "errorMainContent":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 85
    .end local v11    # "errorFooter":Landroid/widget/LinearLayout;
    :cond_5
    nop

    .line 121
    .end local v2    # "errorDetails":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    sget v0, Lexpo/modules/devlauncher/R$layout;->error_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->bind(Landroid/view/View;)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
