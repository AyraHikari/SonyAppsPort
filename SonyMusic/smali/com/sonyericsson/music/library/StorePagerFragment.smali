.class public Lcom/sonyericsson/music/library/StorePagerFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "StorePagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "fragment_tag"

.field public static final KEY_PAGE:Ljava/lang/String; = "page_key"

.field public static final KEY_STORE_PAGES:Ljava/lang/String; = "key_store_pages"

.field public static final TAG_CHARTS:Ljava/lang/String; = "mora_charts"

.field public static final TAG_NEW_RELEASES:Ljava/lang/String; = "mora_new_releases"


# instance fields
.field mFragmentTag:Ljava/lang/String;

.field private mIsSearchVisible:Z

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

.field private mStorePagerAdapter:Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;

.field private mStorePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mFragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f090117

    .line 140
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mIsSearchVisible:Z

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "fragment_tag"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mFragmentTag:Ljava/lang/String;

    .line 63
    iget-object p3, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mFragmentTag:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_store_pages"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mStorePages:Ljava/util/List;

    .line 68
    iget-object p3, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mStorePages:Ljava/util/List;

    if-eqz p3, :cond_0

    const p3, 0x7f0c00ba

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 74
    new-instance v1, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mStorePages:Ljava/util/List;

    iget-object v5, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mFragmentTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mStorePagerAdapter:Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;

    const v1, 0x7f090175

    .line 76
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mStorePagerAdapter:Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f0c00b4

    .line 80
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/SlidingTabLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->setAppBarFooter(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    new-instance p2, Lcom/sonyericsson/music/library/StorePagerFragment$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/library/StorePagerFragment$1;-><init>(Lcom/sonyericsson/music/library/StorePagerFragment;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setCustomTabColorizer(Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;)V

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    new-instance p2, Lcom/sonyericsson/music/library/StorePagerFragment$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/library/StorePagerFragment$2;-><init>(Lcom/sonyericsson/music/library/StorePagerFragment;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    iget-object p2, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle()V

    .line 111
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p3

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "KEY_STORE_PAGES can not return a null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TAG can not return a null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->setAppBarFooter(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 132
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mIsSearchVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/library/StorePagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    const-string v1, "page_key"

    .line 119
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
