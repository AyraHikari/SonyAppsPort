.class public interface abstract Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
.super Ljava/lang/Object;
.source "RecentsAnimationCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsAnimationCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsAnimationListener"
.end annotation


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 188
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 176
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinished"    # Ljava/lang/Runnable;

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0
    .param p1, "appearedTaskTarget"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 193
    return-void
.end method
