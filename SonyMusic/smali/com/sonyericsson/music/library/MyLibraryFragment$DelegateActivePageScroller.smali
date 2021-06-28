.class Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;
.super Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
.source "MyLibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/MyLibraryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegateActivePageScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/library/MyLibraryFragment;Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    .line 324
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    return-void
.end method

.method private getCurrentScroller()Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mAdapter:Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;

    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/library/MyLibraryFragment$MyLibraryAdapter;->getChildScroller(I)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onScroll(I)V
    .locals 2

    .line 345
    invoke-direct {p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->getCurrentScroller()Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget-boolean v1, v1, Lcom/sonyericsson/music/library/MyLibraryFragment;->mIsPaging:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScroll(I)V

    :cond_0
    return-void
.end method

.method public onScrollEnd(ZF)V
    .locals 1

    .line 353
    invoke-direct {p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->getCurrentScroller()Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScrollEnd(ZF)V

    :cond_0
    return-void
.end method

.method public onScrollStart()V
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->getCurrentScroller()Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScrollStart()V

    :cond_0
    return-void
.end method

.method public setScrollAllowed(Z)V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/sonyericsson/music/library/MyLibraryFragment$DelegateActivePageScroller;->getCurrentScroller()Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->setScrollAllowed(Z)V

    :cond_0
    return-void
.end method
