.class Lcom/android/quickstep/OverviewCommandHelper$1;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OverviewCommandHelper;->executeCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/OverviewCommandHelper;

.field final synthetic val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field final synthetic val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

.field final synthetic val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/OverviewCommandHelper;

    .line 226
    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-object p3, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p4, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 3
    .param p0, "interactionHandler"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 231
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    .line 238
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 242
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 243
    .local v0, "createdRecents":Lcom/android/quickstep/views/RecentsView;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    .line 247
    .end local v0    # "createdRecents":Lcom/android/quickstep/views/RecentsView;
    :cond_0
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 230
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    new-instance v2, Lcom/android/quickstep/OverviewCommandHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/OverviewCommandHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/BaseActivityInterface;->runOnInitBackgroundStateUI(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 233
    return-void
.end method
