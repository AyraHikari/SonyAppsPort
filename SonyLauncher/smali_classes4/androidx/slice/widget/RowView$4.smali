.class Landroidx/slice/widget/RowView$4;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/RowView;

    .line 1470
    iput-object p1, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 7
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .line 1473
    iget-object v0, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget v1, v0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1475
    .local v0, "now":J
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-wide v2, v2, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-wide v5, v2, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    .line 1476
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1477
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-object v2, v2, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-object v3, v3, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1478
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v2}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    goto :goto_0

    .line 1479
    :cond_0
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-boolean v2, v2, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    if-nez v2, :cond_1

    .line 1480
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1481
    iget-object v2, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-object v2, v2, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/slice/widget/RowView$4;->this$0:Landroidx/slice/widget/RowView;

    iget-object v5, v5, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1483
    :cond_1
    :goto_0
    return-void
.end method
