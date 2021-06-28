.class Lcom/sonyericsson/music/library/StorePagerFragment$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "StorePagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/StorePagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/StorePagerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/StorePagerFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$2;->this$0:Lcom/sonyericsson/music/library/StorePagerFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$2;->this$0:Lcom/sonyericsson/music/library/StorePagerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    :cond_0
    return-void
.end method
