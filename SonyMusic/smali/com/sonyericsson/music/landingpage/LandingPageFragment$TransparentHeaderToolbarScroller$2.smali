.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/sonyericsson/music/ToolbarControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

.field final synthetic val$this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;->val$this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1500(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1600(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarColorized(Z)V

    goto :goto_0

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$2;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1700(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarTransparent()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
