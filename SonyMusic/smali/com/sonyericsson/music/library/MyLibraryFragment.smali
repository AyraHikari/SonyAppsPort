.class public Lcom/sonyericsson/music/library/MyLibraryFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "MyLibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;,
        Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;,
        Lcom/sonyericsson/music/library/MyLibraryFragment$Updateable;
    }
.end annotation


# static fields
.field public static final KEY_PAGE:Ljava/lang/String; = "page_key"

.field static final SCROLL_STATE_NOT_INITIALIZED:I = -0x1

.field public static final TAG:Ljava/lang/String; = "my_library_tag"


# instance fields
.field mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

.field mHandler:Landroid/os/Handler;

.field mIsPaging:Z

.field mPager:Landroidx/viewpager/widget/ViewPager;

.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page;",
            ">;"
        }
    .end annotation
.end field

.field mScrollState:I

.field mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mIsPaging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/MyLibraryFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/MyLibraryFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment;->restoreToolbar(I)V

    return-void
.end method

.method private restoreToolbar(I)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSubTag()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/Page;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isTargetForBackgroundColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToPage(Lcom/sonyericsson/music/library/Page;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/library/MyLibraryFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment$3;-><init>(Lcom/sonyericsson/music/library/MyLibraryFragment;Lcom/sonyericsson/music/library/Page;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mScrollState:I

    const/4 v0, 0x0

    const v1, 0x7f0c0043

    .line 65
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mHandler:Landroid/os/Handler;

    const v2, 0x7f090176

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/library/Page;->getEnabledPages(Landroid/content/Context;)[Lcom/sonyericsson/music/library/Page;

    move-result-object v2

    .line 73
    array-length v3, v2

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 76
    iget-object v5, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    aget-object v6, v2, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    :cond_1
    new-instance v2, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/sonyericsson/music/ToolbarControl;)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v2, 0x7f0c00b4

    .line 90
    invoke-virtual {p1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/SlidingTabLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->setAppBarFooter(Landroid/view/View;)V

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    new-instance p2, Lcom/sonyericsson/music/library/MyLibraryFragment$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$1;-><init>(Lcom/sonyericsson/music/library/MyLibraryFragment;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setCustomTabColorizer(Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;)V

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    iget-object p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    new-instance p2, Lcom/sonyericsson/music/library/MyLibraryFragment$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$2;-><init>(Lcom/sonyericsson/music/library/MyLibraryFragment;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle()V

    if-nez p3, :cond_3

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/Page;

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "page_key"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/Page;

    if-eqz p2, :cond_2

    move-object p1, p2

    .line 152
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 153
    iget-object p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_3
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->setAppBarFooter(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 308
    new-instance v0, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;-><init>(Lcom/sonyericsson/music/library/MyLibraryFragment;Lcom/sonyericsson/music/ToolbarControl;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 174
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    const-string v1, "page_key"

    .line 176
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public reloadCurrentMyLibraryFragment()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->destroyItem(Landroid/view/ViewGroup;I)V

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
