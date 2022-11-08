.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;
.super Ljava/lang/Object;
.source "DeviceFoldStateProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final hingeAngleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final screenStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "hingeAngleProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;>;"
    .local p3, "screenStatusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;>;"
    .local p4, "deviceStateManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/hardware/devicestate/DeviceStateManager;>;"
    .local p5, "activityManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/ActivityManager;>;"
    .local p6, "mainExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/concurrent/Executor;>;"
    .local p7, "handlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/os/Handler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->hingeAngleProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->screenStatusProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->deviceStateManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 48
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;"
        }
    .end annotation

    .line 61
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p1, "hingeAngleProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;>;"
    .local p2, "screenStatusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;>;"
    .local p3, "deviceStateManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/hardware/devicestate/DeviceStateManager;>;"
    .local p4, "activityManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/ActivityManager;>;"
    .local p5, "mainExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/concurrent/Executor;>;"
    .local p6, "handlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/os/Handler;>;"
    new-instance v8, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hingeAngleProvider"    # Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .param p2, "screenStatusProvider"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p3, "deviceStateManager"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p4, "activityManager"    # Landroid/app/ActivityManager;
    .param p5, "mainExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 68
    new-instance v8, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->hingeAngleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->screenStatusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->deviceStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Handler;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->get()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-result-object v0

    return-object v0
.end method
