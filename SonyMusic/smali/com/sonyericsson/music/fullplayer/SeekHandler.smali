.class public Lcom/sonyericsson/music/fullplayer/SeekHandler;
.super Ljava/lang/Object;
.source "SeekHandler.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;
    }
.end annotation


# static fields
.field private static final ANIM_JUMP_FRACTION:F = 0.2f

.field private static final SEEKBAR_MAX:I = 0x3e8


# instance fields
.field private mAnimateNextPosition:Z

.field private mDuration:I

.field private final mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

.field private final mNext:Landroid/view/View;

.field private mPlaybackPosition:I

.field private final mPrevious:Landroid/view/View;

.field private mProgressTarget:I

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mTrackDuration:Landroid/widget/TextView;

.field private final mTrackPosition:Landroid/widget/TextView;

.field private mTracking:Z

.field private final mTrackingPositionText:Landroid/widget/TextView;

.field private mWinding:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    const p1, 0x7f090220

    .line 70
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackPosition:Landroid/widget/TextView;

    const p1, 0x7f09021d

    .line 71
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackDuration:Landroid/widget/TextView;

    .line 72
    iput-object p3, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    .line 73
    iput-object p4, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    .line 74
    iput-object p5, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackingPositionText:Landroid/widget/TextView;

    .line 75
    iput-object p6, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private animateNext()Z
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mAnimateNextPosition:Z

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mAnimateNextPosition:Z

    return v0
.end method

.method private cancelAnimation()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private hasLayout(Landroid/view/View;)Z
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private playbackPositionToProgress(I)I
    .locals 4

    .line 108
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mDuration:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    iget p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mDuration:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    :goto_0
    return p1
.end method

.method private progressToPlaybackPosition(I)I
    .locals 4

    int-to-long v0, p1

    .line 113
    iget p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mDuration:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private setProgressWithAnimation(IZ)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->cancelAnimation()V

    .line 223
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mProgressTarget:I

    if-eqz p2, :cond_0

    .line 225
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 227
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->smooth(II)I

    move-result p1

    .line 228
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 229
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private show(Landroid/widget/TextView;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 148
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-nez p2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/music/fullplayer/SeekHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler$1;-><init>(Lcom/sonyericsson/music/fullplayer/SeekHandler;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private smooth(II)I
    .locals 2

    sub-int v0, p2, p1

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int p2, p1, v0

    :goto_0
    return p2
.end method

.method private updatePositionText()V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->progressToPlaybackPosition(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPlaybackPosition:I

    .line 133
    :goto_0
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/sonyericsson/music/common/StringUtils;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackPosition:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackingPositionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->show(Landroid/widget/TextView;Z)V

    goto :goto_2

    .line 136
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackingPositionText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->show(Landroid/widget/TextView;Z)V

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackingPositionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 212
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 215
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->progressToPlaybackPosition(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onSetPosition(I)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-ne p2, p1, :cond_5

    .line 187
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 188
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->cancelAnimation()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 191
    iput-boolean v2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 192
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->progressToPlaybackPosition(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onSetPosition(I)V

    .line 194
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 197
    :cond_4
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->isConfirmKey(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 198
    iput-boolean v2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onStopWinding()V

    :cond_5
    :goto_1
    return v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 255
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onStartWinding(Z)V

    .line 258
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->cancelAnimation()V

    :cond_2
    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 171
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->cancelAnimation()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->progressToPlaybackPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onSetPosition(I)V

    .line 180
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 272
    :cond_0
    :pswitch_1
    iget-boolean p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mNext:Landroid/view/View;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPrevious:Landroid/view/View;

    if-ne p1, p2, :cond_2

    .line 273
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mWinding:Z

    .line 274
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    .line 275
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mListener:Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;->onStopWinding()V

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .line 243
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mProgressTarget:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setProgressWithAnimation(IZ)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1

    .line 117
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mPlaybackPosition:I

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->playbackPositionToProgress(I)I

    move-result p1

    .line 119
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTracking:Z

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->animateNext()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setProgressWithAnimation(IZ)V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->updatePositionText()V

    :cond_0
    return-void
.end method

.method public setTrackDuration(I)V
    .locals 1

    .line 97
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mDuration:I

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->hasLayout(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mAnimateNextPosition:Z

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/SeekHandler;->mTrackDuration:Landroid/widget/TextView;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Lcom/sonyericsson/music/common/StringUtils;->formatDuration(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTrackDurationUnknown()V
    .locals 1

    const/16 v0, 0x3e8

    .line 103
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setTrackDuration(I)V

    return-void
.end method
