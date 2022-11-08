.class public Lcom/android/quickstep/util/MotionPauseDetector;
.super Ljava/lang/Object;
.source "MotionPauseDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;,
        Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    }
.end annotation


# static fields
.field private static final FORCE_PAUSE_TIMEOUT:J = 0x12cL

.field private static final HARDER_TRIGGER_TIMEOUT:J = 0x190L

.field private static final RAPID_DECELERATION_FACTOR:F = 0.6f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisallowPause:Z

.field private final mForcePauseTimeout:Lcom/android/launcher3/Alarm;

.field private mHasEverBeenPaused:Z

.field private mIsPaused:Z

.field private final mMakePauseHarderToTrigger:Z

.field private mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

.field private mPreviousVelocity:Ljava/lang/Float;

.field private mSlowStartTime:J

.field private final mSpeedFast:F

.field private final mSpeedSlow:F

.field private final mSpeedSomewhatFast:F

.field private final mSpeedVerySlow:F

.field private final mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "makePauseHarderToTrigger"    # Z

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;ZI)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "makePauseHarderToTrigger"    # Z
    .param p3, "axis"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    .line 81
    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_speed_very_slow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedVerySlow:F

    .line 84
    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_speed_slow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSlow:F

    .line 85
    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_speed_somewhat_fast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    .line 86
    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_speed_fast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedFast:F

    .line 87
    new-instance v1, Lcom/android/launcher3/Alarm;

    invoke-direct {v1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    .line 88
    new-instance v2, Lcom/android/quickstep/util/MotionPauseDetector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/util/MotionPauseDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/MotionPauseDetector;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 89
    iput-boolean p2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    .line 90
    new-instance v1, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-direct {v1, p3}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;-><init>(I)V

    iput-object v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    .line 91
    return-void
.end method

.method private checkMotionPaused(FFJ)V
    .locals 10
    .param p1, "velocity"    # F
    .param p2, "prevVelocity"    # F
    .param p3, "time"    # J

    .line 134
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 135
    .local v0, "speed":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 137
    .local v1, "previousSpeed":F
    iget-boolean v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 139
    iget v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedFast:F

    cmpg-float v5, v0, v2

    if-ltz v5, :cond_1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    move v2, v3

    .local v2, "isPaused":Z
    goto/16 :goto_7

    .line 141
    .end local v2    # "isPaused":Z
    :cond_2
    const/4 v2, 0x0

    cmpg-float v5, p1, v2

    if-gez v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eq v5, v2, :cond_5

    .line 143
    const/4 v2, 0x0

    .restart local v2    # "isPaused":Z
    goto :goto_7

    .line 145
    .end local v2    # "isPaused":Z
    :cond_5
    iget v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedVerySlow:F

    cmpg-float v5, v0, v2

    if-gez v5, :cond_6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v4

    .line 146
    .restart local v2    # "isPaused":Z
    :goto_3
    if-nez v2, :cond_9

    iget-boolean v5, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    if-nez v5, :cond_9

    .line 150
    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v1

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v4

    .line 151
    .local v5, "isRapidDeceleration":Z
    :goto_4
    if-eqz v5, :cond_8

    iget v6, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_8

    move v6, v3

    goto :goto_5

    :cond_8
    move v6, v4

    :goto_5
    move v2, v6

    .line 153
    .end local v5    # "isRapidDeceleration":Z
    :cond_9
    iget-boolean v5, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz v5, :cond_d

    .line 154
    iget v5, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSlow:F

    cmpg-float v5, v0, v5

    const-wide/16 v6, 0x0

    if-gez v5, :cond_c

    .line 155
    iget-wide v8, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_a

    .line 156
    iput-wide p3, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    .line 158
    :cond_a
    iget-wide v5, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    sub-long v5, p3, v5

    const-wide/16 v7, 0x190

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b

    goto :goto_6

    :cond_b
    move v3, v4

    :goto_6
    move v2, v3

    goto :goto_7

    .line 160
    :cond_c
    iput-wide v6, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    .line 161
    const/4 v2, 0x0

    .line 166
    :cond_d
    :goto_7
    invoke-direct {p0, v2}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    .line 167
    return-void
.end method

.method private updatePaused(Z)V
    .locals 3
    .param p1, "isPaused"    # Z

    .line 170
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mDisallowPause:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 p1, 0x0

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eq v0, p1, :cond_4

    .line 174
    iput-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 176
    .local v0, "isFirstDetectedPause":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendPauseDetectedEventToTest(Landroid/content/Context;)V

    .line 178
    iput-boolean v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz v1, :cond_4

    .line 181
    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v1}, Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseDetected()V

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz v1, :cond_4

    .line 186
    iget-boolean v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-interface {v1, v2}, Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseChanged(Z)V

    .line 190
    .end local v0    # "isFirstDetectedPause":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public addPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    .line 114
    return-void
.end method

.method public addPosition(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 122
    sget-object v0, Lcom/android/launcher3/testing/TestProtocol;->sForcePauseTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/android/launcher3/testing/TestProtocol;->sForcePauseTimeout:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    :goto_0
    nop

    .line 125
    .local v0, "timeoutMs":J
    iget-object v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 126
    iget-object v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 127
    .local v2, "newVelocity":F
    iget-object v3, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/quickstep/util/MotionPauseDetector;->checkMotionPaused(FFJ)V

    .line 130
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    .line 131
    return-void
.end method

.method public clear()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->clear()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    .line 198
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 199
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-util-MotionPauseDetector(Lcom/android/launcher3/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method public setDisallowPause(Z)V
    .locals 1
    .param p1, "disallowPause"    # Z

    .line 104
    iput-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mDisallowPause:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    .line 106
    return-void
.end method

.method public setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    .line 97
    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    .line 98
    return-void
.end method
