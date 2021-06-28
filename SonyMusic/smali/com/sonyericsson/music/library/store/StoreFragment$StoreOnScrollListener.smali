.class Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreOnScrollListener"
.end annotation


# instance fields
.field private final mPaddingView:Landroid/view/View;

.field private mScrollState:I

.field final synthetic this$0:Lcom/sonyericsson/music/library/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreFragment;Landroid/view/View;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mPaddingView:Landroid/view/View;

    return-void
.end method

.method private isToolbarMostlyVisible(Lcom/sonyericsson/music/ToolbarControl;)Z
    .locals 1

    .line 391
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 371
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreFragment;->access$200(Lcom/sonyericsson/music/library/store/StoreFragment;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 374
    iget v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mScrollState:I

    if-nez v0, :cond_5

    .line 384
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->cancelAnimation()V

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mPaddingView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-gtz v0, :cond_4

    .line 381
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->isToolbarMostlyVisible(Lcom/sonyericsson/music/ToolbarControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    .line 387
    :cond_5
    :goto_3
    iput p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->mScrollState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreFragment;->access$100(Lcom/sonyericsson/music/library/store/StoreFragment;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object p2

    .line 361
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v0, p3

    .line 363
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, v0}, Lcom/sonyericsson/music/ToolbarControl;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    .line 364
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
