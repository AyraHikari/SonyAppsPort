.class public final Lcom/android/systemui/unfold/UnfoldSharedModule;
.super Ljava/lang/Object;
.source "UnfoldSharedModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J.\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000cH\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/android/systemui/unfold/UnfoldSharedModule;",
        "",
        "()V",
        "hingeAngleProvider",
        "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
        "config",
        "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "provideFoldStateProvider",
        "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
        "deviceFoldStateProvider",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
        "unfoldTransitionProgressProvider",
        "Ljava/util/Optional;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "scaleAwareProviderFactory",
        "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
        "tracingListener",
        "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
        "foldStateProvider",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public final hingeAngleProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/UiBackground;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensorManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isHingeAngleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    invoke-direct {v0, p2, p3}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    check-cast v0, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;->INSTANCE:Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;

    check-cast v0, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 79
    :goto_0
    return-object v0
.end method

.method public final provideFoldStateProvider(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/FoldStateProvider;
    .locals 1
    .param p1, "deviceFoldStateProvider"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "deviceFoldStateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    return-object v0
.end method

.method public final unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;
    .locals 5
    .param p1, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p2, "scaleAwareProviderFactory"    # Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;
    .param p3, "tracingListener"    # Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .param p4, "foldStateProvider"    # Lcom/android/systemui/unfold/updates/FoldStateProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scaleAwareProviderFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foldStateProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 47
    const-string v1, "{\n            Optional.empty()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isHingeAngleEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    invoke-direct {v0, p4}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    invoke-direct {v0, p4}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    .line 51
    :goto_0
    nop

    .line 50
    nop

    .line 57
    .local v0, "baseProgressProvider":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p2, v1}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;->wrap(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$unfoldTransitionProgressProvider_u24lambda_u2d0":Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-apply-UnfoldSharedModule$unfoldTransitionProgressProvider$1":I
    move-object v4, p3

    check-cast v4, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {v2, v4}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 60
    nop

    .line 57
    .end local v2    # "$this$unfoldTransitionProgressProvider_u24lambda_u2d0":Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
    .end local v3    # "$i$a$-apply-UnfoldSharedModule$unfoldTransitionProgressProvider$1":I
    nop

    .line 56
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 49
    .end local v0    # "baseProgressProvider":Ljava/lang/Object;
    nop

    .line 57
    const-string v1, "{\n            val basePr\u2026             })\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_1
    return-object v0
.end method
