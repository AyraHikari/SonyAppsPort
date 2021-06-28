.class Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;Lcom/sonyericsson/music/ui/SlidingTabLayout$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 324
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->scrollToTab(II)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    .line 318
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 333
    iget v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->scrollToTab(II)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$300(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
