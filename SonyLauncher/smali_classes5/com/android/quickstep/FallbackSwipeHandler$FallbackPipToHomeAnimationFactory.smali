.class Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;
.super Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.source "FallbackSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/FallbackSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackPipToHomeAnimationFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/FallbackSwipeHandler;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;)V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v0, v0, Lcom/android/quickstep/FallbackSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v1, v1, Lcom/android/quickstep/FallbackSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 230
    .local v0, "accuracy":J
    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v2, v2, Lcom/android/quickstep/FallbackSwipeHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    return-object v2
.end method
