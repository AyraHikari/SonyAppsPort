.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->onScrollEnd(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

.field final synthetic val$isFling:Z

.field final synthetic val$velocityY:F


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;ZF)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    iput-boolean p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->val$isFling:Z

    iput p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->val$velocityY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1500(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I

    move-result v0

    .line 1135
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$1900(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    if-lez v0, :cond_0

    goto :goto_4

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2000(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1140
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v4}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2000(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 1141
    iget-boolean v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->val$isFling:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->val$velocityY:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 1142
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2100(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v4, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {v0, v4}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    if-eqz v2, :cond_7

    .line 1144
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2200(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/ToolbarControl;->setToolbarColorized(Z)V

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2300(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/ToolbarControl;->startToolbarTextAnimation(Z)V

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller$3;->this$1:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;->access$2400(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ToolbarControl;->animateToolbarShadowAlpha(F)V

    :cond_7
    :goto_4
    return-void
.end method
