.class Lcom/android/launcher3/QuickstepTransitionManager$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$cornerRadius:F

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1249
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$cornerRadius:F

    iput-object p4, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 1253
    .local v1, "params":[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v0

    .line 1255
    .local v2, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1256
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 1257
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$cornerRadius:F

    .line 1258
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    .line 1259
    invoke-virtual {v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1253
    .end local v2    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1261
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 1262
    return-void
.end method
