.class Lcom/android/quickstep/TaskViewUtils$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic val$cropRect:Landroid/graphics/Rect;

.field final synthetic val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Rect;)V
    .locals 8

    .line 250
    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$cropRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 251
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43050000    # 133.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 253
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x436a0000    # 234.0f

    const/high16 v5, 0x43850000    # 266.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 9
    .param p1, "percent"    # F
    .param p2, "initOnly"    # Z

    .line 258
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 262
    .local v0, "navBuilder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$remoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 263
    .local v5, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    iget-object v6, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v7, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {v7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 264
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    .line 265
    .local v6, "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 266
    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/TaskViewUtils$1;->val$cropRect:Landroid/graphics/Rect;

    .line 267
    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 268
    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 269
    .end local v6    # "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    goto :goto_1

    .line 270
    :cond_0
    iget-object v6, p0, Lcom/android/quickstep/TaskViewUtils$1;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v0, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 272
    :goto_1
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 262
    .end local v5    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void
.end method
