.class public Lcom/sonyericsson/music/ui/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;,
        Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xe

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private final mSomcSelectedTabTextColor:I

.field private final mSomcTabTextColor:I

.field private final mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 106
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p3, 0x1

    .line 108
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 110
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->primaryText(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mSomcSelectedTabTextColor:I

    .line 111
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->secondaryText(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mSomcTabTextColor:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTitleOffset:I

    .line 115
    new-instance p3, Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-direct {p3, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    .line 118
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private populateTabStrip()V
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;-><init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;Lcom/sonyericsson/music/ui/SlidingTabLayout$1;)V

    .line 226
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    .line 232
    iget v6, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v6, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v8, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    .line 235
    invoke-virtual {v6, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 236
    iget v7, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v6, v2

    move-object v7, v6

    :goto_1
    if-nez v6, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    :cond_1
    if-nez v7, :cond_2

    .line 243
    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 244
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    :cond_2
    if-eqz v7, :cond_3

    .line 248
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v7, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 192
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 194
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    .line 195
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    iget p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mSomcTabTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-lt p1, v2, :cond_0

    .line 202
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 203
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    .line 204
    invoke-virtual {v2, v3, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 205
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 208
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    const/high16 p1, 0x41800000    # 16.0f

    .line 213
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 214
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x3

    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public scrollToTab(II)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 280
    iget-object v3, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mSomcTabTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 285
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    add-int/2addr v2, p2

    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 289
    :cond_2
    iget p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v2, p1

    .line 293
    :cond_3
    iget p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mSomcSelectedTabTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    invoke-virtual {p0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public setCustomTabColorizer(Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->setCustomTabColorizer(Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabViewLayoutId:I

    .line 170
    iput p2, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabViewTextViewId:I

    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->setDividerColors([I)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mTabStrip:Lcom/sonyericsson/music/ui/SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 180
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 182
    new-instance v0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;Lcom/sonyericsson/music/ui/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
