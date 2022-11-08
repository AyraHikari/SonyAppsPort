.class final Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;
.super Ljava/lang/Object;
.source "DaggerUnfoldSharedComponent.java"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/systemui/unfold/UnfoldSharedComponent;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .param p3, "screenStatusProvider"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p4, "deviceStateManager"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p5, "activityManager"    # Landroid/app/ActivityManager;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "executor"    # Ljava/util/concurrent/Executor;
    .param p9, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p10, "tracingTagPrefix"    # Ljava/lang/String;
    .param p11, "contentResolver"    # Landroid/content/ContentResolver;

    .line 125
    invoke-static/range {p1 .. p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static/range {p2 .. p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static/range {p3 .. p3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static/range {p4 .. p4}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static/range {p5 .. p5}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static/range {p6 .. p6}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static/range {p7 .. p7}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static/range {p8 .. p8}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static/range {p9 .. p9}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static/range {p10 .. p10}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static/range {p11 .. p11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v14, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldSharedModule;

    invoke-direct {v1}, Lcom/android/systemui/unfold/UnfoldSharedModule;-><init>()V

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V

    return-object v14
.end method
