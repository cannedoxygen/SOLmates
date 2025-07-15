.class public final Lcom/swmansion/rnscreens/SearchViewFormatter;
.super Ljava/lang/Object;
.source "SearchViewFormatter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u001fJ\u0015\u0010 \u001a\u00020\u001d2\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0015\u0010\'\u001a\u00020\u001d2\u0008\u0010(\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u001fJ\u0015\u0010)\u001a\u00020\u001d2\u0008\u0010*\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u001fR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\n \u000c*\u0004\u0018\u00010\u00160\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u0004\u00a8\u0006+"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/SearchViewFormatter;",
        "",
        "searchView",
        "Landroidx/appcompat/widget/SearchView;",
        "(Landroidx/appcompat/widget/SearchView;)V",
        "defaultTextColor",
        "",
        "Ljava/lang/Integer;",
        "defaultTintBackground",
        "Landroid/graphics/drawable/Drawable;",
        "searchCloseIcon",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "getSearchCloseIcon",
        "()Landroid/widget/ImageView;",
        "searchEditText",
        "Landroid/widget/EditText;",
        "getSearchEditText",
        "()Landroid/widget/EditText;",
        "searchIcon",
        "getSearchIcon",
        "searchTextPlate",
        "Landroid/view/View;",
        "getSearchTextPlate",
        "()Landroid/view/View;",
        "getSearchView",
        "()Landroidx/appcompat/widget/SearchView;",
        "setSearchView",
        "setHeaderIconColor",
        "",
        "headerIconColor",
        "(Ljava/lang/Integer;)V",
        "setHintTextColor",
        "hintTextColor",
        "setPlaceholder",
        "placeholder",
        "",
        "shouldShowHintSearchIcon",
        "",
        "setTextColor",
        "textColor",
        "setTintColor",
        "tintColor",
        "react-native-screens_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private defaultTextColor:Ljava/lang/Integer;

.field private defaultTintBackground:Landroid/graphics/drawable/Drawable;

.field private searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 1
    .param p1, "searchView"    # Landroidx/appcompat/widget/SearchView;

    const-string v0, "searchView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 10
    return-void
.end method

.method private final getSearchCloseIcon()Landroid/widget/ImageView;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSearchEditText()Landroid/widget/EditText;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getSearchIcon()Landroid/widget/ImageView;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSearchTextPlate()Landroid/view/View;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_plate:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getSearchView()Landroidx/appcompat/widget/SearchView;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object v0
.end method

.method public final setHeaderIconColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "headerIconColor"    # Ljava/lang/Integer;

    .line 50
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 51
    .local v1, "$i$a$-let-SearchViewFormatter$setHeaderIconColor$1":I
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 52
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchCloseIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    nop

    .line 50
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SearchViewFormatter$setHeaderIconColor$1":I
    nop

    .line 54
    :cond_0
    return-void
.end method

.method public final setHintTextColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "hintTextColor"    # Ljava/lang/Integer;

    .line 57
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-let-SearchViewFormatter$setHintTextColor$1":I
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 57
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SearchViewFormatter$setHintTextColor$1":I
    :cond_0
    nop

    .line 60
    return-void
.end method

.method public final setPlaceholder(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "placeholder"    # Ljava/lang/String;
    .param p2, "shouldShowHintSearchIcon"    # Z

    const-string v0, "placeholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void
.end method

.method public final setSearchView(Landroidx/appcompat/widget/SearchView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/appcompat/widget/SearchView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->searchView:Landroidx/appcompat/widget/SearchView;

    return-void
.end method

.method public final setTextColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "textColor"    # Ljava/lang/Integer;

    .line 26
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTextColor:Ljava/lang/Integer;

    .line 27
    .local v0, "currentDefaultTextColor":Ljava/lang/Integer;
    if-eqz p1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTextColor:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTextColor:Ljava/lang/Integer;

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 35
    :cond_3
    :goto_1
    return-void
.end method

.method public final setTintColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "tintColor"    # Ljava/lang/Integer;

    .line 38
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTintBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    .local v0, "currentDefaultTintColor":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTintBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchTextPlate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/rnscreens/SearchViewFormatter;->defaultTintBackground:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchTextPlate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 44
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchViewFormatter;->getSearchTextPlate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method
