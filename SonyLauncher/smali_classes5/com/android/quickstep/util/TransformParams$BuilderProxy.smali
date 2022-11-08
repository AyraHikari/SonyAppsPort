.class public interface abstract Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.super Ljava/lang/Object;
.source "TransformParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/TransformParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuilderProxy"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field public static final NO_OP:Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    new-instance v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->NO_OP:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 231
    new-instance v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0
    .param p0, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p1, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 230
    return-void
.end method

.method public static synthetic lambda$static$1(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 1
    .param p0, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p1, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method


# virtual methods
.method public abstract onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
.end method
