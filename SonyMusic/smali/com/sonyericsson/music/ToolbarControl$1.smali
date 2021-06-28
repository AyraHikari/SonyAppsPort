.class Lcom/sonyericsson/music/ToolbarControl$1;
.super Ljava/lang/Object;
.source "ToolbarControl.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ToolbarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDownY:F

.field private mIsBeingDragged:Z

.field private mLastY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/sonyericsson/music/ToolbarControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private beginDrag()V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    .line 152
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private drag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 118
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mDownY:F

    sub-float/2addr v0, v2

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-static {v2}, Lcom/sonyericsson/music/ToolbarControl;->access$000(Lcom/sonyericsson/music/ToolbarControl;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mLastY:I

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/music/ToolbarControl$1;->beginDrag()V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-static {v0}, Lcom/sonyericsson/music/ToolbarControl;->access$100(Lcom/sonyericsson/music/ToolbarControl;)V

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ToolbarControl$1;->drag(Landroid/view/MotionEvent;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mLastY:I

    sub-int/2addr v0, v2

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mLastY:I

    if-eqz v0, :cond_2

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ToolbarControl;->onScroll(I)V

    goto :goto_1

    .line 137
    :pswitch_1
    iget-boolean p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mIsBeingDragged:Z

    if-eqz p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-static {v2}, Lcom/sonyericsson/music/ToolbarControl;->access$200(Lcom/sonyericsson/music/ToolbarControl;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 140
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-static {v2}, Lcom/sonyericsson/music/ToolbarControl;->access$300(Lcom/sonyericsson/music/ToolbarControl;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl$1;->this$0:Lcom/sonyericsson/music/ToolbarControl;

    invoke-static {v2, v0, p1}, Lcom/sonyericsson/music/ToolbarControl;->access$400(Lcom/sonyericsson/music/ToolbarControl;ZF)V

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/music/ToolbarControl$1;->endDrag()V

    goto :goto_1

    .line 114
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mDownY:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sonyericsson/music/ToolbarControl$1;->mLastY:I

    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
