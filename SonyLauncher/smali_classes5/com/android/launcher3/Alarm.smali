.class public Lcom/android/launcher3/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 63
    return-void
.end method

.method public run()V
    .locals 7

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 68
    iget-boolean v1, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 70
    .local v1, "currentTime":J
    iget-wide v3, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    sub-long/2addr v3, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 82
    .end local v1    # "currentTime":J
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(J)V
    .locals 8
    .param p1, "millisecondsInFuture"    # J

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "currentTime":J
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 47
    iget-wide v3, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 48
    .local v3, "oldTriggerTime":J
    add-long v5, v0, p1

    iput-wide v5, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 51
    iget-boolean v7, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-eqz v7, :cond_0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 55
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-nez v5, :cond_1

    .line 56
    iget-object v5, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v6, v0

    invoke-virtual {v5, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iput-boolean v2, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 59
    :cond_1
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V
    .locals 0
    .param p1, "alarmListener"    # Lcom/android/launcher3/OnAlarmListener;

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 40
    return-void
.end method
