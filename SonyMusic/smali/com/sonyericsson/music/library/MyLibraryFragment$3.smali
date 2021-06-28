.class Lcom/sonyericsson/music/library/MyLibraryFragment$3;
.super Ljava/lang/Object;
.source "MyLibraryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/MyLibraryFragment;->moveToPage(Lcom/sonyericsson/music/library/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

.field final synthetic val$newPage:Lcom/sonyericsson/music/library/Page;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/MyLibraryFragment;Lcom/sonyericsson/music/library/Page;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->val$newPage:Lcom/sonyericsson/music/library/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/library/MyLibraryFragment;->access$000(Lcom/sonyericsson/music/library/MyLibraryFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->val$newPage:Lcom/sonyericsson/music/library/Page;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$3;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
