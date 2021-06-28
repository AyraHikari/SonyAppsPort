.class Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MyLibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/MyLibraryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLibraryAdapter"
.end annotation


# instance fields
.field private final mChildScrollers:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page;",
            ">;",
            "Lcom/sonyericsson/music/ToolbarControl;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 220
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mChildScrollers:Ljava/util/Map;

    .line 227
    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mContext:Landroid/content/Context;

    .line 228
    iput-object p3, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    .line 229
    iput-object p4, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/Page;

    .line 277
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/Page;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 280
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/Page;->setFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mChildScrollers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getChildScroller(I)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mChildScrollers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/Page;->getLibraryBaseFragment(I)Lcom/sonyericsson/music/library/LibraryBaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/music/library/LibraryListFragment;

    .line 240
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->update()V

    .line 241
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/Page;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/Page;->getPageTitleResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 256
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/music/library/BaseFragment;

    .line 262
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/Page;

    .line 263
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/library/Page;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 265
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mChildScrollers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/library/BaseFragment;->onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 268
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 296
    check-cast p3, Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
