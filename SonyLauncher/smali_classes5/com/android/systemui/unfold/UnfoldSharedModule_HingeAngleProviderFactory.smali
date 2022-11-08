.class public final Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;
.super Ljava/lang/Object;
.source "UnfoldSharedModule_HingeAngleProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/unfold/UnfoldSharedModule;

.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "configProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;>;"
    .local p3, "sensorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/hardware/SensorManager;>;"
    .local p4, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->configProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->executorProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method public static create(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;
    .locals 1
    .param p0, "module"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;"
        }
    .end annotation

    .line 44
    .local p1, "configProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;>;"
    .local p2, "sensorManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/hardware/SensorManager;>;"
    .local p3, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/concurrent/Executor;>;"
    new-instance v0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static hingeAngleProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .locals 1
    .param p0, "instance"    # Lcom/android/systemui/unfold/UnfoldSharedModule;
    .param p1, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/unfold/UnfoldSharedModule;->hingeAngleProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->hingeAngleProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/unfold/UnfoldSharedModule_HingeAngleProviderFactory;->get()Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    move-result-object v0

    return-object v0
.end method
