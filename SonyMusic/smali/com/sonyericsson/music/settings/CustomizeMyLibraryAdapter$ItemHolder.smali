.class Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomizeMyLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field private mCheckedText:Landroid/widget/CheckedTextView;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mPageContainer:Lcom/sonyericsson/music/library/Page$PageContainer;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090099

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mDragHandle:Landroid/widget/ImageView;

    const v0, 0x7f0901fb

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f090072

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mCheckedText:Landroid/widget/CheckedTextView;

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mDragHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mDragHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mCheckedText:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;)Lcom/sonyericsson/music/library/Page$PageContainer;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mPageContainer:Lcom/sonyericsson/music/library/Page$PageContainer;

    return-object p0
.end method


# virtual methods
.method bindViewHolder(Lcom/sonyericsson/music/library/Page$PageContainer;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mPageContainer:Lcom/sonyericsson/music/library/Page$PageContainer;

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mCheckedText:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mPageContainer:Lcom/sonyericsson/music/library/Page$PageContainer;

    iget-object v0, v0, Lcom/sonyericsson/music/library/Page$PageContainer;->mPage:Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/Page;->getTitleResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mCheckedText:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mPageContainer:Lcom/sonyericsson/music/library/Page$PageContainer;

    iget-boolean v0, v0, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$ItemHolder;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
