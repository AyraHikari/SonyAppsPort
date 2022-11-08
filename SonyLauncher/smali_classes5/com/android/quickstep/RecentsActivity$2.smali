.class Lcom/android/quickstep/RecentsActivity$2;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsActivity;

    .line 447
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateAnimation$0$com-android-quickstep-RecentsActivity$2()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 15
    .param p1, "transit"    # I
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "result"    # Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 452
    move-object v0, p0

    iget-object v1, v0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    .line 453
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    .line 454
    .local v1, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 456
    new-instance v2, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct {v2, v6, v7, v8, v5}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    .line 458
    .local v2, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    iget-object v9, v2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v10, v9

    :goto_0
    if-ge v5, v10, :cond_0

    aget-object v11, v9, v5

    .line 459
    .local v11, "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v12, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v13, v11, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 458
    .end local v11    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 461
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 462
    .local v5, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 463
    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 464
    iget-object v3, v0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    new-instance v4, Lcom/android/quickstep/RecentsActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/RecentsActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentsActivity$2;)V

    const/4 v9, 0x1

    move-object/from16 v10, p5

    invoke-virtual {v10, v5, v3, v4, v9}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 467
    return-void
.end method
