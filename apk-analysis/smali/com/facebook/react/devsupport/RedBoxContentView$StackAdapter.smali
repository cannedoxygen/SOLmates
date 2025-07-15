.class Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;
.super Landroid/widget/BaseAdapter;
.source "RedBoxContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x2

.field private static final VIEW_TYPE_STACKFRAME:I = 0x1

.field private static final VIEW_TYPE_TITLE:I


# instance fields
.field private final mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 122
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mTitle:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 125
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 146
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 161
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 168
    if-eqz p2, :cond_0

    .line 169
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 170
    :cond_0
    nop

    .line 171
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$layout;->redbox_item_title:I

    .line 172
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    nop

    .line 174
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "<unknown title>"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mTitle:Ljava/lang/String;

    .line 175
    .local v1, "titleSafe":Ljava/lang/String;
    :goto_1
    const-string v2, "\\x1b\\[[0-9;]*m"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-object v0

    .line 178
    .end local v0    # "title":Landroid/widget/TextView;
    .end local v1    # "titleSafe":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 179
    nop

    .line 180
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$layout;->redbox_item_frame:I

    .line 181
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;-><init>(Landroid/view/View;Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder-IA;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter;->mStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 185
    .local v0, "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;

    .line 186
    .local v1, "holder":Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;->-$$Nest$fgetmMethodView(Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;->-$$Nest$fgetmFileView(Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/react/devsupport/StackTraceHelper;->formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;->-$$Nest$fgetmMethodView(Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, -0x555556

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;->-$$Nest$fgetmFileView(Lcom/facebook/react/devsupport/RedBoxContentView$StackAdapter$FrameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, -0x7f7f80

    goto :goto_3

    :cond_5
    const v3, -0x4c4c4d

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 156
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 136
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
