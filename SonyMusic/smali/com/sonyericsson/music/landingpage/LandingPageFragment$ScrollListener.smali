.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollListener"
.end annotation


# instance fields
.field mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)V
    .locals 0

    .line 1207
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1208
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1213
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1214
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    if-eqz p1, :cond_0

    .line 1215
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->onScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1221
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1222
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    if-eqz p1, :cond_0

    .line 1223
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->onScrollChanged(I)V

    :cond_0
    return-void
.end method
