.class Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SloppyClickListener"
.end annotation


# instance fields
.field private mAborted:Z

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mMinimumFlingVelocity:I

    .line 634
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mMaximumFlingVelocity:I

    return-void
.end method

.method private beginDrag()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 698
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private drag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getVelocityY()F
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 684
    iget v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSwipingUp()Z
    .locals 2

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->getVelocityY()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mMinimumFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 691
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 639
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->drag(Landroid/view/MotionEvent;)V

    .line 640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 668
    :pswitch_0
    iget-boolean p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mAborted:Z

    if-nez p2, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->endDrag()V

    .line 670
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 647
    :pswitch_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mAborted:Z

    if-nez v0, :cond_1

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->pointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->isSwipingUp()Z

    move-result p2

    if-nez p2, :cond_1

    .line 649
    iput-boolean v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mAborted:Z

    .line 650
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->endDrag()V

    .line 651
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 656
    :pswitch_2
    iget-boolean p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mAborted:Z

    if-nez p2, :cond_1

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "player_open"

    .line 659
    invoke-static {p2, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->endDrag()V

    .line 663
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 642
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->beginDrag()V

    .line 643
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 644
    iput-boolean v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;->mAborted:Z

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
