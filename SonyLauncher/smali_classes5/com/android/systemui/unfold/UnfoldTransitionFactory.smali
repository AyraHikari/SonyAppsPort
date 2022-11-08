.class public final Lcom/android/systemui/unfold/UnfoldTransitionFactory;
.super Ljava/lang/Object;
.source "UnfoldTransitionFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001aV\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "createConfig",
        "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
        "context",
        "Landroid/content/Context;",
        "createUnfoldTransitionProgressProvider",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "config",
        "screenStatusProvider",
        "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
        "deviceStateManager",
        "Landroid/hardware/devicestate/DeviceStateManager;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "mainHandler",
        "Landroid/os/Handler;",
        "mainExecutor",
        "Ljava/util/concurrent/Executor;",
        "backgroundExecutor",
        "tracingTagPrefix",
        "",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createConfig(Landroid/content/Context;)Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    return-object v0
.end method

.method public static final createUnfoldTransitionProgressProvider(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p2, "screenStatusProvider"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p3, "deviceStateManager"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p4, "activityManager"    # Landroid/app/ActivityManager;
    .param p5, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "mainExecutor"    # Ljava/util/concurrent/Executor;
    .param p8, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "tracingTagPrefix"    # Ljava/lang/String;

    const-string v0, "context"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenStatusProvider"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateManager"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManager"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensorManager"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingTagPrefix"

    move-object/from16 v6, p9

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->factory()Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;

    move-result-object v1

    const-string v0, "factory()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    nop

    .line 53
    nop

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 51
    const/4 v0, 0x0

    const/16 v16, 0x400

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v12, v0

    move/from16 v13, v16

    move-object/from16 v14, v17

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory$DefaultImpls;->create$default(Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;ILjava/lang/Object;)Lcom/android/systemui/unfold/UnfoldSharedComponent;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/android/systemui/unfold/UnfoldSharedComponent;->getUnfoldTransitionProvider()Ljava/util/Optional;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 50
    if-eqz v0, :cond_0

    .line 66
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    nop

    .line 64
    const-string v1, "Trying to create UnfoldTransitionProgressProvider when the transition is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
