.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;
.super Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransparentHeaderToolbarScroller"
.end annotation


# instance fields
.field private mAtRestRunnable:Ljava/lang/Runnable;

.field private final mCheckAtRest:Ljava/lang/Runnable;

.field private mScrollState:I

.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    .line 1072
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    .line 1056
    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)V

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mCheckAtRest:Ljava/lang/Runnable;

    .line 1073
    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-static {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$1800(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Ljava/lang/Runnable;
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mAtRestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I
    .locals 0

    .line 1051
    iget p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mScrollState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;Ljava/lang/Runnable;)V
    .locals 0

    .line 1051
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->delayUntilAtRest(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I
    .locals 0

    .line 1051
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->getPaddingOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I
    .locals 0

    .line 1051
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->toolbarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method private appBarHeight()I
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getAppWrapper()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private delayUntilAtRest(Ljava/lang/Runnable;)V
    .locals 1

    .line 1154
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mAtRestRunnable:Ljava/lang/Runnable;

    .line 1155
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mCheckAtRest:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPaddingOffset()I
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getTopPaddingView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1174
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->appBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/high16 v0, -0x80000000

    :goto_1
    return v0
.end method

.method private toolbarHeight()I
    .locals 1

    .line 1163
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onScroll(I)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(I)V
    .locals 5

    .line 1105
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->getPaddingOffset()I

    move-result v0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v3, p1

    .line 1114
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->toolbarHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1, v1, v3}, Lcom/sonyericsson/music/ToolbarControl;->clamp(III)I

    move-result p1

    int-to-float v3, p1

    .line 1116
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1117
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v2

    const/4 v3, 0x1

    if-ge v0, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/ToolbarControl;->setToolbarColorized(Z)V

    .line 1118
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v2

    if-ge v0, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/ToolbarControl;->startToolbarTextAnimation(Z)V

    .line 1119
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v2

    if-ge v0, p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v2, p1}, Lcom/sonyericsson/music/ToolbarControl;->animateToolbarShadowAlpha(F)V

    .line 1120
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-gez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/ToolbarControl;->setStatusBarColorized(Z)V

    return-void
.end method

.method public onScrollEnd(ZF)V
    .locals 1

    .line 1130
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;ZF)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->delayUntilAtRest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 1098
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->mScrollState:I

    return-void
.end method

.method public setScrollAllowed(Z)V
    .locals 0

    return-void
.end method
