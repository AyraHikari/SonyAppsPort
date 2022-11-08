.class public Lcom/android/quickstep/util/TransformParams;
.super Ljava/lang/Object;
.source "TransformParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/TransformParams$BuilderProxy;
    }
.end annotation


# static fields
.field public static PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field

.field public static TARGET_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mCornerRadius:F

.field private mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mProgress:F

.field private mRecentsSurface:Landroid/view/SurfaceControl;

.field private mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private mTargetAlpha:F

.field private mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/android/quickstep/util/TransformParams$1;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    .line 48
    new-instance v0, Lcom/android/quickstep/util/TransformParams$2;

    const-string v1, "targetAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 69
    sget-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    .line 74
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    .line 75
    return-void
.end method

.method private static getRecentsSurface(Lcom/android/quickstep/RemoteAnimationTargets;)Landroid/view/SurfaceControl;
    .locals 4
    .param p0, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v1, v1, v0

    .line 182
    .local v1, "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v3, p0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne v2, v3, :cond_1

    .line 183
    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 184
    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    return-object v2

    .line 180
    .end local v1    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .restart local v1    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    return-object v2

    .line 190
    .end local v0    # "i":I
    .end local v1    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public varargs applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 4
    .param p1, "params"    # [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 216
    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_1

    .line 219
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 220
    .local v0, "t":Lcom/android/systemui/shared/system/TransactionCompat;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 221
    .local v3, "param":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    invoke-static {v0, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/system/TransactionCompat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 220
    .end local v3    # "param":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 225
    .end local v0    # "t":Lcom/android/systemui/shared/system/TransactionCompat;
    :goto_1
    return-void
.end method

.method public createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 8
    .param p1, "proxy"    # Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 145
    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    .line 146
    .local v0, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    if-nez v0, :cond_0

    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    return-object v1

    .line 149
    :cond_0
    iget-object v1, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 150
    .local v1, "surfaceParams":[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    invoke-static {v0}, Lcom/android/quickstep/util/TransformParams;->getRecentsSurface(Lcom/android/quickstep/RemoteAnimationTargets;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/util/TransformParams;->mRecentsSurface:Landroid/view/SurfaceControl;

    .line 152
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 153
    iget-object v3, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v2

    .line 154
    .local v3, "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 156
    .local v4, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v6, v0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne v5, v6, :cond_3

    .line 157
    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 158
    iget-object v5, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v5, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_2

    .line 161
    :cond_1
    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    iget-boolean v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-eqz v5, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getProgress()F

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    .line 164
    .local v5, "progress":F
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v7, v6

    invoke-virtual {v4, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 165
    .end local v5    # "progress":F
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getTargetAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 169
    :goto_1
    invoke-interface {p1, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_2

    .line 172
    :cond_3
    iget-object v5, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v5, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    .line 174
    :goto_2
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    aput-object v5, v1, v2

    .line 152
    .end local v3    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v4    # "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public getCornerRadius()F
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 196
    iget v0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    return v0
.end method

.method public getRecentsSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mRecentsSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getTargetAlpha()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    return v0
.end method

.method public getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    return-object v0
.end method

.method public setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "proxy"    # Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 131
    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 132
    return-object p0
.end method

.method public setCornerRadius(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 93
    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    .line 94
    return-object p0
.end method

.method public setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "proxy"    # Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 140
    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 141
    return-object p0
.end method

.method public setProgress(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "progress"    # F

    .line 83
    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    .line 84
    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "applier"    # Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 122
    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 123
    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "targetAlpha"    # F

    .line 101
    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    .line 102
    return-object p0
.end method

.method public setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;
    .locals 0
    .param p1, "targetSet"    # Lcom/android/quickstep/RemoteAnimationTargets;

    .line 112
    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    .line 113
    return-object p0
.end method
