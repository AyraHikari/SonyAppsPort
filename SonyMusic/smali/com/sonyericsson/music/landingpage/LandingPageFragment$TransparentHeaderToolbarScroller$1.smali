.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    iget-object v0, v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$1100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    iget-object v0, v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    .line 1061
    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1300(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$1;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1400(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
