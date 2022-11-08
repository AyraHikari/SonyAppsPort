.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 24
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 25
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 26
    const/high16 v1, 0x4f000000

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 28
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 31
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 123
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 125
    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private isReversed()Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyFrame()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 287
    return-void

    .line 285
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 239
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 240
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 130
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 131
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 132
    return-void
.end method

.method public doFrame(J)V
    .locals 11
    .param p1, "frameTimeNanos"    # J

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 86
    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 87
    move-wide v1, p1

    .line 88
    .local v1, "now":J
    iget-wide v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    sub-long v5, v1, v3

    :goto_0
    move-wide v3, v5

    .line 89
    .local v3, "timeSinceFrame":J
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    move-result v5

    .line 90
    .local v5, "frameDuration":F
    long-to-float v6, v3

    div-float/2addr v6, v5

    .line 92
    .local v6, "dFrames":F
    iget v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v8

    if-eqz v8, :cond_2

    neg-float v8, v6

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    add-float/2addr v7, v8

    iput v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v8

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 94
    .local v7, "ended":Z
    iget v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v9

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v8

    iput v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 96
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 99
    if-eqz v7, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 101
    iget v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v8

    :goto_2
    iput v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 103
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    goto :goto_5

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyRepeat()V

    .line 106
    iget v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 108
    iget-boolean v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    goto :goto_4

    .line 111
    :cond_5
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v8

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v8

    :goto_3
    iput v8, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 113
    :goto_4
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 117
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 118
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 119
    return-void

    .line 83
    .end local v1    # "now":J
    .end local v3    # "timeSinceFrame":J
    .end local v5    # "frameDuration":F
    .end local v6    # "dFrames":F
    .end local v7    # "ended":Z
    :cond_8
    :goto_6
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 216
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 217
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 64
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    :cond_1
    return v1
.end method

.method public getMinFrame()F
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    :cond_1
    return v1
.end method

.method public getSpeed()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    return v0
.end method

.method public pauseAnimation()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 222
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 206
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyStart(Z)V

    .line 207
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 211
    return-void
.end method

.method protected postFrameCallback()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 263
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 1

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 270
    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 1
    .param p1, "stopRunning"    # Z

    .line 274
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 275
    if-eqz p1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 278
    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 227
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 229
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 182
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 136
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "keepMinAndMaxFrames":Z
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 141
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 142
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 140
    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 147
    :goto_1
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 148
    .local v1, "frame":F
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 149
    float-to-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 150
    return-void
.end method

.method public setFrame(F)V
    .locals 2
    .param p1, "frame"    # F

    .line 153
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 159
    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1
    .param p1, "maxFrame"    # F

    .line 166
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 167
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 4
    .param p1, "minFrame"    # F
    .param p2, "maxFrame"    # F

    .line 170
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    .line 174
    .local v0, "compositionMinFrame":F
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    .line 175
    .local v1, "compositionMaxFrame":F
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 176
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 177
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v2, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 178
    return-void

    .line 171
    .end local v0    # "compositionMinFrame":F
    .end local v1    # "compositionMaxFrame":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "minFrame"    # I

    .line 162
    int-to-float v0, p1

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 163
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "value"    # I

    .line 196
    invoke-super {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setRepeatMode(I)V

    .line 197
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 199
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 201
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 185
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 186
    return-void
.end method
