.class public interface abstract Lcom/android/systemui/shared/system/RecentsAnimationListener;
.super Ljava/lang/Object;
.source "RecentsAnimationListener.java"


# virtual methods
.method public abstract onAnimationCanceled(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinished"    # Ljava/lang/Runnable;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
.end method
