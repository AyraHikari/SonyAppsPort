.class public interface abstract Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;
.super Ljava/lang/Object;
.source "UnfoldSharedComponent.kt"


# annotations
.annotation runtime Ldagger/Component$Factory;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/UnfoldSharedComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001Jv\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u0018H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;",
        "",
        "create",
        "Lcom/android/systemui/unfold/UnfoldSharedComponent;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
        "screenStatusProvider",
        "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
        "deviceStateManager",
        "Landroid/hardware/devicestate/DeviceStateManager;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "handler",
        "Landroid/os/Handler;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "backgroundExecutor",
        "tracingTagPrefix",
        "",
        "contentResolver",
        "Landroid/content/ContentResolver;",
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


# virtual methods
.method public abstract create(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/systemui/unfold/UnfoldSharedComponent;
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/devicestate/DeviceStateManager;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p5    # Landroid/app/ActivityManager;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p6    # Landroid/hardware/SensorManager;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p7    # Landroid/os/Handler;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/Main;
        .end annotation

        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/Main;
        .end annotation

        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p9    # Ljava/util/concurrent/Executor;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/UiBackground;
        .end annotation

        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/android/systemui/unfold/util/UnfoldTransitionATracePrefix;
        .end annotation

        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p11    # Landroid/content/ContentResolver;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
.end method
