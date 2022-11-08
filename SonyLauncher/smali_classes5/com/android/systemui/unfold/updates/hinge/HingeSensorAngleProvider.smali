.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;
.super Ljava/lang/Object;
.source "HingeSensorAngleProvider.kt"

# interfaces
.implements Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00060\u000cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;",
        "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V",
        "listeners",
        "",
        "Landroidx/core/util/Consumer;",
        "",
        "sensorListener",
        "Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;",
        "addCallback",
        "",
        "listener",
        "removeCallback",
        "start",
        "stop",
        "HingeAngleSensorListener",
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


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    const-string v0, "sensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->executor:Ljava/util/concurrent/Executor;

    .line 17
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSensorListener$p(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    return-object v0
.end method

.method public static final synthetic access$getSensorManager$p(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method


# virtual methods
.method public addCallback(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1, "listener"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 11
    move-object v0, p1

    check-cast v0, Landroidx/core/util/Consumer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->addCallback(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public removeCallback(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1, "listener"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 11
    move-object v0, p1

    check-cast v0, Landroidx/core/util/Consumer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->removeCallback(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public stop()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
