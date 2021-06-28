.class Lcom/sonyericsson/music/library/MyLibraryFragment$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MyLibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/MyLibraryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/MyLibraryFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iput p1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mScrollState:I

    .line 115
    iget p1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mScrollState:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mIsPaging:Z

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/library/MyLibraryFragment;->access$000(Lcom/sonyericsson/music/library/MyLibraryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/Page;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setDrawerHighlight(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget v1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mScrollState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 128
    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;-><init>(Lcom/sonyericsson/music/library/MyLibraryFragment$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment;->access$100(Lcom/sonyericsson/music/library/MyLibraryFragment;I)V

    return-void
.end method
