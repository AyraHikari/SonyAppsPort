.class Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;
.super Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
.source "PaddedHeaderListScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PaddedHeaderListScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HidePaddingScroller"
.end annotation


# instance fields
.field private mEnded:Z

.field final synthetic this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    .line 139
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    const/4 p2, 0x0

    .line 140
    invoke-static {p1, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$002(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;F)F

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->mEnded:Z

    return-void
.end method

.method private cancelToolbarAnimation()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->cancelAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$100(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$200(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;

    move-result-object v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;->getScrollAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p1

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/ToolbarControl;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    .line 161
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onScrollEnd(ZF)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$002(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;F)F

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$300(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->mEnded:Z

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    :goto_1
    return-void
.end method

.method public onScrollStart()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->mEnded:Z

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->cancelToolbarAnimation()V

    return-void
.end method

.method public setScrollAllowed(Z)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->mEnded:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$400(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-static {p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->access$500(Lcom/sonyericsson/music/library/PaddedHeaderListScroller;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;->this$0:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->getControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    :cond_1
    return-void
.end method
