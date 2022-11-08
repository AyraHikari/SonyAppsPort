.class public final Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;
.super Ljava/lang/Object;
.source "DaggerUnfoldSharedComponent.java"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldSharedComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;
    }
.end annotation


# instance fields
.field private aTraceLoggerTransitionProgressListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private deviceFoldStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private hingeAngleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideFoldStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private scaleAwareTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

.field private screenStatusProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;"
        }
    .end annotation
.end field

.field private sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private tracingTagPrefixProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unfoldTransitionProgressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "unfoldSharedModuleParam"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p2, "contextParam"    # Landroid/content/Context;
    .param p3, "configParam"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p4, "screenStatusProviderParam"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p5, "deviceStateManagerParam"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p6, "activityManagerParam"    # Landroid/app/ActivityManager;
    .param p7, "sensorManagerParam"    # Landroid/hardware/SensorManager;
    .param p8, "handlerParam"    # Landroid/os/Handler;
    .param p9, "executorParam"    # Ljava/util/concurrent/Executor;
    .param p10, "backgroundExecutorParam"    # Ljava/util/concurrent/Executor;
    .param p11, "tracingTagPrefixParam"    # Ljava/lang/String;
    .param p12, "contentResolverParam"    # Landroid/content/ContentResolver;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->initialize(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p4, "x3"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p5, "x4"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p6, "x5"    # Landroid/app/ActivityManager;
    .param p7, "x6"    # Landroid/hardware/SensorManager;
    .param p8, "x7"    # Landroid/os/Handler;
    .param p9, "x8"    # Ljava/util/concurrent/Executor;
    .param p10, "x9"    # Ljava/util/concurrent/Executor;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Landroid/content/ContentResolver;
    .param p13, "x12"    # Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;

    .line 34
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static factory()Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;-><init>(Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "unfoldSharedModuleParam"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p2, "contextParam"    # Landroid/content/Context;
    .param p3, "configParam"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p4, "screenStatusProviderParam"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p5, "deviceStateManagerParam"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p6, "activityManagerParam"    # Landroid/app/ActivityManager;
    .param p7, "sensorManagerParam"    # Landroid/hardware/SensorManager;
    .param p8, "handlerParam"    # Landroid/os/Handler;
    .param p9, "executorParam"    # Ljava/util/concurrent/Executor;
    .param p10, "backgroundExecutorParam"    # Ljava/util/concurrent/Executor;
    .param p11, "tracingTagPrefixParam"    # Ljava/lang/String;
    .param p12, "contentResolverParam"    # Landroid/content/ContentResolver;

    .line 93
    move-object v0, p0

    move-object v1, p1

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Ljavax/inject/Provider;

    .line 94
    invoke-static/range {p12 .. p12}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contentResolverProvider:Ljavax/inject/Provider;

    .line 95
    invoke-static {v2}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->scaleAwareTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    .line 96
    invoke-static {v2}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;->create(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->factoryProvider:Ljavax/inject/Provider;

    .line 97
    invoke-static/range {p11 .. p11}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->tracingTagPrefixProvider:Ljavax/inject/Provider;

    .line 98
    invoke-static {v2}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->aTraceLoggerTransitionProgressListenerProvider:Ljavax/inject/Provider;

    .line 99
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contextProvider:Ljavax/inject/Provider;

    .line 100
    invoke-static/range {p7 .. p7}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 101
    invoke-static/range {p10 .. p10}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 102
    iget-object v3, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v3, v4, v2}, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->hingeAngleProvider:Ljavax/inject/Provider;

    .line 103
    invoke-static {p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->screenStatusProvider2:Ljavax/inject/Provider;

    .line 104
    invoke-static {p5}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceStateManagerProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static/range {p6 .. p6}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->activityManagerProvider:Ljavax/inject/Provider;

    .line 106
    invoke-static/range {p9 .. p9}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->executorProvider:Ljavax/inject/Provider;

    .line 107
    invoke-static/range {p8 .. p8}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->handlerProvider:Ljavax/inject/Provider;

    .line 108
    iget-object v3, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->hingeAngleProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->screenStatusProvider2:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceStateManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->activityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->executorProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->deviceFoldStateProvider:Ljavax/inject/Provider;

    .line 109
    invoke-static {p1, v2}, Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_ProvideFoldStateProviderFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 110
    iget-object v3, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->configProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->factoryProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->aTraceLoggerTransitionProgressListenerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 111
    return-void
.end method


# virtual methods
.method public getUnfoldTransitionProvider()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method
