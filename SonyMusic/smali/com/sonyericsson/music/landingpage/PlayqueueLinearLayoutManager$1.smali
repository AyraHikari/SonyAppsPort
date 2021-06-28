.class Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PlayqueueLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

.field final synthetic val$dstPosition:I

.field final synthetic val$isRtl:Z

.field final synthetic val$positionsWindow:I

.field final synthetic val$srcPosition:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;Landroid/content/Context;ZIII)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->this$0:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    iput-boolean p3, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$isRtl:Z

    iput p4, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$dstPosition:I

    iput p5, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$srcPosition:I

    iput p6, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$positionsWindow:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 64
    iget-boolean p2, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$isRtl:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 66
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    .line 77
    iget v0, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$dstPosition:I

    iget v1, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$srcPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$positionsWindow:I

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$dstPosition:I

    iget v1, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$srcPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->val$positionsWindow:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager$1;->this$0:Lcom/sonyericsson/music/landingpage/PlayqueueLinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
