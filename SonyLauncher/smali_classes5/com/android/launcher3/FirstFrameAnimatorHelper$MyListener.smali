.class Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FirstFrameAnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationUpdate$0$com-android-launcher3-FirstFrameAnimatorHelper$MyListener(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 121
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, "currentTime":J
    iget-wide v4, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 83
    iget-object v4, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmGlobalFrameCount(Lcom/android/launcher3/FirstFrameAnimatorHelper;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartFrame:J

    .line 84
    iput-wide v2, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartTime:J

    .line 87
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 88
    .local v4, "currentPlayTime":J
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 90
    .local v6, "isFinalFrame":Z
    :goto_0
    iget-boolean v9, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mHandlingOnAnimationUpdate:Z

    if-nez v9, :cond_5

    iget-object v9, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v9}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v9}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Landroid/view/View;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_5

    if-nez v6, :cond_5

    .line 97
    iput-boolean v8, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mHandlingOnAnimationUpdate:Z

    .line 98
    iget-object v9, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v9}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmGlobalFrameCount(Lcom/android/launcher3/FirstFrameAnimatorHelper;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartFrame:J

    sub-long/2addr v9, v11

    .line 103
    .local v9, "frameNum":J
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    const-wide/16 v14, 0x3e8

    if-nez v13, :cond_2

    iget-wide v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartTime:J

    add-long/2addr v7, v14

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    cmp-long v7, v4, v11

    if-lez v7, :cond_2

    .line 106
    iget-object v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v7}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 107
    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v7}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v7

    .line 113
    .local v7, "singleFrameMS":I
    const-wide/16 v11, 0x1

    cmp-long v8, v9, v11

    if-nez v8, :cond_3

    iget-wide v11, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartTime:J

    add-long/2addr v14, v11

    cmp-long v8, v2, v14

    if-gez v8, :cond_3

    iget-boolean v8, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mAdjustedSecondFrameTime:Z

    if-nez v8, :cond_3

    int-to-long v14, v7

    add-long/2addr v11, v14

    cmp-long v8, v2, v11

    if-lez v8, :cond_3

    int-to-long v11, v7

    cmp-long v8, v4, v11

    if-lez v8, :cond_3

    .line 117
    int-to-long v11, v7

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 118
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mAdjustedSecondFrameTime:Z

    goto :goto_1

    .line 120
    :cond_3
    const-wide/16 v11, 0x1

    cmp-long v8, v9, v11

    if-lez v8, :cond_4

    .line 121
    iget-object v8, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v8}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v8

    new-instance v11, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    .end local v7    # "singleFrameMS":I
    :cond_4
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mHandlingOnAnimationUpdate:Z

    .line 130
    .end local v9    # "frameNum":J
    :cond_5
    return-void
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 134
    .local v0, "flatFraction":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmGlobalFrameCount(Lcom/android/launcher3/FirstFrameAnimatorHelper;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmGlobalFrameCount(Lcom/android/launcher3/FirstFrameAnimatorHelper;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->mStartFrame:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dirty? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-static {v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->-$$Nest$fgetmRootView(Lcom/android/launcher3/FirstFrameAnimatorHelper;)Landroid/view/View;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->isDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "FirstFrameAnimatorHlpr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
